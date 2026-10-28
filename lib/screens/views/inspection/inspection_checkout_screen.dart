import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/screens/views/inspection/inspection_checkin_screen.dart';
import 'package:gozy/screens/views/inspection/inspection_context.dart';
import 'package:gozy/screens/views/inspection/inspection_controller.dart';
import 'package:gozy/screens/views/inspection/inspection_dialogs.dart';
import 'package:gozy/screens/views/inspection/inspection_dispute_screen.dart';
import 'package:gozy/screens/views/inspection/inspection_widgets.dart';
import 'package:gozy/utils/inspection/inspection_format.dart';
import 'package:gozy/utils/inspection/inspection_i18n.dart';
import 'package:gozy/utils/inspection/inspection_models.dart';
import 'package:gozy/utils/inspection/inspection_photo_processor.dart';
import 'package:gozy/utils/inspection/inspection_rules.dart';
import 'package:gozy/widgets/custom_stateful_widget.dart';

/// Check-out. Step 1: "Is the vehicle returned in the same state, without
/// any damage?" (Yes / No). Yes: mileage, fuel, comment, review. No: damage
/// photos (8 max), description, mileage, fuel, comment, review. The other
/// party then sees a recap and validates it, modifies it or reports a
/// disagreement. No new set of vehicle photos is ever asked (rule R22).
class InspectionCheckoutScreen extends CustomStatefulWidget {
  const InspectionCheckoutScreen({super.key, required this.ctx});
  final InspectionContext ctx;

  @override
  CustomStatefulWidgetState<InspectionCheckoutScreen> createState() =>
      _InspectionCheckoutScreenState();
}

class _InspectionCheckoutScreenState extends CustomStatefulWidgetState<InspectionCheckoutScreen> {
  late final String _tag = 'insp_${widget.ctx.reservationId}_checkout';
  late final InspectionController c;
  final TextEditingController _mileage = TextEditingController();
  final TextEditingController _comment = TextEditingController();
  final TextEditingController _damage = TextEditingController();
  final TextEditingController _review = TextEditingController();
  int _epoch = -1;

  @override
  void initState() {
    c = Get.put(InspectionController(ctx: widget.ctx, type: inspectionTypeCheckout), tag: _tag);
    super.initState();
  }

  @override
  void dispose() {
    _mileage.dispose();
    _comment.dispose();
    _damage.dispose();
    _review.dispose();
    Get.delete<InspectionController>(tag: _tag);
    super.dispose();
  }

