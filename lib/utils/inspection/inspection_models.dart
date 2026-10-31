// Plain Dart view of the inspection contract (GOZY-API feature/inspection).
// The screens never touch the generated GraphQL classes: they read these
// models, parsed from the JSON of the response.

const String inspectionTypeCheckin = 'checkin';
const String inspectionTypeCheckout = 'checkout';

const String statusDraft = 'draft';
const String statusToValidate = 'to_validate';
const String statusValidated = 'validated';

const String roleHost = 'host';
const String roleGuest = 'guest';
const String roleAdmin = 'admin';

const List<String> fuelLevels = [
  'reserve',
  'quarter',
  'half',
  'three_quarters',
  'full',
];

const List<String> generalStates = ['clean', 'average', 'dirty'];

const List<String> disputeReasons = [
  'damage',
  'responsibility',
  'settlement',
  'other',
];

int? _asInt(Object? value) => value is num ? value.toInt() : null;
bool? _asBool(Object? value) => value is bool ? value : null;
String? _asString(Object? value) => value is String ? value : null;

List<Map<String, dynamic>> _asMaps(Object? value) => value is List
    ? value.whereType<Map>().map((e) => Map<String, dynamic>.from(e)).toList()
    : const [];

class InspectionPhotoItem {
  const InspectionPhotoItem({required this.id, this.kind, this.position});

  final int id;
  final String? kind;
  final int? position;

  static InspectionPhotoItem? fromJson(Map<String, dynamic> json) {
    final id = _asInt(json['id']);
    if (id == null) return null;
    return InspectionPhotoItem(
        id: id, kind: _asString(json['kind']), position: _asInt(json['position']));
  }
}

class ChecklistAnswer {
  const ChecklistAnswer(this.key, this.present);
  final String key;
  final bool present;
}

class InspectionRecord {
  const InspectionRecord({
    required this.id,
    required this.reservationId,
    required this.type,
    required this.status,
    required this.version,
    this.authorId,
    this.authorRole,
    this.generalState,
    this.mileage,
    this.fuelLevel,
    this.keysConfirmed = false,
    this.hasDamage,
    this.damageDescription,
    this.comment,
    this.checklist = const [],
    this.hostValidatedAt,
    this.guestValidatedAt,
    this.contestedAt,
    this.lockedAt,
    this.updatedAt,
    this.photos = const [],
    this.viewerRole,
    this.windowOpen = false,
    this.windowReason,
    this.canEdit = false,
    this.canValidate = false,
    this.canContest = false,
  });

  final int id;
  final int reservationId;
  final String type;
  final String status;
  final int version;
  final String? authorId;
  final String? authorRole;
  final String? generalState;
  final int? mileage;
  final String? fuelLevel;
  final bool keysConfirmed;
  final bool? hasDamage;
  final String? damageDescription;
  final String? comment;
  final List<ChecklistAnswer> checklist;
  final String? hostValidatedAt;
  final String? guestValidatedAt;
  final String? contestedAt;
  final String? lockedAt;
  final String? updatedAt;
  final List<InspectionPhotoItem> photos;
  final String? viewerRole;
  final bool windowOpen;
  final String? windowReason;
  final bool canEdit;
  final bool canValidate;
  final bool canContest;

  bool get isDraft => status == statusDraft;
  bool get isToValidate => status == statusToValidate;
  bool get isValidated => status == statusValidated;
  bool get isLocked => lockedAt != null || isValidated;

  bool validatedBy(String? role) => switch (role) {
        roleHost => hostValidatedAt != null,
        roleGuest => guestValidatedAt != null,
        _ => false,
      };

  /// ISO time at which [role] validated this version, if it did.
  String? validatedAtBy(String? role) => switch (role) {
        roleHost => hostValidatedAt,
        roleGuest => guestValidatedAt,
        _ => null,
      };

  List<InspectionPhotoItem> photosOfKind(String kind) =>
      photos.where((photo) => photo.kind == kind).toList(growable: false);

  /// Check-in photos are "vehicle" ones, check-out photos are "damage" ones.
  List<InspectionPhotoItem> get mainPhotos => photosOfKind(
      type == inspectionTypeCheckin ? 'vehicle' : 'damage');

  bool? checklistValue(String key) {
    for (final answer in checklist) {
      if (answer.key == key) return answer.present;
    }
    return null;
  }

