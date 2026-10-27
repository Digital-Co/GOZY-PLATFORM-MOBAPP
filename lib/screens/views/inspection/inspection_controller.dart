import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/inspection/inspection_api.dart';
import 'package:gozy/screens/views/inspection/inspection_context.dart';
import 'package:gozy/screens/views/inspection/inspection_services.dart';
import 'package:gozy/utils/inspection/inspection_i18n.dart';
import 'package:gozy/utils/inspection/inspection_models.dart';
import 'package:gozy/utils/inspection/inspection_photo_service.dart';
import 'package:gozy/utils/inspection/inspection_queue_store.dart';
import 'package:gozy/utils/inspection/inspection_rules.dart';
import 'package:gozy/utils/inspection/inspection_upload_queue.dart';

/// State and actions of one check-in or check-out screen. The server stays the
/// judge of every rule (window, version, validation, limits): the controller
/// reloads the record after a refusal and shows what the server really has.
class InspectionController extends BaseController {
  InspectionController({required this.ctx, required this.type});

  final InspectionContext ctx;

  /// inspectionTypeCheckin or inspectionTypeCheckout.
  final String type;

  late final InspectionApi api = InspectionApi(this);
  final InspectionServices services = InspectionServices.instance;

  bool get isCheckin => type == inspectionTypeCheckin;
  String get userId => appPreference.userID ?? '';

  // ---- server state ----
  InspectionOutcome? outcome;
  List<ChecklistItemInfo> checklist = [];
  DisputeRecord? dispute;
  InspectionRecord? checkinRecord;
  InspectionComparisonInfo? comparison;
  String? loadError;
  bool firstLoadDone = false;

  /// Version shown when a mutation started (to detect a concurrent change).
  int? _versionShown;

  // ---- form state ----
  final RxBool editing = false.obs;
  final RxBool working = false.obs;
  final RxBool processingPhotos = false.obs;
  InspectionFormData form = InspectionFormData();
  FormErrors errors = {};
  double reviewRating = 0;
  String reviewText = '';
  String? conflictMessage;
  String? reviewWarning;

  StreamSubscription<UploadItem>? _photoSub;
  Timer? _persistTimer;
  bool _formInitialised = false;

  /// Incremented each time the form values are replaced (the screen then
  /// refills its text fields).
  int formEpoch = 0;

  InspectionRecord? get record => outcome?.inspection;
  String? get viewerRole => outcome?.viewerRole ?? record?.viewerRole;
  bool get isHost => viewerRole == roleHost;
  bool get isGuest => viewerRole == roleGuest;

  InspectionStage get stage => resolveInspectionStage(
        type: type,
        viewerRole: viewerRole ?? (ctx.isOwner ? roleHost : roleGuest),
        record: record,
        windowOpen: outcome?.windowOpen ?? false,
        windowReason: outcome?.windowReason,
      );

  bool get readOnly => isCheckin
      ? (record?.isLocked ?? false)
      : isCheckoutReadOnly(record, dispute);

  /// Pictures stored on the server for this series.
  List<InspectionPhotoItem> get serverPhotos => record?.mainPhotos ?? const [];

  /// Pictures waiting, being sent or failed (not stored yet).
  List<UploadItem> get queuedPhotos => !services.isReady
      ? const []
      : services.queue
          .itemsFor(ctx.reservationId, type)
          .where((item) => item.status != UploadStatus.done)
          .toList();

  int get photoCount => serverPhotos.length + queuedPhotos.length;
  int get remainingSlots =>
      remainingPhotoSlots(stored: serverPhotos.length, queued: queuedPhotos.length);
  bool get hasPendingUploads =>
      services.isReady && services.queue.hasActive(ctx.reservationId, type);
  bool get hasFailedUploads =>
      queuedPhotos.any((item) => item.status == UploadStatus.failed);

  String get locale => Get.locale?.toString() ?? 'en';

  @override
  void onInit() {
    super.onInit();
    services.ensureStarted().then((_) {
      services.queue.addListener(_onQueueChanged);
      _photoSub = services.onPhotoStored.listen((item) {
        if (item.reservationId == ctx.reservationId && item.type == type) {
          load(silent: true).then((_) =>
              services.queue.clearDone(ctx.reservationId, type));
        }
      });
      load();
    });
  }

