// ignore_for_file: depend_on_referenced_packages
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/utils/inspection/inspection_upload_queue.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

/// Routes of the photo service, served by GOZY-WEB (not by the GraphQL API).
String inspectionUploadUrl() => '$UPLOAD_URL/inspection/photos';
String inspectionRemoveUrl() => '$UPLOAD_URL/inspection/photos/remove';

/// Address of a stored photo. Reading needs the `auth` header of the logged
/// user (the app sends its JWT), see [inspectionPhotoHeaders].
String inspectionPhotoUrl(int photoId, {bool thumbnail = false}) =>
    '$UPLOAD_URL/inspection/photo/$photoId${thumbnail ? '?size=thumb' : ''}';

Map<String, String> inspectionPhotoHeaders(String? accessToken) =>
    {'auth': accessToken ?? ''};

/// Turns an HTTP answer of the photo routes into an [UploadOutcome].
/// The server returns `{ status, errorMessage }` with a translated message.
UploadOutcome parsePhotoResponse(int httpStatus, String body) {
  Map<String, dynamic>? json;
  try {
    final decoded = jsonDecode(body);
    if (decoded is Map<String, dynamic>) json = decoded;
  } catch (_) {
    json = null;
  }
  final status = (json?['status'] is int) ? json!['status'] as int : httpStatus;
  final message = json?['errorMessage'] as String?;
  if (httpStatus == 200 && status == 200) {
    final id = json?['id'];
    final version = json?['version'];
    return UploadOutcome(
      UploadOutcomeKind.success,
      photoId: id is int ? id : null,
      version: version is int ? version : null,
      httpStatus: 200,
    );
  }
  // 429 (too many requests) and 5xx other than 503 may pass: try again later.
  final retryable = httpStatus == 429 ||
      httpStatus == 408 ||
      (httpStatus >= 500 && httpStatus != 503);
  return UploadOutcome(
    retryable ? UploadOutcomeKind.retryable : UploadOutcomeKind.rejected,
    httpStatus: httpStatus,
    message: message,
  );
}

/// Real uploader: multipart POST with the text fields BEFORE the file (the
/// server reads them first) and the JWT in the `auth` header.
class HttpInspectionUploader implements InspectionPhotoUploader {
  HttpInspectionUploader({
    required this.accessToken,
    http.Client Function()? clientFactory,
    this.timeout = const Duration(seconds: 90),
  }) : _clientFactory = clientFactory ?? http.Client.new;

  final String? Function() accessToken;
  final http.Client Function() _clientFactory;
  final Duration timeout;

  @override
  Future<UploadOutcome> upload({
    required int reservationId,
    required String type,
    required String filePath,
    void Function(double progress)? onProgress,
    UploadCancelToken? cancelToken,
  }) async {
    final client = _clientFactory();
    try {
      final file = File(filePath);
      final length = await file.length();
      final request = http.MultipartRequest('POST', Uri.parse(inspectionUploadUrl()))
        ..headers.addAll({'auth': accessToken() ?? ''})
        // Text fields first: http writes the fields before the files.
        ..fields['reservationId'] = '$reservationId'
        ..fields['type'] = type
        ..fields['kind'] = _kindOf(type);
      final isPdf = filePath.toLowerCase().endsWith('.pdf');
      request.files.add(http.MultipartFile(
        'file',
        file.openRead(),
        length,
        filename: isPdf ? 'document.pdf' : 'photo.jpg',
        contentType: MediaType(isPdf ? 'application' : 'image', isPdf ? 'pdf' : 'jpeg'),
      ));
      if (cancelToken?.isCancelled ?? false) {
        return const UploadOutcome(UploadOutcomeKind.cancelled);
      }
      final streamed = await client.send(request).timeout(timeout);
      final response = await http.Response.fromStream(streamed).timeout(timeout);
      if (cancelToken?.isCancelled ?? false) {
        return const UploadOutcome(UploadOutcomeKind.cancelled);
      }
      onProgress?.call(1);
      return parsePhotoResponse(response.statusCode, response.body);
    } on SocketException {
      return const UploadOutcome(UploadOutcomeKind.retryable);
    } on TimeoutException {
      return const UploadOutcome(UploadOutcomeKind.retryable);
    } on http.ClientException {
      return const UploadOutcome(UploadOutcomeKind.retryable);
    } catch (e) {
      debugPrint('inspection upload error: $e');
      return const UploadOutcome(UploadOutcomeKind.retryable);
    } finally {
      client.close();
    }
  }

  @override
  Future<UploadOutcome> remove(int photoId) async {
    final client = _clientFactory();
    try {
      final response = await client
          .post(
            Uri.parse(inspectionRemoveUrl()),
            headers: {
              'auth': accessToken() ?? '',
              'Content-Type': 'application/json',
            },
            body: jsonEncode({'photoId': photoId}),
          )
          .timeout(timeout);
      return parsePhotoResponse(response.statusCode, response.body);
    } on SocketException {
      return const UploadOutcome(UploadOutcomeKind.retryable);
    } on TimeoutException {
      return const UploadOutcome(UploadOutcomeKind.retryable);
    } on http.ClientException {
      return const UploadOutcome(UploadOutcomeKind.retryable);
    } catch (e) {
      debugPrint('inspection remove error: $e');
      return const UploadOutcome(UploadOutcomeKind.retryable);
    } finally {
      client.close();
    }
  }

  static String _kindOf(String type) => switch (type) {
        'checkin' => 'vehicle',
        'checkout' => 'damage',
        _ => 'attachment',
      };
}
