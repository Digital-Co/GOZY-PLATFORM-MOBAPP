import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/graphql/Reviews/__generated__/Reviews.data.gql.dart';
import 'package:gozy/graphql/Reviews/__generated__/Reviews.req.gql.dart';
import 'package:gozy/graphql/__generated__/schema.schema.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/add_dispute_statement.data.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/add_dispute_statement.req.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/contest_inspection.data.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/contest_inspection.req.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/get_checklist.data.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/get_checklist.req.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/get_dispute.data.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/get_dispute.req.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/get_inspection.data.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/get_inspection.req.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/get_inspection_comparison.data.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/get_inspection_comparison.req.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/open_dispute.data.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/open_dispute.req.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/save_inspection_draft.data.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/save_inspection_draft.req.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/submit_checkout.data.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/submit_checkout.req.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/validate_inspection.data.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/validate_inspection.req.gql.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/utils/inspection/inspection_models.dart';

/// Departure / return comparison sent by the server (never computed here).
class InspectionComparisonInfo {
  const InspectionComparisonInfo({
    this.kmDriven,
    this.fuelDelta,
    this.hasDamage,
    this.newDamagePhotos,
    this.globalStatus,
  });
  final int? kmDriven;
  final int? fuelDelta;
  final bool? hasDamage;
  final int? newDamagePhotos;
  final String? globalStatus;
}

/// GraphQL calls of the check-in / check-out feature. Every method returns a
/// plain model; a request that did not reach the server (offline, timeout)
/// returns a "network failure" answer instead of throwing.
class InspectionApi {
  InspectionApi(this.host);

  /// Controller of the screen (needed by the GraphQL client).
  final BaseController host;

  Future<InspectionOutcome> getInspection(int reservationId, String type) async {
    final json = await _run<GgetInspectionData>(
      GgetInspectionReq((b) => b
        ..vars.reservationId = reservationId
        ..vars.type = type),
      (data) => data.getInspection?.toJson(),
    );
    return InspectionOutcome.fromJson(json);
  }

  Future<List<ChecklistItemInfo>?> getChecklist(int reservationId) async {
    final json = await _run<GgetChecklistData>(
      GgetChecklistReq((b) => b..vars.reservationId = reservationId),
      (data) => data.getChecklist?.toJson(),
    );
    if (json == null || json['status'] != 200) return null;
    final results = json['results'];
    if (results is! List) return const [];
    return results
        .whereType<Map>()
        .map((row) => ChecklistItemInfo(
              key: '${row['key']}',
              labelKey: row['labelKey'] as String?,
              required: row['required'] == true,
            ))
        .where((item) => item.key.isNotEmpty && item.key != 'null')
        .toList();
  }

  Future<InspectionComparisonInfo?> getComparison(int reservationId) async {
    final json = await _run<GgetInspectionComparisonData>(
      GgetInspectionComparisonReq((b) => b..vars.reservationId = reservationId),
      (data) => data.getInspectionComparison?.toJson(),
    );
    if (json == null || json['status'] != 200) return null;
    return InspectionComparisonInfo(
      kmDriven: (json['kmDriven'] as num?)?.toInt(),
      fuelDelta: (json['fuelDelta'] as num?)?.toInt(),
      hasDamage: json['hasDamage'] as bool?,
      newDamagePhotos: (json['newDamagePhotos'] as num?)?.toInt(),
      globalStatus: json['globalStatus'] as String?,
    );
  }

  Future<DisputeOutcome> getDispute(int reservationId) async {
    final json = await _run<GgetDisputeData>(
      GgetDisputeReq((b) => b..vars.reservationId = reservationId),
      (data) => data.getDispute?.toJson(),
    );
    return DisputeOutcome.fromJson(json);
  }

  /// Creates (no [expectedVersion]) or edits an inspection.
  Future<InspectionOutcome> saveDraft(
    int reservationId,
    String type,
    Map<String, dynamic> input, {
    int? expectedVersion,
  }) async {
    final json = await _run<GsaveInspectionDraftData>(
      GsaveInspectionDraftReq((b) => b
        ..vars.reservationId = reservationId
        ..vars.type = type
        ..vars.input = GInspectionInput.fromJson(input)!.toBuilder()
        ..vars.expectedVersion = expectedVersion),
      (data) => data.saveInspectionDraft?.toJson(),
    );
    return InspectionOutcome.fromJson(json);
  }