  @override
  void onClose() {
    _persistTimer?.cancel();
    _photoSub?.cancel();
    if (services.isReady) services.queue.removeListener(_onQueueChanged);
    super.onClose();
  }

  void _onQueueChanged() => update();

  // ------------------------------------------------------------------ load

  /// Loads the inspection, the checklist, the dispute and the comparison.
  /// [silent] keeps the form as typed (used after an upload finished).
  Future<void> load({bool silent = false}) async {
    if (!silent) {
      isLoading.value = true;
      loadError = null;
      update();
    }
    final result = await api.getInspection(ctx.reservationId, type);
    if (result.networkFailure) {
      loadError = inspText('insp_err_network');
      isLoading.value = false;
      firstLoadDone = true;
      update();
      return;
    }
    if (!result.isOk) {
      loadError = result.errorMessage ?? inspText('insp_err_generic');
      isLoading.value = false;
      firstLoadDone = true;
      update();
      return;
    }
    outcome = result;
    loadError = null;

    if (!result.isDisabled) {
      if (isCheckin && checklist.isEmpty) {
        checklist = await api.getChecklist(ctx.reservationId) ?? checklist;
      }
      if (!isCheckin) {
        final checkin = await api.getInspection(ctx.reservationId, inspectionTypeCheckin);
        checkinRecord = checkin.inspection;
        final disputeOutcome = await api.getDispute(ctx.reservationId);
        if (disputeOutcome.isOk) dispute = disputeOutcome.dispute;
        if (record != null) comparison = await api.getComparison(ctx.reservationId);
      } else if (record != null) {
        checkinRecord = record;
      }
    }

    if (!_formInitialised) await _initForm();
    isLoading.value = false;
    firstLoadDone = true;
    update();
  }

  /// First load: the form is open for a new inspection or a draft of mine,
  /// otherwise the screen shows the recap.
  Future<void> _initForm() async {
    _formInitialised = true;
    final current = record;
    final open = stage == InspectionStage.todo;
    if (current != null) {
      form = InspectionFormData.fromRecord(current);
    }
    if (open) {
      final saved = await services.drafts
          .load(userId, ctx.reservationId, type, serverVersion: current?.version ?? 0);
      if (saved != null) {
        form = InspectionFormData.fromLocalJson(saved.fields);
        reviewRating = (saved.fields['reviewRating'] as num?)?.toDouble() ?? 0;
        reviewText = (saved.fields['reviewText'] as String?) ?? '';
      }
      editing.value = true;
    }
    formEpoch++;
  }

  /// "Modify": the form opens with the values of the displayed version.
  void startEditing() {
    final current = record;
    if (current != null) form = InspectionFormData.fromRecord(current);
    errors = {};
    conflictMessage = null;
    editing.value = true;
    formEpoch++;
    update();
  }

  void cancelEditing() {
    final current = record;
    if (current != null && !current.isDraft) {
      editing.value = false;
      form = InspectionFormData.fromRecord(current);
    }
    errors = {};
    formEpoch++;
    services.drafts.clear(userId, ctx.reservationId, type);
    update();
  }

  // ----------------------------------------------------------- local draft

  /// Called by the form on every change: keeps a local copy (the server wins
  /// at the next load when it moved to another version).
  void formChanged() {
    _persistTimer?.cancel();
    _persistTimer = Timer(const Duration(milliseconds: 600), () {
      if (!services.isReady) return;
      services.drafts.save(
        userId,
        ctx.reservationId,
        type,
        LocalInspectionDraft(
          baseVersion: record?.version ?? 0,
          fields: {
            ...form.toLocalJson(),
            'reviewRating': reviewRating,
            'reviewText': reviewText,
          },
          savedAt: DateTime.now(),
        ),
      );
    });
  }

  // ---------------------------------------------------------------- photos

  /// Makes sure the record exists on the server (the photo routes need it).
  Future<bool> _ensureRecord() async {
    if (record != null) return true;
    final input = buildInspectionInput(form, type: type, checklist: checklist);
    if (!isCheckin) input['hasDamage'] = form.hasDamage ?? true;
    working.value = true;
    final result = await api.saveDraft(ctx.reservationId, type, input);
    working.value = false;
    if (result.isOk && result.inspection != null) {
      outcome = result;
      update();
      return true;
    }
    _showFailure(result.networkFailure ? inspText('insp_err_network_start') : result.errorMessage);
    return false;
  }