  static InspectionRecord? fromJson(Object? raw) {
    if (raw is! Map) return null;
    final json = Map<String, dynamic>.from(raw);
    final id = _asInt(json['id']);
    final reservationId = _asInt(json['reservationId']);
    final type = _asString(json['type']);
    final status = _asString(json['status']);
    final version = _asInt(json['version']);
    if (id == null ||
        reservationId == null ||
        type == null ||
        status == null ||
        version == null) {
      return null;
    }
    return InspectionRecord(
      id: id,
      reservationId: reservationId,
      type: type,
      status: status,
      version: version,
      authorId: _asString(json['authorId']),
      authorRole: _asString(json['authorRole']),
      generalState: _asString(json['generalState']),
      mileage: _asInt(json['mileage']),
      fuelLevel: _asString(json['fuelLevel']),
      keysConfirmed: _asBool(json['keysConfirmed']) ?? false,
      hasDamage: _asBool(json['hasDamage']),
      damageDescription: _asString(json['damageDescription']),
      comment: _asString(json['comment']),
      checklist: _asMaps(json['checklist'])
          .map((row) => ChecklistAnswer(
              _asString(row['key']) ?? '', _asBool(row['present']) ?? false))
          .where((answer) => answer.key.isNotEmpty)
          .toList(),
      hostValidatedAt: _asString(json['hostValidatedAt']),
      guestValidatedAt: _asString(json['guestValidatedAt']),
      contestedAt: _asString(json['contestedAt']),
      lockedAt: _asString(json['lockedAt']),
      updatedAt: _asString(json['updatedAt']),
      photos: _asMaps(json['photos'])
          .map(InspectionPhotoItem.fromJson)
          .whereType<InspectionPhotoItem>()
          .toList(),
      viewerRole: _asString(json['viewerRole']),
      windowOpen: _asBool(json['windowOpen']) ?? false,
      windowReason: _asString(json['windowReason']),
      canEdit: _asBool(json['canEdit']) ?? false,
      canValidate: _asBool(json['canValidate']) ?? false,
      canContest: _asBool(json['canContest']) ?? false,
    );
  }
}

/// Answer of getInspection / saveInspectionDraft / validateInspection /
/// contestInspection / submitCheckout.
class InspectionOutcome {
  const InspectionOutcome({
    required this.status,
    this.errorMessage,
    this.inspection,
    this.windowOpen = false,
    this.windowReason,
    this.opensAt,
    this.closesAt,
    this.viewerRole,
    this.inspectionEnabled,
    this.photoMin,
    this.photoMax,
    this.viewerReview,
    this.networkFailure = false,
  });

  /// The request did not reach the server (offline, timeout).
  const InspectionOutcome.network()
      : status = null,
        errorMessage = null,
        inspection = null,
        windowOpen = false,
        windowReason = null,
        opensAt = null,
        closesAt = null,
        viewerRole = null,
        inspectionEnabled = null,
        photoMin = null,
        photoMax = null,
        viewerReview = null,
        networkFailure = true;

  final int? status;
  final String? errorMessage;
  final InspectionRecord? inspection;
  final bool windowOpen;
  final String? windowReason;
  final String? opensAt;
  final String? closesAt;
  final String? viewerRole;

  /// Platform settings sent with the result (null = not sent, e.g. a mutation
  /// that did not return them).
  final bool? inspectionEnabled;
  final int? photoMin;
  final int? photoMax;

  /// The review the viewer already wrote for this reservation (null = none).
  final ViewerReviewInfo? viewerReview;
  final bool networkFailure;

  bool get isOk => status == 200;

  /// The administrator switched the check-in / check-out feature off.
  bool get isDisabled => windowReason == 'inspectionDisabled';

  static InspectionOutcome fromJson(Map<String, dynamic>? json) {
    if (json == null) return const InspectionOutcome.network();
    return InspectionOutcome(
      status: _asInt(json['status']),
      errorMessage: _asString(json['errorMessage']),
      inspection: InspectionRecord.fromJson(json['inspection']),
      windowOpen: _asBool(json['windowOpen']) ?? false,
      windowReason: _asString(json['windowReason']),
      opensAt: _asString(json['opensAt']),
      closesAt: _asString(json['closesAt']),
      viewerRole: _asString(json['viewerRole']),
      inspectionEnabled: _asBool(json['inspectionEnabled']),
      photoMin: _asInt(json['photoMin']),
      photoMax: _asInt(json['photoMax']),
      viewerReview: ViewerReviewInfo.fromJson(json['viewerReview']),
    );
  }
}

/// Review already sent by the viewer for this reservation (read only).
class ViewerReviewInfo {
  const ViewerReviewInfo({this.id, required this.rating, this.reviewContent = ''});
  final int? id;
  final double rating;
  final String reviewContent;

  static ViewerReviewInfo? fromJson(Object? raw) {
    if (raw is! Map) return null;
    final rating = raw['rating'];
    return ViewerReviewInfo(
      id: _asInt(raw['id']),
      rating: rating is num ? rating.toDouble() : 0,
      reviewContent: _asString(raw['reviewContent']) ?? '',
    );
  }
}