  Future<InspectionOutcome> validate(
      int reservationId, String type, int version) async {
    final json = await _run<GvalidateInspectionData>(
      GvalidateInspectionReq((b) => b
        ..vars.reservationId = reservationId
        ..vars.type = type
        ..vars.version = version),
      (data) => data.validateInspection?.toJson(),
    );
    return InspectionOutcome.fromJson(json);
  }

  Future<InspectionOutcome> contest(
      int reservationId, String type, String comment) async {
    final json = await _run<GcontestInspectionData>(
      GcontestInspectionReq((b) => b
        ..vars.reservationId = reservationId
        ..vars.type = type
        ..vars.comment = comment),
      (data) => data.contestInspection?.toJson(),
    );
    return InspectionOutcome.fromJson(json);
  }

  Future<InspectionOutcome> submitCheckout(
    int reservationId,
    bool hasDamage,
    Map<String, dynamic> input, {
    int? expectedVersion,
  }) async {
    final body = {...input, 'expectedVersion': expectedVersion}
      ..removeWhere((key, value) => value == null);
    final json = await _run<GsubmitCheckoutData>(
      GsubmitCheckoutReq((b) => b
        ..vars.reservationId = reservationId
        ..vars.hasDamage = hasDamage
        ..vars.input = GCheckoutInput.fromJson(body)!.toBuilder()),
      (data) => data.submitCheckout?.toJson(),
    );
    return InspectionOutcome.fromJson(json);
  }

  Future<DisputeOutcome> openDispute(
      int reservationId, String reasonCode, String comment) async {
    final json = await _run<GopenDisputeData>(
      GopenDisputeReq((b) => b
        ..vars.reservationId = reservationId
        ..vars.reasonCode = reasonCode
        ..vars.comment = comment),
      (data) => data.openDispute?.toJson(),
    );
    return DisputeOutcome.fromJson(json);
  }

  Future<DisputeOutcome> addStatement(
      int disputeId, String content, List<int> attachments) async {
    final json = await _run<GaddDisputeStatementData>(
      GaddDisputeStatementReq((b) => b
        ..vars.disputeId = disputeId
        ..vars.content = content
        ..vars.attachments.replace(attachments)),
      (data) => data.addDisputeStatement?.toJson(),
    );
    return DisputeOutcome.fromJson(json);
  }

  /// End-of-rental review through the existing review module (a separate
  /// call: its failure never cancels the check-out). Returns null when it
  /// was saved, otherwise a message (the server one when there is one).
  Future<String?> writeReview({
    required int reservationId,
    required int listId,
    required String receiverId,
    required double rating,
    required String content,
  }) async {
    final json = await _run<GwriteUserReviewData>(
      GwriteUserReviewReq((b) => b
        ..vars.reservationId = reservationId
        ..vars.listId = listId
        ..vars.receiverId = receiverId
        ..vars.rating = rating
        ..vars.reviewContent = content),
      (data) => data.writeUserReview?.toJson(),
    );
    if (json != null && json['status'] == 200) return null;
    return (json?['errorMessage'] as String?) ?? '';
  }

  Future<Map<String, dynamic>?> _run<T>(
    dynamic request,
    Map<String, dynamic>? Function(T data) pick,
  ) async {
    try {
      final res = await FerryLoggerClient.makeRequest(
        request,
        host,
        () {},
        isViewLoader: false,
        isStartLoader: false,
        isViewErrorMessage: false,
        isToGet400Message: true,
      )?.timeout(const Duration(seconds: 45));
      final data = res?.data as T?;
      if (data == null) return null;
      return pick(data);
    } on TimeoutException {
      return null;
    } catch (e) {
      debugPrint('InspectionApi request failed: $e');
      return null;
    }
  }
}