  /// Compresses the chosen pictures and puts them in the upload queue.
  Future<void> addPhotos(List<String> sources) async {
    if (sources.isEmpty || readOnly) return;
    final slots = remainingSlots;
    if (slots <= 0) {
      showSnackBar(inspText('insp_err_photo_limit'), isltralign: true);
      return;
    }
    if (!await _ensureRecord()) return;
    final accepted = sources.take(slots).toList();
    if (sources.length > slots) {
      showSnackBar(inspText('insp_err_photo_limit'), isltralign: true);
    }
    processingPhotos.value = true;
    final prepared = await prepareInspectionPhotos(accepted);
    processingPhotos.value = false;
    for (final photo in prepared.photos) {
      await services.queue.enqueue(
        reservationId: ctx.reservationId,
        type: type,
        filePath: photo.path,
      );
    }
    if (prepared.errors.isNotEmpty) {
      showSnackBar(inspText(prepared.errors.first), isltralign: true);
    }
    update();
  }

  Future<void> cancelUpload(String localId) async {
    await services.queue.cancel(localId);
    update();
  }

  Future<void> retryUpload(String localId) => services.queue.retry(localId);

  /// Deletes a stored photo (draft, or a version still open to changes).
  Future<void> removePhoto(int photoId) async {
    working.value = true;
    final result = await services.uploader.remove(photoId);
    working.value = false;
    if (result.kind == UploadOutcomeKind.success) {
      await load(silent: true);
    } else {
      _showFailure(result.message ??
          inspText(result.kind == UploadOutcomeKind.retryable
              ? 'insp_err_network'
              : photoHttpErrorKey(result.httpStatus)));
    }
  }

  // --------------------------------------------------------------- actions

  Map<String, dynamic> _input() =>
      buildInspectionInput(form, type: type, checklist: checklist);

  bool _blockedByUploads() {
    if (hasPendingUploads) {
      showSnackBar(inspText('insp_wait_uploads'), isltralign: true);
      return true;
    }
    if (hasFailedUploads) {
      showSnackBar(inspText('insp_failed_uploads'), isltralign: true);
      return true;
    }
    return false;
  }

  /// Saves what was typed without validating (owner draft).
  Future<void> saveDraft() async {
    if (working.value) return;
    working.value = true;
    _versionShown = record?.version;
    final result = await api.saveDraft(ctx.reservationId, type, _input(),
        expectedVersion: record?.version);
    working.value = false;
    if (result.isOk) {
      outcome = result;
      showSnackBar(inspText('insp_draft_saved'), isltralign: true);
      await services.drafts.clear(userId, ctx.reservationId, type);
      update();
    } else {
      await _afterFailure(result);
    }
  }

  /// Owner: saves then validates the check-in. Edit of a version to validate:
  /// saves the next version (the editor's validation is implied).
  Future<bool> submitCheckin() async {
    if (working.value) return false;
    errors = validateCheckinForm(form, checklist);
    update();
    if (errors.isNotEmpty) {
      showSnackBar(inspText('insp_err_form'), isltralign: true);
      return false;
    }
    if (_blockedByUploads()) return false;
    working.value = true;
    _versionShown = record?.version;
    var result = await api.saveDraft(ctx.reservationId, type, _input(),
        expectedVersion: record?.version);
    if (result.isOk && result.inspection != null && result.inspection!.isDraft) {
      result = await api.validate(
          ctx.reservationId, type, result.inspection!.version);
    }
    working.value = false;
    if (result.isOk) {
      outcome = result;
      editing.value = false;
      conflictMessage = null;
      await services.drafts.clear(userId, ctx.reservationId, type);
      await load(silent: true);
      return true;
    }
    await _afterFailure(result);
    return false;
  }

  /// The other party accepts the displayed version.
  Future<bool> validate() async {
    final current = record;
    if (current == null || working.value) return false;
    working.value = true;
    _versionShown = current.version;
    final result = await api.validate(ctx.reservationId, type, current.version);
    working.value = false;
    if (result.isOk) {
      outcome = result;
      conflictMessage = null;
      await load(silent: true);
      return true;
    }
    await _afterFailure(result);
    return false;
  }

