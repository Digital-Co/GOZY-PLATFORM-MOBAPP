import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/screens/views/inspection/inspection_camera_screen.dart';
import 'package:gozy/screens/views/inspection/inspection_context.dart';
import 'package:gozy/screens/views/inspection/inspection_controller.dart';
import 'package:gozy/screens/views/inspection/inspection_dialogs.dart';
import 'package:gozy/screens/views/inspection/inspection_widgets.dart';
import 'package:gozy/utils/inspection/inspection_format.dart';
import 'package:gozy/utils/inspection/inspection_i18n.dart';
import 'package:gozy/utils/inspection/inspection_models.dart';
import 'package:gozy/utils/inspection/inspection_photo_service.dart';
import 'package:gozy/utils/inspection/inspection_rules.dart';
import 'package:gozy/widgets/custom_stateful_widget.dart';

/// Check-in: one page for the owner (photos, general state, mileage, fuel,
/// documents, keys, comment), a recap with Validate / Modify for the renter
/// (and for the owner while the other party has to validate).
class InspectionCheckinScreen extends CustomStatefulWidget {
  const InspectionCheckinScreen({super.key, required this.ctx});
  final InspectionContext ctx;

  @override
  CustomStatefulWidgetState<InspectionCheckinScreen> createState() =>
      _InspectionCheckinScreenState();
}

class _InspectionCheckinScreenState extends CustomStatefulWidgetState<InspectionCheckinScreen> {
  late final String _tag = 'insp_${widget.ctx.reservationId}_checkin';
  late final InspectionController c;
  final TextEditingController _mileage = TextEditingController();
  final TextEditingController _comment = TextEditingController();
  int _epoch = -1;

  @override
  void initState() {
    c = Get.put(InspectionController(ctx: widget.ctx, type: inspectionTypeCheckin), tag: _tag);
    super.initState();
  }

  @override
  void dispose() {
    _mileage.dispose();
    _comment.dispose();
    Get.delete<InspectionController>(tag: _tag);
    super.dispose();
  }

