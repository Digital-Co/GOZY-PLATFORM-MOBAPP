import 'package:gozy/utils/inspection/inspection_models.dart';
import 'package:gozy/utils/inspection/inspection_photo_processor.dart';

// Client-side rules of the check-in / check-out screens. They only guide the
// user (the server validates everything again) and never compute an amount.

const int inspectionCommentMax = 500;
const int inspectionDescriptionMax = 500;
const int inspectionStatementMax = 2000;
const int inspectionMileageMax = 9999999;

/// How many more photos can be added to a series of [inspectionPhotoMaxCount].
int remainingPhotoSlots({required int stored, required int queued}) {
  final left = inspectionPhotoMaxCount - stored - queued;
  return left < 0 ? 0 : left;
}

class MileageCheck {
  const MileageCheck.ok(this.value) : errorKey = null;
  const MileageCheck.error(this.errorKey) : value = null;
  final int? value;
  final String? errorKey;
  bool get isOk => errorKey == null;
}

/// Parses the typed mileage: whole kilometres, spaces and separators allowed
/// ("45 230"). The return mileage can not be below the departure mileage.
MileageCheck parseMileage(String? text, {int? minimum}) {
  final raw = (text ?? '').replaceAll(RegExp(r'[\s  .,]'), '');
  if (raw.isEmpty) return const MileageCheck.error('insp_err_mileage_required');
  if (!RegExp(r'^\d+$').hasMatch(raw) || raw.length > 8) {
    return const MileageCheck.error('insp_err_mileage_invalid');
  }
  final value = int.parse(raw);
  if (value > inspectionMileageMax) {
    return const MileageCheck.error('insp_err_mileage_invalid');
  }
  if (minimum != null && value < minimum) {
    return const MileageCheck.error('insp_err_mileage_decreasing');
  }
  return MileageCheck.ok(value);
}

bool isFuelLevel(String? value) => value != null && fuelLevels.contains(value);
bool isGeneralState(String? value) =>
    value != null && generalStates.contains(value);

/// Number of fuel marks between departure and return (negative = less fuel).
int fuelDelta(String? from, String? to) {
  final a = fuelLevels.indexOf(from ?? '');
  final b = fuelLevels.indexOf(to ?? '');
  if (a < 0 || b < 0) return 0;
  return b - a;
}

/// Values typed in a check-in or check-out form.
class InspectionFormData {
  InspectionFormData({
    this.generalState,
    this.mileageText = '',
    this.fuelLevel,
    this.keysConfirmed = false,
    this.comment = '',
    Map<String, bool>? checklist,
    this.hasDamage,
    this.damageDescription = '',
  }) : checklist = checklist ?? {};

  String? generalState;
  String mileageText;
  String? fuelLevel;
  bool keysConfirmed;
  String comment;
  Map<String, bool> checklist;
  bool? hasDamage;
  String damageDescription;

  factory InspectionFormData.fromRecord(InspectionRecord record) {
    return InspectionFormData(
      generalState: record.generalState,
      mileageText: record.mileage?.toString() ?? '',
      fuelLevel: record.fuelLevel,
      keysConfirmed: record.keysConfirmed,
      comment: record.comment ?? '',
      checklist: {for (final a in record.checklist) a.key: a.present},
      hasDamage: record.hasDamage,
      damageDescription: record.damageDescription ?? '',
    );
  }

  Map<String, dynamic> toLocalJson() => {
        'generalState': generalState,
        'mileageText': mileageText,
        'fuelLevel': fuelLevel,
        'keysConfirmed': keysConfirmed,
        'comment': comment,
        'checklist': checklist,
        'hasDamage': hasDamage,
        'damageDescription': damageDescription,
      };

  static InspectionFormData fromLocalJson(Map<String, dynamic> json) {
    final list = json['checklist'];
    return InspectionFormData(
      generalState: json['generalState'] as String?,
      mileageText: (json['mileageText'] as String?) ?? '',
      fuelLevel: json['fuelLevel'] as String?,
      keysConfirmed: json['keysConfirmed'] == true,
      comment: (json['comment'] as String?) ?? '',
      checklist: list is Map
          ? {
              for (final entry in list.entries)
                '${entry.key}': entry.value == true
            }
          : {},
      hasDamage: json['hasDamage'] as bool?,
      damageDescription: (json['damageDescription'] as String?) ?? '',
    );
  }
}

/// Field name -> text key of the error.
typedef FormErrors = Map<String, String>;