  /// Records a disagreement on a version (no change of the record).
  Future<bool> contest(String comment) async {
    if (working.value) return false;
    working.value = true;
    _versionShown = record?.version;
    final result = await api.contest(ctx.reservationId, type, comment);
    working.value = false;
    if (result.isOk) {
      outcome = result;
      showSnackBar(inspText('insp_contest_sent'), isltralign: true);
      update();
      return true;
    }
    await _afterFailure(result);
    return false;
  }

  /// Check-out: answer, details and review. The review goes through the
  /// existing review module in a separate call.
  Future<bool> submitCheckout() async {
    if (working.value) return false;
    errors = validateCheckoutForm(
      form,
      minMileage: checkinRecord?.mileage,
      damagePhotoCount: photoCount,
    );
    final reviewCheck = validateReview(reviewRating, reviewText, required: !ctx.isOwner);
    errors = {...errors, ...reviewCheck.errors};
    update();
    if (errors.isNotEmpty) {
      showSnackBar(inspText('insp_err_form'), isltralign: true);
      return false;
    }
    if (_blockedByUploads()) return false;
    final hasDamage = form.hasDamage ?? false;
    working.value = true;
    _versionShown = record?.version;

    // "No damage": pictures added before changing the answer are removed.
    if (!hasDamage && record != null) {
      for (final photo in record!.photosOfKind('damage')) {
        await services.uploader.remove(photo.id);
      }
      final fresh = await api.getInspection(ctx.reservationId, type);
      if (fresh.isOk) outcome = fresh;
    }

    final result = await api.submitCheckout(
      ctx.reservationId,
      hasDamage,
      _input(),
      expectedVersion: record?.version,
    );
    working.value = false;
    if (result.isOk) {
      outcome = result;
      editing.value = false;
      conflictMessage = null;
      await services.drafts.clear(userId, ctx.reservationId, type);
      await _sendReview();
      await load(silent: true);
      return true;
    }
    await _afterFailure(result);
    return false;
  }

  Future<void> _sendReview() async {
    reviewWarning = null;
    if (!hasReviewContent(reviewRating, reviewText)) return;
    final receiver = ctx.receiverId;
    if (receiver == null || receiver.isEmpty || ctx.listId == 0) {
      reviewWarning = inspText('insp_review_failed');
      return;
    }
    final failure = await api.writeReview(
      reservationId: ctx.reservationId,
      listId: ctx.listId,
      receiverId: receiver,
      rating: reviewRating,
      content: reviewText.trim(),
    );
    if (failure != null) {
      reviewWarning = failure.isNotEmpty
          ? '${inspText('insp_review_failed')} $failure'
          : inspText('insp_review_failed');
      showSnackBar(reviewWarning, isltralign: true);
    } else {
      reviewRating = 0;
      reviewText = '';
    }
  }

  /// Opens a dispute from the check-out.
  Future<bool> openDispute(String reasonCode, String comment) async {
    if (working.value) return false;
    working.value = true;
    final result = await api.openDispute(ctx.reservationId, reasonCode, comment);
    working.value = false;
    if (result.isOk) {
      dispute = result.dispute;
      update();
      return true;
    }
    _showFailure(result.networkFailure ? inspText('insp_err_network') : result.errorMessage);
    return false;
  }

  Future<DisputeOutcome> reloadDispute() async {
    final result = await api.getDispute(ctx.reservationId);
    if (result.isOk) {
      dispute = result.dispute;
      update();
    }
    return result;
  }

  // ---------------------------------------------------------------- errors

  /// After a refusal: reload, and when the record moved to another version
  /// say so (the server wins), otherwise show the server message.
  Future<void> _afterFailure(InspectionOutcome result) async {
    if (result.networkFailure) {
      _showFailure(inspText('insp_err_network'));
      return;
    }
    final before = _versionShown;
    await load(silent: true);
    final now = record?.version;
    if (before != null && now != null && now != before) {
      conflictMessage = inspText('insp_conflict');
      editing.value = false;
      if (record != null) form = InspectionFormData.fromRecord(record!);
      formEpoch++;
      await services.drafts.clear(userId, ctx.reservationId, type);
      update();
      return;
    }
    _showFailure(result.errorMessage);
  }

  void _showFailure(String? message) {
    showSnackBar(
        (message == null || message.isEmpty) ? inspText('insp_err_generic') : message,
        isltralign: true);
  }

  @visibleForTesting
  void debugSetOutcome(InspectionOutcome value) => outcome = value;
}