  void _syncFields() {
    if (_epoch == c.formEpoch) return;
    _epoch = c.formEpoch;
    _mileage.text = c.form.mileageText;
    _comment.text = c.form.comment;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      controller: c,
      isShowAppBar: true,
      backIconWidget: getBackIconWidget(
        themeType: overALLThemeType,
        onTap: () => Get.back(),
      ),
      title: inspText('insp_checkin_title'),
      isShowBGOnLoader: false,
      loader: LottieLoaders.three_dots_loader,
      resizeToAvoidBottomInset: true,
      body: inspScale(
        context,
        Obx(() {
          c.editing.value;
          c.working.value;
          c.isLoading.value;
          return GetBuilder<InspectionController>(
            tag: _tag,
            builder: (_) => _content(context),
          );
        }),
      ),
    );
  }

  Widget _content(BuildContext context) {
    if (c.loadError != null && c.outcome == null) {
      return _LoadError(message: c.loadError!, onRetry: c.load);
    }
    if (!c.firstLoadDone || c.outcome == null) return const SizedBox.shrink();
    _syncFields();
    final stage = c.stage;
    final blocking = inspStageMessage(stage,
        opensAt: c.outcome?.opensAt, closesAt: c.outcome?.closesAt, type: inspectionTypeCheckin);
    return RefreshIndicator(
      onRefresh: () => c.load(silent: true),
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.fromLTRB(AppDimen.startMargin - 8, 8, AppDimen.startMargin - 8, 32),
        children: [
          Text(inspText('insp_checkin_subtitle'),
              style: inspStyle(13, AppFont.regular, color: appColors.textfieldHintColor)),
          const SizedBox(height: 10),
          InspSummaryCard(ctx: widget.ctx),
          if (c.conflictMessage != null) ...[
            InspBanner(text: c.conflictMessage!, tone: BadgeTone.warning),
            const SizedBox(height: 12),
          ],
          if (blocking != null)
            InspBanner(text: blocking, tone: stage == InspectionStage.disabled ? BadgeTone.neutral : BadgeTone.info)
          else if (c.editing.value)
            ..._form(context)
          else
            ..._recap(context),
        ],
      ),
    );
  }

  // ------------------------------------------------------------------ form

  List<Widget> _form(BuildContext context) {
    final editingExisting = c.record != null && !c.record!.isDraft;
    final enabled = !c.working.value;
    return [
      if (editingExisting)
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: InspBanner(text: inspText('insp_edit_new_version'), tone: BadgeTone.info),
        ),
      InspCard(
        number: 1,
        title: inspText('insp_photos_vehicle'),
        subtitle: inspText('insp_photos_vehicle_help'),
        trailing: Text('${c.photoCount}/${c.photoMax}',
            style: inspStyle(12, AppFont.medium, color: appColors.textfieldHintColor)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Obx(() => InspPhotoGrid(
              stored: c.serverPhotos,
              queued: c.queuedPhotos,
              maxCount: c.photoMax,
              editable: enabled,
              processing: c.processingPhotos.value,
              onAdd: () => addPhotosFlow(context, c),
              onRemove: (id) => c.removePhoto(id),
              onCancel: c.cancelUpload,
              onRetry: c.retryUpload,
              onOpen: (i) => Get.to(() => InspPhotoViewer(
                  photoIds: c.serverPhotos.map((p) => p.id).toList(), initial: i)),
            )),
        InspErrorText(_err('photos')),
        ]),
      ),
      InspCard(
        number: 2,
        title: inspText('insp_general_state'),
        subtitle: inspText('insp_general_state_help'),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          GeneralStateSelector(
            value: c.form.generalState,
            enabled: enabled,
            onChanged: (value) {
              c.form.generalState = value;
              c.errors.remove('generalState');
              c.formChanged();
              c.update();
            },
          ),
          InspErrorText(_err('generalState')),
        ]),
      ),
      InspCard(
        number: 3,
        title: inspText('insp_mileage'),
        subtitle: inspText('insp_mileage_help'),
        child: InspTextField(
          controller: _mileage,
          hint: inspText('insp_mileage_hint'),
          maxLength: 9,
          maxLines: 1,
          counter: false,
          enabled: enabled,
          keyboardType: TextInputType.number,
          errorText: _err('mileage'),
          onChanged: (value) {
            c.form.mileageText = value;
            c.errors.remove('mileage');
            c.formChanged();
          },
        ),
      ),
      InspCard(
        number: 4,
        title: inspText('insp_fuel'),
        subtitle: inspText('insp_fuel_help'),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          FuelSelector(
            value: c.form.fuelLevel,
            enabled: enabled,
            onChanged: (value) {
              c.form.fuelLevel = value;
              c.errors.remove('fuelLevel');
              c.formChanged();
              c.update();
            },
          ),
          InspErrorText(_err('fuelLevel')),
        ]),
      ),
      if (c.checklist.isNotEmpty)
        InspCard(
          number: 5,
          title: inspText('insp_documents'),
          subtitle: inspText('insp_documents_help'),
          child: Column(children: [
            for (final item in c.checklist)
              CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                dense: true,
                controlAffinity: ListTileControlAffinity.leading,
                value: c.form.checklist[item.key] ?? false,
                title: Text(inspChecklistLabel(item.key, item.labelKey),
                    style: inspStyle(14, AppFont.regular)),
                secondary: InspBadge(
                  text: (c.form.checklist[item.key] ?? false)
                      ? inspText('insp_present')
                      : inspText('insp_absent'),
                  tone: (c.form.checklist[item.key] ?? false) ? BadgeTone.success : BadgeTone.neutral,
                ),
                onChanged: enabled
                    ? (value) {
                        c.form.checklist[item.key] = value ?? false;
                        c.formChanged();
                        c.update();
                      }
                    : null,
              ),
          ]),
        ),
      InspCard(
        number: c.checklist.isNotEmpty ? 6 : 5,
        title: inspText('insp_keys'),
        subtitle: inspText('insp_keys_help'),
        child: SwitchListTile(
          contentPadding: EdgeInsets.zero,
          value: c.form.keysConfirmed,
          title: Text(c.form.keysConfirmed ? inspText('insp_yes') : inspText('insp_no'),
              style: inspStyle(14, AppFont.medium)),
          onChanged: enabled
              ? (value) {
                  c.form.keysConfirmed = value;
                  c.formChanged();
                  c.update();
                }
              : null,
        ),
      ),
      InspCard(
        number: c.checklist.isNotEmpty ? 7 : 6,
        title: inspText('insp_comment_optional'),
        subtitle: inspText('insp_comment_help'),
        child: InspTextField(
          controller: _comment,
          hint: inspText('insp_comment_hint_checkin'),
          enabled: enabled,
          errorText: _err('comment'),
          onChanged: (value) {
            c.form.comment = value;
            c.formChanged();
          },
        ),
      ),
      if (c.hasPendingUploads)
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: InspBanner(text: inspText('insp_wait_uploads'), tone: BadgeTone.warning),
        ),
      if (editingExisting) ...[
        InspButton(
          label: inspText('insp_save_changes'),
          icon: Icons.check,
          loading: c.working.value,
          onTap: c.working.value ? null : _saveChanges,
        ),
        const SizedBox(height: 10),
        InspButton(
          label: inspText('insp_cancel'),
          primary: false,
          onTap: c.working.value ? null : c.cancelEditing,
        ),
      ] else ...[
        InspButton(
          label: inspText('insp_validate_checkin'),
          icon: Icons.check,
          loading: c.working.value,
          onTap: c.working.value ? null : _validateOwner,
        ),
        const SizedBox(height: 10),
        InspButton(
          label: inspText('insp_save_draft'),
          primary: false,
          onTap: c.working.value ? null : c.saveDraft,
        ),
        const SizedBox(height: 12),
        InspBanner(text: inspText('insp_checkin_info_other_party')),
      ],
    ];
  }

  String? _err(String field) {
    final key = c.errors[field];
    return key == null ? null : inspText(key);
  }

  Future<void> _validateOwner() async {
    FocusManager.instance.primaryFocus?.unfocus();
    await c.submitCheckin();
  }

  Future<void> _saveChanges() async {
    FocusManager.instance.primaryFocus?.unfocus();
    await c.submitCheckin();
  }

  // ----------------------------------------------------------------- recap

  List<Widget> _recap(BuildContext context) {
    final record = c.record;
    if (record == null) return const [];
    final stage = c.stage;
    final badge = stageBadge(stage);
    final validated = record.isValidated;
    final stamps = <String>[];
    if (record.hostValidatedAt != null) {
      stamps.add(inspText('insp_validated_by_owner', {'date': inspStamp(record.hostValidatedAt)}));
    }
    if (record.guestValidatedAt != null) {
      stamps.add(inspText('insp_validated_by_renter', {'date': inspStamp(record.guestValidatedAt)}));
    }
    final stored = record.photosOfKind('vehicle');
    return [
      Row(children: [
        InspBadge(text: inspText(badge.textKey), tone: badge.tone),
        const SizedBox(width: 8),
        Text(inspText('insp_version_n', {'n': '${record.version}'}),
            style: inspStyle(12, AppFont.regular, color: appColors.textfieldHintColor)),
      ]),
      const SizedBox(height: 10),
      if (stamps.isNotEmpty)
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(stamps.join('\n'),
              style: inspStyle(12, AppFont.regular, color: appColors.textfieldHintColor)),
        ),
      if (!validated)
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: InspBanner(
            text: stage == InspectionStage.toValidateByMe
                ? inspText('insp_recap_check_help')
                : inspText('insp_waiting_other_help'),
          ),
        ),
      if (validated)
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: InspBanner(
              tone: BadgeTone.success,
              title: inspText('insp_checkin_validated_title'),
              text: inspText('insp_checkin_locked_help')),
        ),
      InspCard(
        number: 1,
        title: inspText('insp_photos_vehicle'),
        trailing: Text('${stored.length}',
            style: inspStyle(12, AppFont.medium, color: appColors.textfieldHintColor)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          InspPhotoGrid(
            stored: stored.take(7).toList(),
            queued: const [],
            maxCount: c.photoMax,
            editable: false,
            onOpen: (i) => Get.to(() => InspPhotoViewer(
                photoIds: stored.map((p) => p.id).toList(), initial: i)),
          ),
          if (stored.isNotEmpty) ...[
            const SizedBox(height: 8),
            TextButton.icon(
              onPressed: () => Get.to(() => InspPhotoViewer(photoIds: stored.map((p) => p.id).toList())),
              icon: const Icon(Icons.visibility_outlined, size: 18),
              label: Text(inspText('insp_see_all_photos', {'count': '${stored.length}'})),
            ),
          ],
        ]),
      ),
      InspCard(
        number: 2,
        title: inspText('insp_general_state'),
        child: Row(children: [
          InspBadge(
            text: inspText(generalStateTextKey(record.generalState)),
            tone: switch (record.generalState) {
              'clean' => BadgeTone.success,
              'average' => BadgeTone.warning,
              'dirty' => BadgeTone.danger,
              _ => BadgeTone.neutral,
            },
          ),
        ]),
      ),
      InspCard(
        number: 3,
        title: inspText('insp_mileage'),
        child: Text('${formatMileage(record.mileage)} km',
            style: inspStyle(AppDimen.textSize_16, AppFont.semiBold)),
      ),
      InspCard(
        number: 4,
        title: inspText('insp_fuel'),
        child: Text(inspText(fuelTextKey(record.fuelLevel)),
            style: inspStyle(AppDimen.textSize_16, AppFont.semiBold)),
      ),
      if (c.checklist.isNotEmpty)
        InspCard(
          number: 5,
          title: inspText('insp_documents'),
          child: Column(children: [
            for (final item in c.checklist)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(children: [
                  Expanded(
                    child: Text(inspChecklistLabel(item.key, item.labelKey),
                        style: inspStyle(14, AppFont.regular)),
                  ),
                  InspBadge(
                    text: (record.checklistValue(item.key) ?? false)
                        ? inspText('insp_present')
                        : inspText('insp_absent'),
                    tone: (record.checklistValue(item.key) ?? false)
                        ? BadgeTone.success
                        : BadgeTone.neutral,
                  ),
                ]),
              ),
          ]),
        ),
      InspCard(
        number: c.checklist.isNotEmpty ? 6 : 5,
        title: inspText('insp_keys'),
        child: InspBadge(
          text: record.keysConfirmed ? inspText('insp_yes') : inspText('insp_no'),
          tone: record.keysConfirmed ? BadgeTone.success : BadgeTone.neutral,
        ),
      ),
      if ((record.comment ?? '').isNotEmpty)
        InspCard(
          number: c.checklist.isNotEmpty ? 7 : 6,
          title: inspText('insp_comment'),
          child: Text(record.comment!, style: inspStyle(14, AppFont.regular)),
        ),
      ..._recapActions(record, stage),
    ];
  }

  List<Widget> _recapActions(InspectionRecord record, InspectionStage stage) {
    final busy = c.working.value;
    final widgets = <Widget>[];
    if (record.canValidate && stage == InspectionStage.toValidateByMe) {
      widgets.add(InspButton(
        label: inspText('insp_validate_checkin'),
        icon: Icons.check,
        loading: busy,
        onTap: busy ? null : () => c.validate(),
      ));
      widgets.add(const SizedBox(height: 10));
    }
    if (record.canEdit && !record.isLocked) {
      widgets.add(InspButton(
        label: inspText('insp_modify'),
        primary: false,
        icon: Icons.edit_outlined,
        onTap: busy ? null : c.startEditing,
      ));
      widgets.add(const SizedBox(height: 10));
    }
    if (record.canContest) {
      widgets.add(Center(
        child: TextButton(
          onPressed: busy ? null : () => _contest(),
          child: Text(inspText('insp_contest')),
        ),
      ));
    }
    return widgets;
  }

  Future<void> _contest() async {
    final text = await askForText(
      title: inspText('insp_contest_title'),
      hint: inspText('insp_contest_hint'),
      confirmLabel: inspText('insp_contest_send'),
      maxLength: inspectionCommentMax,
    );
    if (text != null) await c.contest(text);
  }
}

class _LoadError extends StatelessWidget {
  const _LoadError({required this.message, required this.onRetry});
  final String message;
  final Future<void> Function({bool silent}) onRetry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        InspBanner(text: message, tone: BadgeTone.danger),
        const SizedBox(height: 14),
        InspButton(label: inspText('insp_retry'), onTap: () => onRetry()),
      ]),
    );
  }
}

/// Camera / gallery flow shared by the check-in and check-out screens.
Future<void> addPhotosFlow(BuildContext context, InspectionController c) async {
  final source = await showPhotoSourceSheet(context);
  if (source == null) return;
  if (source == 'camera') {
    await Get.to(() => InspectionCameraScreen(
          remaining: c.remainingSlots,
          onCaptured: (path) => c.addPhotos([path]),
        ));
  } else {
    final paths = await pickGalleryPhotos(limit: c.remainingSlots);
    await c.addPhotos(paths);
  }
}