/// Check-in form (one page): state, mileage, fuel, checklist and comment.
FormErrors validateCheckinForm(
  InspectionFormData form,
  List<ChecklistItemInfo> checklist,
) {
  final errors = <String, String>{};
  if (!isGeneralState(form.generalState)) {
    errors['generalState'] = 'insp_err_state_required';
  }
  final mileage = parseMileage(form.mileageText);
  if (!mileage.isOk) errors['mileage'] = mileage.errorKey!;
  if (!isFuelLevel(form.fuelLevel)) errors['fuelLevel'] = 'insp_err_fuel_required';
  if (form.comment.trim().length > inspectionCommentMax) {
    errors['comment'] = 'insp_err_comment_long';
  }
  return errors;
}

/// Check-out form. [hasDamage] is the Yes/No answer ("returned without
/// damage?" is Yes, so hasDamage = false). [minMileage] is the check-in
/// mileage.
FormErrors validateCheckoutForm(
  InspectionFormData form, {
  int? minMileage,
  int damagePhotoCount = 0,
}) {
  final errors = <String, String>{};
  if (form.hasDamage == null) errors['hasDamage'] = 'insp_err_damage_answer';
  final mileage = parseMileage(form.mileageText, minimum: minMileage);
  if (!mileage.isOk) errors['mileage'] = mileage.errorKey!;
  if (!isFuelLevel(form.fuelLevel)) errors['fuelLevel'] = 'insp_err_fuel_required';
  if (form.comment.trim().length > inspectionCommentMax) {
    errors['comment'] = 'insp_err_comment_long';
  }
  if (form.hasDamage == true) {
    final description = form.damageDescription.trim();
    if (description.isEmpty) {
      errors['damageDescription'] = 'insp_err_damage_description';
    } else if (description.length > inspectionDescriptionMax) {
      errors['damageDescription'] = 'insp_err_comment_long';
    }
  }
  return errors;
}

/// The body of saveInspectionDraft / submitCheckout (only filled fields).
/// Photos are never listed here but through [photoIds] (display order).
Map<String, dynamic> buildInspectionInput(
  InspectionFormData form, {
  required String type,
  List<ChecklistItemInfo> checklist = const [],
  List<int>? photoIds,
}) {
  final input = <String, dynamic>{};
  final mileage = parseMileage(form.mileageText);
  if (mileage.isOk) input['mileage'] = mileage.value;
  if (isFuelLevel(form.fuelLevel)) input['fuelLevel'] = form.fuelLevel;
  input['keysConfirmed'] = form.keysConfirmed;
  input['comment'] = form.comment.trim();
  if (type == inspectionTypeCheckin) {
    if (isGeneralState(form.generalState)) {
      input['generalState'] = form.generalState;
    }
    // Every document offered for the country gets an answer (present or not).
    input['checklist'] = [
      for (final item in checklist)
        {'key': item.key, 'present': form.checklist[item.key] ?? false}
    ];
  } else {
    if (form.hasDamage != null) input['hasDamage'] = form.hasDamage;
    input['damageDescription'] =
        form.hasDamage == true ? form.damageDescription.trim() : '';
  }
  if (photoIds != null) input['photoIds'] = photoIds;
  return input;
}

class ReviewCheck {
  const ReviewCheck(this.errors);
  final Map<String, String> errors;
  bool get isOk => errors.isEmpty;
}

/// End-of-rental review (existing review module): a rating from 1 to 5 and a
/// text. The mock-up marks both as required for the renter; the owner may
/// leave the review empty (then nothing is sent).
ReviewCheck validateReview(double rating, String text,
    {required bool required}) {
  final errors = <String, String>{};
  final empty = rating <= 0 && text.trim().isEmpty;
  if (empty && !required) return const ReviewCheck({});
  if (rating < 1 || rating > 5) errors['rating'] = 'insp_err_rating_required';
  if (text.trim().isEmpty) errors['review'] = 'insp_err_review_required';
  return ReviewCheck(errors);
}

/// True when the user filled something in the review (so it is sent).
bool hasReviewContent(double rating, String text) =>
    rating > 0 || text.trim().isNotEmpty;

// ---------------------------------------------------------------------------
// States shown to the user (same labels as the Web).

enum InspectionStage {
  /// The administrator switched the feature off.
  disabled,

  /// Before the check-in opens (day of the start) or outside the check-out period.
  notOpen,
  windowClosed,

  /// Guest, check-in not started by the owner yet.
  waitingForOwner,

  /// Nothing sent yet, or a draft of mine to complete.
  todo,

  /// Submitted by the other party: I can validate, modify or contest.
  toValidateByMe,

  /// I validated, the other party has to.
  waitingForOther,
  validated,
  notAvailable,
}