/// Status of one step (check-in or check-out) for the viewer, as sent by the
/// API in `Reservation.inspectionSteps`.
class InspectionStepInfo {
  const InspectionStepInfo({this.status, this.open = false, this.awaitingViewer = false});
  final String? status;
  final bool open;
  final bool awaitingViewer;
}

class ChecklistItemInfo {
  const ChecklistItemInfo(
      {required this.key, this.labelKey, this.required = false});
  final String key;
  final String? labelKey;
  final bool required;
}

class DisputeStatementItem {
  const DisputeStatementItem({
    required this.id,
    this.role,
    this.userId,
    this.content,
    this.attachments = const [],
    this.createdAt,
  });
  final int id;
  final String? role;
  final String? userId;
  final String? content;
  final List<int> attachments;
  final String? createdAt;
}

class DisputeDecisionItem {
  const DisputeDecisionItem({
    required this.id,
    this.type,
    this.retainedAmount,
    this.refundAmount,
    this.requestedAmount,
    this.currency,
    this.motive,
    this.createdAt,
  });
  final int id;
  final String? type;
  final double? retainedAmount;
  final double? refundAmount;
  final double? requestedAmount;
  final String? currency;
  final String? motive;
  final String? createdAt;
}

class DisputeRecord {
  const DisputeRecord({
    required this.id,
    required this.reservationId,
    this.openedByRole,
    this.reasonCode,
    required this.status,
    this.isActive = false,
    this.depositAmount,
    this.depositStatus,
    this.createdAt,
    this.closedAt,
    this.statements = const [],
    this.decisions = const [],
  });

  final int id;
  final int reservationId;
  final String? openedByRole;
  final String? reasonCode;
  final String status;
  final bool isActive;
  final double? depositAmount;
  final String? depositStatus;
  final String? createdAt;
  final String? closedAt;
  final List<DisputeStatementItem> statements;
  final List<DisputeDecisionItem> decisions;

  bool get hasDecision => decisions.isNotEmpty;

  static DisputeRecord? fromJson(Object? raw) {
    if (raw is! Map) return null;
    final json = Map<String, dynamic>.from(raw);
    final id = _asInt(json['id']);
    final reservationId = _asInt(json['reservationId']);
    final status = _asString(json['status']);
    if (id == null || reservationId == null || status == null) return null;
    return DisputeRecord(
      id: id,
      reservationId: reservationId,
      openedByRole: _asString(json['openedByRole']),
      reasonCode: _asString(json['reasonCode']),
      status: status,
      isActive: _asBool(json['isActive']) ?? false,
      depositAmount: (json['depositAmount'] as num?)?.toDouble(),
      depositStatus: _asString(json['depositStatus']),
      createdAt: _asString(json['createdAt']),
      closedAt: _asString(json['closedAt']),
      statements: _asMaps(json['statements'])
          .map((row) => DisputeStatementItem(
                id: _asInt(row['id']) ?? 0,
                role: _asString(row['role']),
                userId: _asString(row['userId']),
                content: _asString(row['content']),
                attachments: (row['attachments'] is List)
                    ? (row['attachments'] as List)
                        .whereType<num>()
                        .map((e) => e.toInt())
                        .toList()
                    : const [],
                createdAt: _asString(row['createdAt']),
              ))
          .toList(),
      decisions: _asMaps(json['decisions'])
          .map((row) => DisputeDecisionItem(
                id: _asInt(row['id']) ?? 0,
                type: _asString(row['type']),
                retainedAmount: (row['retainedAmount'] as num?)?.toDouble(),
                refundAmount: (row['refundAmount'] as num?)?.toDouble(),
                requestedAmount: (row['requestedAmount'] as num?)?.toDouble(),
                currency: _asString(row['currency']),
                motive: _asString(row['motive']),
                createdAt: _asString(row['createdAt']),
              ))
          .toList(),
    );
  }
}

class DisputeOutcome {
  const DisputeOutcome(
      {this.status, this.errorMessage, this.dispute, this.networkFailure = false});
  const DisputeOutcome.network()
      : status = null,
        errorMessage = null,
        dispute = null,
        networkFailure = true;

  final int? status;
  final String? errorMessage;
  final DisputeRecord? dispute;
  final bool networkFailure;
  bool get isOk => status == 200;

  static DisputeOutcome fromJson(Map<String, dynamic>? json) {
    if (json == null) return const DisputeOutcome.network();
    return DisputeOutcome(
      status: _asInt(json['status']),
      errorMessage: _asString(json['errorMessage']),
      dispute: DisputeRecord.fromJson(json['dispute']),
    );
  }
}
