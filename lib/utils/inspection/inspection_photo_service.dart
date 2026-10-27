import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:gozy/utils/inspection/inspection_photo_processor.dart';

/// Result of preparing some pictures: the ones ready to send and the keys of
/// the texts explaining why the others were refused.
class PreparedPhotos {
  PreparedPhotos(this.photos, this.errors);
  final List<ProcessedPhoto> photos;
  final List<String> errors;
}

/// Folder where processed pictures wait for their upload. It is the temporary
/// folder of the app: a picture purged by the system is dropped from the
/// queue at the next start (see InspectionUploadQueue.fileExists).
Future<String> inspectionPhotoWorkDirectory() async {
  final directory = Directory('${Directory.systemTemp.path}/gozy_inspection');
  if (!await directory.exists()) await directory.create(recursive: true);
  return directory.path;
}

/// Key of the text describing a photo processing failure.
String photoErrorTextKey(PhotoProcessingError error) => switch (error) {
      PhotoProcessingError.unsupportedFormat => 'insp_err_photo_format',
      PhotoProcessingError.tooLarge => 'insp_err_photo_too_large',
      PhotoProcessingError.failed => 'insp_err_photo_failed',
    };

/// Converts and compresses source files (camera or gallery).
Future<PreparedPhotos> prepareInspectionPhotos(List<String> sources) async {
  final directory = await inspectionPhotoWorkDirectory();
  final photos = <ProcessedPhoto>[];
  final errors = <String>[];
  for (final source in sources) {
    try {
      photos.add(await processInspectionPhoto(source, outputDirectory: directory));
    } on PhotoProcessingException catch (e) {
      errors.add(photoErrorTextKey(e.error));
    } catch (e) {
      debugPrint('photo preparation failed: $e');
      errors.add(photoErrorTextKey(PhotoProcessingError.failed));
    }
  }
  return PreparedPhotos(photos, errors);
}

/// Pictures chosen in the gallery (at most [limit]).
Future<List<String>> pickGalleryPhotos({required int limit}) async {
  if (limit <= 0) return const [];
  final result = await FilePicker.platform.pickFiles(
    type: FileType.image,
    allowMultiple: limit > 1,
    compressionQuality: 0,
  );
  if (result == null) return const [];
  return result.files
      .map((file) => file.path)
      .whereType<String>()
      .take(limit)
      .toList();
}

/// PDF or pictures chosen as dispute attachments.
Future<List<String>> pickAttachmentFiles({required int limit}) async {
  if (limit <= 0) return const [];
  final result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: const [...inspectionPhotoInputExtensions, 'pdf'],
    allowMultiple: limit > 1,
    compressionQuality: 0,
  );
  if (result == null) return const [];
  return result.files
      .map((file) => file.path)
      .whereType<String>()
      .take(limit)
      .toList();
}

/// A PDF attachment is sent as is: it only has to respect the size limit.
Future<ProcessedPhoto> preparePdfAttachment(String path) async {
  final length = await File(path).length();
  if (length > inspectionAttachmentMaxBytes) {
    throw const PhotoProcessingException(PhotoProcessingError.tooLarge);
  }
  return ProcessedPhoto(path, length);
}