InspectionStage resolveInspectionStage({
  required String type,
  required String? viewerRole,
  required InspectionRecord? record,
  required bool windowOpen,
  required String? windowReason,
}) {
  if (windowReason == 'inspectionDisabled') return InspectionStage.disabled;
  if (record == null) {
    if (windowOpen) {
      return type == inspectionTypeCheckin && viewerRole != roleHost
          ? InspectionStage.waitingForOwner
          : InspectionStage.todo;
    }
    return switch (windowReason) {
      'notYetOpen' => InspectionStage.notOpen,
      'closed' => InspectionStage.windowClosed,
      _ => InspectionStage.notAvailable,
    };
  }
  if (record.isValidated) return InspectionStage.validated;
  if (record.isDraft) return InspectionStage.todo;
  return record.validatedBy(viewerRole)
      ? InspectionStage.waitingForOther
      : InspectionStage.toValidateByMe;
}

enum BadgeTone { success, warning, danger, neutral, info }

/// Text key and tone of a stage (badge on the screens).
({String textKey, BadgeTone tone}) stageBadge(InspectionStage stage) =>
    switch (stage) {
      InspectionStage.disabled => (textKey: 'insp_stage_disabled', tone: BadgeTone.neutral),
      InspectionStage.notOpen => (textKey: 'insp_stage_not_open', tone: BadgeTone.neutral),
      InspectionStage.windowClosed => (textKey: 'insp_stage_window_closed', tone: BadgeTone.neutral),
      InspectionStage.waitingForOwner => (textKey: 'insp_stage_waiting_owner', tone: BadgeTone.info),
      InspectionStage.todo => (textKey: 'insp_stage_todo', tone: BadgeTone.warning),
      InspectionStage.toValidateByMe => (textKey: 'insp_stage_to_validate', tone: BadgeTone.warning),
      InspectionStage.waitingForOther => (textKey: 'insp_stage_waiting_other', tone: BadgeTone.info),
      InspectionStage.validated => (textKey: 'insp_stage_validated', tone: BadgeTone.success),
      InspectionStage.notAvailable => (textKey: 'insp_stage_not_available', tone: BadgeTone.neutral),
    };

/// What the lists show for one reservation.
class InspectionEntry {
  const InspectionEntry({
    required this.showCheckin,
    required this.showCheckout,
    this.badgeKey,
    this.badgeTone = BadgeTone.neutral,
  });
  final bool showCheckin;
  final bool showCheckout;
  final String? badgeKey;
  final BadgeTone badgeTone;
  bool get isVisible => showCheckin || showCheckout;
}

/// Entry points of the trips and bookings lists. [globalStatus] is the
/// derived status returned by the API (`inspectionStatus`). The screens
/// behind explain the window ("opens on the day of the start"), so the lists
/// only filter on the reservation state.
InspectionEntry inspectionEntryFor({
  required String? reservationState,
  required String? globalStatus,
}) {
  final settled = reservationState == 'approved' || reservationState == 'completed';
  if (!settled) {
    return const InspectionEntry(showCheckin: false, showCheckout: false);
  }
  final badge = switch (globalStatus) {
    'to_validate' => (key: 'insp_status_to_validate', tone: BadgeTone.warning),
    'damage_declared' => (key: 'insp_status_damage_declared', tone: BadgeTone.danger),
    'dispute' => (key: 'insp_status_dispute', tone: BadgeTone.danger),
    'dispute_closed' => (key: 'insp_status_dispute_closed', tone: BadgeTone.neutral),
    _ => null,
  };
  return InspectionEntry(
    showCheckin: true,
    showCheckout: true,
    badgeKey: badge?.key,
    badgeTone: badge?.tone ?? BadgeTone.neutral,
  );
}

/// True when the check-out of a record can no longer be changed: validated, or
/// a dispute is open or decided (the Web is stricter than the server here and
/// the mobile does the same).
bool isCheckoutReadOnly(InspectionRecord? record, DisputeRecord? dispute) =>
    (record?.isLocked ?? false) || dispute != null;

/// Where an HTTP status of the photo routes maps to a text (when the server
/// sent no message of its own).
String photoHttpErrorKey(int? httpStatus) => switch (httpStatus) {
      400 => 'insp_err_photo_format',
      401 => 'insp_err_session',
      403 => 'insp_err_not_allowed',
      404 => 'insp_err_not_found',
      409 => 'insp_err_photo_limit',
      413 => 'insp_err_photo_too_large',
      415 => 'insp_err_photo_format',
      429 => 'insp_err_busy',
      503 => 'insp_err_unavailable',
      _ => 'insp_err_generic',
    };