  void _syncFields() {
    if (_epoch == c.formEpoch) return;
    _epoch = c.formEpoch;
    _mileage.text = c.form.mileageText;
    _comment.text = c.form.comment;
    _damage.text = c.form.damageDescription;
    _review.text = c.reviewText;
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
      title: inspText('insp_checkout_title'),
      isShowBGOnLoader: false,
      loader: LottieLoaders.three_dots_loader,
      resizeToAvoidBottomInset: true,
      body: inspScale(
        context,
        Obx(() {
          c.editing.value;
          c.working.value;
          c.isLoading.value;
          return GetBuilder<InspectionController>(tag: _tag, builder: (_) => _content(context));
        }),
      ),
    );
  }

  Widget _content(BuildContext context) {
    if (c.loadError != null && c.outcome == null) {
      return Padding(
        padding: const EdgeInsets.all(24),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          InspBanner(text: c.loadError!, tone: BadgeTone.danger),
          const SizedBox(height: 14),
          InspButton(label: inspText('insp_retry'), onTap: () => c.load()),
        ]),
      );
    }
    if (!c.firstLoadDone || c.outcome == null) return const SizedBox.shrink();
    _syncFields();
    final stage = c.stage;
    final blocking = inspStageMessage(stage,
        opensAt: c.outcome?.opensAt, closesAt: c.outcome?.closesAt, type: inspectionTypeCheckout);
    return RefreshIndicator(
      onRefresh: () => c.load(silent: true),
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.fromLTRB(AppDimen.startMargin - 8, 8, AppDimen.startMargin - 8, 32),
        children: [
          Text(inspText('insp_checkout_subtitle'),
              style: inspStyle(13, AppFont.regular, color: appColors.textfieldHintColor)),
          const SizedBox(height: 10),
          InspSummaryCard(ctx: widget.ctx),
          if (c.conflictMessage != null) ...[
            InspBanner(text: c.conflictMessage!, tone: BadgeTone.warning),
            const SizedBox(height: 12),
          ],
          if (c.dispute != null) ..._disputeBanner(),
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

  // --------------------------------------------------------------- dispute

  List<Widget> _disputeBanner() {
    final dispute = c.dispute!;
    final decided = dispute.status == 'resolved' || dispute.status == 'closed';
    return [
      InspBanner(
        tone: decided ? BadgeTone.neutral : BadgeTone.danger,
        title: decided ? inspText('insp_dispute_decided') : inspText('insp_dispute_in_progress'),
        text: inspText('insp_dispute_banner_help'),
      ),
      const SizedBox(height: 8),
      InspButton(
        label: inspText('insp_dispute_see'),
        primary: false,
        icon: Icons.gavel_outlined,
        onTap: () async {
          await Get.to(() => InspectionDisputeScreen(ctx: widget.ctx));
          c.load(silent: true);
        },
      ),
      const SizedBox(height: 14),
    ];
  }

  // ------------------------------------------------------------------ form

  String? _err(String field) {
    final key = c.errors[field];
    return key == null ? null : inspText(key);
  }

  List<Widget> _form(BuildContext context) {
    final enabled = !c.working.value;
    final answer = c.form.hasDamage;
    if (answer == null) return _question();
    final withDamage = answer;
    final checkinKm = c.checkinRecord?.mileage;
    var n = 0;
    int next() => ++n;
    return [
      if (c.record != null && !c.record!.isDraft)
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: InspBanner(text: inspText('insp_edit_new_version')),
        ),
      InspBanner(
        tone: withDamage ? BadgeTone.danger : BadgeTone.success,
        title: withDamage ? inspText('insp_damage_to_declare') : inspText('insp_no_damage_to_declare'),
        text: withDamage ? inspText('insp_damage_to_declare_help') : inspText('insp_no_damage_to_declare_help'),
      ),
      Align(
        alignment: AlignmentDirectional.centerStart,
        child: TextButton(
          onPressed: enabled
              ? () {
                  c.form.hasDamage = null;
                  c.formChanged();
                  c.update();
                }
              : null,
          child: Text(inspText('insp_change_answer')),
        ),
      ),
      if (withDamage) ...[
        InspCard(
          number: next(),
          title: inspText('insp_photos_damage'),
          subtitle: inspText('insp_photos_damage_help'),
          trailing: Text('${c.photoCount}/$inspectionPhotoMaxCount',
              style: inspStyle(12, AppFont.medium, color: appColors.textfieldHintColor)),
          child: Obx(() => InspPhotoGrid(
                stored: c.serverPhotos,
                queued: c.queuedPhotos,
                maxCount: inspectionPhotoMaxCount,
                editable: enabled,
                processing: c.processingPhotos.value,
                onAdd: () => addPhotosFlow(context, c),
                onRemove: (id) => c.removePhoto(id),
                onCancel: c.cancelUpload,
                onRetry: c.retryUpload,
                onOpen: (i) => Get.to(() => InspPhotoViewer(
                    photoIds: c.serverPhotos.map((p) => p.id).toList(), initial: i)),
              )),
        ),
        InspCard(
          number: next(),
          title: inspText('insp_damage_description'),
          subtitle: inspText('insp_damage_description_help'),
          child: InspTextField(
            controller: _damage,
            hint: inspText('insp_damage_description_hint'),
            enabled: enabled,
            errorText: _err('damageDescription'),
            onChanged: (value) {
              c.form.damageDescription = value;
              c.errors.remove('damageDescription');
              c.formChanged();
            },
          ),
        ),
      ],
      InspCard(
        number: next(),
        title: inspText('insp_mileage'),
        subtitle: checkinKm == null
            ? inspText('insp_mileage_return_help')
            : inspText('insp_mileage_departure', {'km': formatMileage(checkinKm)}),
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
        number: next(),
        title: inspText('insp_fuel'),
        subtitle: inspText('insp_fuel_return_help'),
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
      InspCard(
        number: next(),
        title: inspText('insp_keys'),
        subtitle: inspText('insp_keys_return_help'),
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
        number: next(),
        title: inspText('insp_comment_optional'),
        subtitle: inspText('insp_comment_return_help'),
        child: InspTextField(
          controller: _comment,
          hint: inspText('insp_comment_hint_checkout'),
          enabled: enabled,
          errorText: _err('comment'),
          onChanged: (value) {
            c.form.comment = value;
            c.formChanged();
          },
        ),
      ),
      _reviewCard(next(), enabled),
      if (c.hasPendingUploads)
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: InspBanner(text: inspText('insp_wait_uploads'), tone: BadgeTone.warning),
        ),
      InspButton(
        label: c.record != null && !c.record!.isDraft
            ? inspText('insp_save_changes')
            : inspText('insp_validate_checkout'),
        icon: Icons.check,
        loading: c.working.value,
        onTap: c.working.value ? null : _submit,
      ),
      if (c.record != null && !c.record!.isDraft) ...[
        const SizedBox(height: 10),
        InspButton(label: inspText('insp_cancel'), primary: false, onTap: c.cancelEditing),
      ],
      const SizedBox(height: 12),
      InspBanner(text: inspText('insp_checkout_info_process')),
    ];
  }

  Future<void> _submit() async {
    FocusManager.instance.primaryFocus?.unfocus();
    await c.submitCheckout();
  }

  List<Widget> _question() {
    final enabled = !c.working.value;
    Widget tile({required bool yes}) => Expanded(
          child: Semantics(
            button: true,
            enabled: enabled,
            label: yes ? inspText('insp_yes') : inspText('insp_no'),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: !enabled
                  ? null
                  : () {
                      c.form.hasDamage = !yes;
                      c.formChanged();
                      c.update();
                    },
              child: Container(
                constraints: const BoxConstraints(minHeight: 120),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: toneColor(yes ? BadgeTone.success : BadgeTone.danger).withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: toneColor(yes ? BadgeTone.success : BadgeTone.danger).withValues(alpha: 0.6)),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(yes ? Icons.check_circle : Icons.warning_amber_rounded,
                      size: 34, color: toneColor(yes ? BadgeTone.success : BadgeTone.danger)),
                  const SizedBox(height: 6),
                  Text(yes ? inspText('insp_yes') : inspText('insp_no'),
                      style: inspStyle(16, AppFont.semiBold,
                          color: toneColor(yes ? BadgeTone.success : BadgeTone.danger))),
                  const SizedBox(height: 2),
                  Text(
                      yes ? inspText('insp_answer_yes_help') : inspText('insp_answer_no_help'),
                      textAlign: TextAlign.center,
                      style: inspStyle(12, AppFont.regular, color: appColors.textfieldHintColor)),
                ]),
              ),
            ),
          ),
        );
    return [
      InspCard(
        title: inspText('insp_question_title'),
        subtitle: inspText('insp_question_help'),
        child: IntrinsicHeight(
          child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            tile(yes: true),
            const SizedBox(width: 10),
            tile(yes: false),
          ]),
        ),
      ),
      InspBanner(text: inspText('insp_checkout_info_process')),
    ];
  }

  Widget _reviewCard(int number, bool enabled) {
    final owner = widget.ctx.isOwner;
    final who = widget.ctx.receiverName;
    return InspCard(
      number: number,
      title: owner ? inspText('insp_review_renter') : inspText('insp_review_owner'),
      subtitle: inspText(owner ? 'insp_review_public_renter' : 'insp_review_public_owner'),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        if (who.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(who, style: inspStyle(13, AppFont.medium)),
          ),
        Text(owner ? inspText('insp_rating') : '${inspText('insp_rating')} *',
            style: inspStyle(13, AppFont.medium)),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: InspStars(
            rating: c.reviewRating,
            onChanged: enabled
                ? (value) {
                    c.reviewRating = value;
                    c.errors.remove('rating');
                    c.formChanged();
                    c.update();
                  }
                : null,
          ),
        ),
        InspErrorText(_err('rating')),
        const SizedBox(height: 6),
        Text(owner ? inspText('insp_review_text') : '${inspText('insp_review_text')} *',
            style: inspStyle(13, AppFont.medium)),
        const SizedBox(height: 6),
        InspTextField(
          controller: _review,
          hint: inspText('insp_review_hint'),
          enabled: enabled,
          errorText: _err('review'),
          onChanged: (value) {
            c.reviewText = value;
            c.errors.remove('review');
            c.formChanged();
          },
        ),
      ]),
    );
  }

  // ----------------------------------------------------------------- recap

  List<Widget> _recap(BuildContext context) {
    final record = c.record;
    if (record == null) return const [];
    final stage = c.stage;
    final badge = stageBadge(stage);
    final damage = record.hasDamage == true;
    final stored = record.photosOfKind('damage');
    final stamps = <String>[];
    if (record.hostValidatedAt != null) {
      stamps.add(inspText('insp_validated_by_owner', {'date': inspStamp(record.hostValidatedAt)}));
    }
    if (record.guestValidatedAt != null) {
      stamps.add(inspText('insp_validated_by_renter', {'date': inspStamp(record.guestValidatedAt)}));
    }
    final comparison = c.comparison;
    var n = 0;
    int next() => ++n;
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
      InspBanner(
        tone: damage ? BadgeTone.danger : BadgeTone.success,
        title: damage
            ? (record.authorRole == roleHost
                ? inspText('insp_damage_declared_by_owner')
                : inspText('insp_damage_declared_by_renter'))
            : (record.authorRole == roleHost
                ? inspText('insp_no_damage_declared_by_owner')
                : inspText('insp_no_damage_declared_by_renter')),
        text: damage ? inspText('insp_damage_declared_help') : inspText('insp_no_damage_declared_help'),
      ),
      const SizedBox(height: 12),
      if (damage) ...[
        InspCard(
          number: next(),
          title: inspText('insp_photos_damage'),
          trailing: Text('${stored.length}',
              style: inspStyle(12, AppFont.medium, color: appColors.textfieldHintColor)),
          child: InspPhotoGrid(
            stored: stored,
            queued: const [],
            maxCount: inspectionPhotoMaxCount,
            editable: false,
            onOpen: (i) => Get.to(() => InspPhotoViewer(
                photoIds: stored.map((p) => p.id).toList(), initial: i)),
          ),
        ),
        InspCard(
          number: next(),
          title: inspText('insp_damage_description'),
          child: Text(record.damageDescription ?? '', style: inspStyle(14, AppFont.regular)),
        ),
      ],
      InspCard(
        number: next(),
        title: inspText('insp_return_details'),
        child: Column(children: [
          InspValueRow(label: inspText('insp_mileage'), value: '${formatMileage(record.mileage)} km'),
          InspValueRow(label: inspText('insp_fuel'), value: inspText(fuelTextKey(record.fuelLevel))),
          InspValueRow(
              label: inspText('insp_keys'),
              value: record.keysConfirmed ? inspText('insp_yes') : inspText('insp_no')),
          if (comparison?.kmDriven != null)
            InspValueRow(
                label: inspText('insp_km_driven'), value: '${formatMileage(comparison!.kmDriven)} km'),
        ]),
      ),
      if ((record.comment ?? '').isNotEmpty)
        InspCard(
          number: next(),
          title: inspText('insp_comment'),
          child: Text(record.comment!, style: inspStyle(14, AppFont.regular)),
        ),
      if (c.reviewWarning != null) ...[
        InspBanner(text: c.reviewWarning!, tone: BadgeTone.warning),
        const SizedBox(height: 12),
      ],
      ..._recapActions(record, stage),
    ];
  }

  List<Widget> _recapActions(InspectionRecord record, InspectionStage stage) {
    final busy = c.working.value;
    final locked = c.readOnly;
    final widgets = <Widget>[];
    if (locked) {
      if (c.dispute == null) {
        widgets.add(InspBanner(
            text: record.isValidated
                ? inspText('insp_checkout_locked_help')
                : inspText('insp_readonly_help')));
      }
    } else {
      if (record.canValidate && stage == InspectionStage.toValidateByMe) {
        widgets.add(InspButton(
          label: widget.ctx.isOwner
              ? inspText('insp_validate_checkout_renter')
              : inspText('insp_validate_checkout'),
          icon: Icons.check,
          loading: busy,
          onTap: busy ? null : () => c.validate(),
        ));
        widgets.add(const SizedBox(height: 10));
      }
      if (record.canEdit) {
        widgets.add(InspButton(
          label: widget.ctx.isOwner ? inspText('insp_modify_declare_damage') : inspText('insp_modify'),
          primary: false,
          icon: Icons.edit_outlined,
          onTap: busy ? null : c.startEditing,
        ));
        widgets.add(const SizedBox(height: 10));
      }
    }
    if (c.dispute == null && !record.isDraft) {
      widgets.add(InspButton(
        label: inspText('insp_dispute_report'),
        primary: false,
        danger: true,
        icon: Icons.report_gmailerrorred_outlined,
        onTap: busy ? null : _openDispute,
      ));
    }
    return widgets;
  }

  Future<void> _openDispute() async {
    final draft = await askForDispute();
    if (draft == null) return;
    final ok = await c.openDispute(draft.reason, draft.comment);
    if (ok) {
      await Get.to(() => InspectionDisputeScreen(ctx: widget.ctx));
      c.load(silent: true);
    }
  }
}
