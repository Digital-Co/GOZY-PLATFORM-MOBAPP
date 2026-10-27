import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/screens/views/inspection/inspection_api.dart';
import 'package:gozy/screens/views/inspection/inspection_context.dart';
import 'package:gozy/screens/views/inspection/inspection_services.dart';
import 'package:gozy/screens/views/inspection/inspection_widgets.dart';
import 'package:gozy/utils/inspection/inspection_i18n.dart';
import 'package:gozy/utils/inspection/inspection_models.dart';
import 'package:gozy/utils/inspection/inspection_photo_processor.dart';
import 'package:gozy/utils/inspection/inspection_photo_service.dart';
import 'package:gozy/utils/inspection/inspection_rules.dart';
import 'package:gozy/utils/inspection/inspection_upload_queue.dart';
import 'package:gozy/widgets/booking/booking_options_section.dart';
import 'package:gozy/widgets/custom_stateful_widget.dart';

/// State of the dispute screen.
class InspectionDisputeController extends BaseController {
  InspectionDisputeController(this.ctx);
  final InspectionContext ctx;
  late final InspectionApi api = InspectionApi(this);
  final InspectionServices services = InspectionServices.instance;

  DisputeRecord? dispute;
  String? loadError;
  bool loaded = false;
  final RxBool sending = false.obs;
  final RxBool processing = false.obs;

  List<UploadItem> get attachments => !services.isReady
      ? const []
      : services.queue.itemsFor(ctx.reservationId, 'attachment');

  @override
  void onInit() {
    super.onInit();
    services.ensureStarted().then((_) {
      services.queue.addListener(update);
      load();
    });
  }

  @override
  void onClose() {
    if (services.isReady) services.queue.removeListener(update);
    super.onClose();
  }

  Future<void> load() async {
    isLoading.value = true;
    final result = await api.getDispute(ctx.reservationId);
    isLoading.value = false;
    loaded = true;
    if (result.networkFailure) {
      loadError = inspText('insp_err_network');
    } else if (!result.isOk) {
      loadError = result.errorMessage ?? inspText('insp_err_generic');
    } else {
      loadError = null;
      dispute = result.dispute;
    }
    update();
  }

  /// Compresses the chosen files (pictures or PDF) and queues them.
  Future<void> addAttachments(List<String> paths) async {
    final slots = inspectionAttachmentLimit - attachments.length;
    if (paths.isEmpty || slots <= 0) return;
    processing.value = true;
    final errors = <String>[];
    for (final path in paths.take(slots)) {
      try {
        if (path.toLowerCase().endsWith('.pdf')) {
          final pdf = await preparePdfAttachment(path);
          await services.queue.enqueue(reservationId: ctx.reservationId, type: 'attachment', filePath: pdf.path);
        } else {
          final prepared = await prepareInspectionPhotos([path]);
          for (final photo in prepared.photos) {
            if (photo.bytes > inspectionAttachmentMaxBytes) {
              errors.add('insp_err_photo_too_large');
              continue;
            }
            await services.queue.enqueue(reservationId: ctx.reservationId, type: 'attachment', filePath: photo.path);
          }
          errors.addAll(prepared.errors);
        }
      } on PhotoProcessingException catch (e) {
        errors.add(photoErrorTextKey(e.error));
      }
    }
    processing.value = false;
    if (errors.isNotEmpty) showSnackBar(inspText(errors.first), isltralign: true);
    update();
  }

  Future<void> cancelAttachment(String id) => services.queue.cancel(id).then((_) => update());
  Future<void> retryAttachment(String id) => services.queue.retry(id);

  /// Sends a statement with the attachments already stored.
  Future<bool> sendStatement(String text) async {
    final current = dispute;
    if (current == null || sending.value) return false;
    if (services.queue.hasActive(ctx.reservationId, 'attachment')) {
      showSnackBar(inspText('insp_wait_uploads'), isltralign: true);
      return false;
    }
    final ids = attachments
        .where((item) => item.status == UploadStatus.done && item.photoId != null)
        .map((item) => item.photoId!)
        .toList();
    sending.value = true;
    final result = await api.addStatement(current.id, text, ids);
    sending.value = false;
    if (result.isOk) {
      dispute = result.dispute ?? dispute;
      await services.queue.clearDone(ctx.reservationId, 'attachment');
      showSnackBar(inspText('insp_statement_sent'), isltralign: true);
      update();
      return true;
    }
    showSnackBar(
        result.networkFailure ? inspText('insp_err_network') : (result.errorMessage ?? inspText('insp_err_generic')),
        isltralign: true);
    return false;
  }
}

/// Dispute rattached to the reservation: status, deposit, statements of both
/// parties with attachments, and the decision of the administrator when there
/// is one. GOZY is an intermediary: no insurance (rule R16).
class InspectionDisputeScreen extends CustomStatefulWidget {
  const InspectionDisputeScreen({super.key, required this.ctx});
  final InspectionContext ctx;

  @override
  CustomStatefulWidgetState<InspectionDisputeScreen> createState() => _InspectionDisputeScreenState();
}

class _InspectionDisputeScreenState extends CustomStatefulWidgetState<InspectionDisputeScreen> {
  late final String _tag = 'insp_${widget.ctx.reservationId}_dispute';
  late final InspectionDisputeController c;
  final TextEditingController _text = TextEditingController();

  @override
  void initState() {
    c = Get.put(InspectionDisputeController(widget.ctx), tag: _tag);
    super.initState();
  }

  @override
  void dispose() {
    _text.dispose();
    Get.delete<InspectionDisputeController>(tag: _tag);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      controller: c,
      isShowAppBar: true,
      title: inspText('insp_dispute_title'),
      isShowBGOnLoader: false,
      loader: LottieLoaders.three_dots_loader,
      resizeToAvoidBottomInset: true,
      body: inspScale(
        context,
        Obx(() {
          c.sending.value;
          c.isLoading.value;
          return GetBuilder<InspectionDisputeController>(tag: _tag, builder: (_) => _content(context));
        }),
      ),
    );
  }

  Widget _content(BuildContext context) {
    if (!c.loaded) return const SizedBox.shrink();
    if (c.loadError != null) {
      return Padding(
        padding: const EdgeInsets.all(24),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          InspBanner(text: c.loadError!, tone: BadgeTone.danger),
          const SizedBox(height: 14),
          InspButton(label: inspText('insp_retry'), onTap: c.load),
        ]),
      );
    }
    final dispute = c.dispute;
    if (dispute == null) {
      return Padding(
        padding: const EdgeInsets.all(24),
        child: InspBanner(text: inspText('insp_dispute_none')),
      );
    }
    final deposit = dispute.depositAmount ?? 0;
    final active = dispute.isActive;
    return RefreshIndicator(
      onRefresh: c.load,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.fromLTRB(AppDimen.startMargin - 8, 8, AppDimen.startMargin - 8, 32),
        children: [
          InspSummaryCard(ctx: widget.ctx),
          InspCard(
            title: inspText('insp_dispute_details'),
            trailing: InspBadge(
              text: inspText('insp_dispute_status_${dispute.status}'),
              tone: active ? BadgeTone.danger : BadgeTone.neutral,
            ),
            child: Column(children: [
              if (dispute.reasonCode != null)
                InspValueRow(label: inspText('insp_dispute_reason'), value: inspText('insp_reason_${dispute.reasonCode}')),
              if (dispute.openedByRole != null)
                InspValueRow(
                    label: inspText('insp_dispute_opened_by'),
                    value: dispute.openedByRole == roleHost ? inspText('insp_owner') : inspText('insp_renter')),
              if (dispute.createdAt != null)
                InspValueRow(label: inspText('insp_dispute_opened_on'), value: inspStamp(dispute.createdAt)),
            ]),
          ),
          InspCard(
            title: inspText('insp_deposit'),
            child: deposit > 0
                ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(formatBookingAmount(deposit, fromCurrency: widget.ctx.currency),
                        style: inspStyle(AppDimen.textSize_18, AppFont.semiBold)),
                    const SizedBox(height: 4),
                    Text(inspText('insp_deposit_pending'),
                        style: inspStyle(12, AppFont.regular, color: appColors.textfieldHintColor)),
                  ])
                : Text(inspText('insp_no_deposit'), style: inspStyle(14, AppFont.regular)),
          ),
          if (dispute.hasDecision) ..._decisions(dispute),
          InspCard(
            title: inspText('insp_statements'),
            child: dispute.statements.isEmpty
                ? Text(inspText('insp_statements_none'),
                    style: inspStyle(13, AppFont.regular, color: appColors.textfieldHintColor))
                : Column(children: [for (final s in dispute.statements) _statement(s)]),
          ),
          if (active) _newStatement() else InspBanner(text: inspText('insp_dispute_closed_help')),
          const SizedBox(height: 12),
          InspBanner(text: inspText('insp_dispute_intermediary')),
        ],
      ),
    );
  }

  List<Widget> _decisions(DisputeRecord dispute) {
    return [
      for (final decision in dispute.decisions)
        InspCard(
          title: inspText('insp_decision_title'),
          subtitle: inspStamp(decision.createdAt),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(inspText('insp_decision_${decision.type}'), style: inspStyle(15, AppFont.semiBold)),
            // Amounts are the ones decided and computed by the server.
            if (decision.retainedAmount != null && decision.retainedAmount! > 0)
              InspValueRow(
                  label: inspText('insp_decision_retained'),
                  value: formatBookingAmount(decision.retainedAmount!, fromCurrency: decision.currency ?? widget.ctx.currency)),
            if (decision.refundAmount != null && decision.refundAmount! > 0)
              InspValueRow(
                  label: inspText('insp_decision_refund'),
                  value: formatBookingAmount(decision.refundAmount!, fromCurrency: decision.currency ?? widget.ctx.currency)),
            if (decision.requestedAmount != null && decision.requestedAmount! > 0)
              InspValueRow(
                  label: inspText('insp_decision_requested'),
                  value: formatBookingAmount(decision.requestedAmount!, fromCurrency: decision.currency ?? widget.ctx.currency)),
            const SizedBox(height: 6),
            Text(inspText('insp_decision_motive'), style: inspStyle(12, AppFont.medium, color: appColors.textfieldHintColor)),
            Text(decision.motive ?? '', style: inspStyle(14, AppFont.regular)),
          ]),
        ),
    ];
  }

  Widget _statement(DisputeStatementItem statement) {
    final mine = statement.role == (widget.ctx.isOwner ? roleHost : roleGuest);
    final who = statement.role == roleAdmin
        ? inspText('insp_admin')
        : statement.role == roleHost
            ? inspText('insp_owner')
            : inspText('insp_renter');
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: mine ? appColors.primaryColor.withValues(alpha: 0.07) : appColors.myTripsBGColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Expanded(child: Text(mine ? '$who (${inspText('insp_you')})' : who, style: inspStyle(13, AppFont.semiBold))),
          Text(inspStamp(statement.createdAt), style: inspStyle(11, AppFont.regular, color: appColors.textfieldHintColor)),
        ]),
        const SizedBox(height: 4),
        Text(statement.content ?? '', style: inspStyle(14, AppFont.regular)),
        if (statement.attachments.isNotEmpty) ...[
          const SizedBox(height: 6),
          Row(children: [
            Icon(Icons.attach_file, size: 16, color: appColors.textfieldHintColor),
            Text(inspText('insp_attachments_count', {'count': '${statement.attachments.length}'}),
                style: inspStyle(12, AppFont.regular, color: appColors.textfieldHintColor)),
          ]),
        ],
      ]),
    );
  }

  Widget _newStatement() {
    final items = c.attachments;
    return InspCard(
      title: inspText('insp_statement_add'),
      subtitle: inspText('insp_statement_add_help'),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        InspTextField(
          controller: _text,
          hint: inspText('insp_statement_hint'),
          maxLength: inspectionStatementMax,
          maxLines: 5,
        ),
        const SizedBox(height: 8),
        if (items.isNotEmpty)
          Wrap(spacing: 6, runSpacing: 6, children: [
            for (final item in items)
              InputChip(
                avatar: Icon(
                  item.status == UploadStatus.done
                      ? Icons.check_circle
                      : item.status == UploadStatus.failed
                          ? Icons.error_outline
                          : Icons.schedule,
                  size: 16,
                  color: item.status == UploadStatus.failed ? appColors.errorRed : null,
                ),
                label: Text(
                    item.status == UploadStatus.failed
                        ? (item.errorMessage?.isNotEmpty ?? false ? item.errorMessage! : inspText('insp_upload_failed'))
                        : item.filePath.toLowerCase().endsWith('.pdf')
                            ? 'PDF'
                            : inspText('insp_photo_label'),
                    style: const TextStyle(fontSize: 12)),
                onPressed: item.status == UploadStatus.failed ? () => c.retryAttachment(item.localId) : null,
                onDeleted: () => c.cancelAttachment(item.localId),
                deleteButtonTooltipMessage: inspText('insp_upload_cancel'),
              ),
          ]),
        const SizedBox(height: 8),
        InspButton(
          label: inspText('insp_attach_files'),
          primary: false,
          icon: Icons.attach_file,
          loading: c.processing.value,
          onTap: items.length >= inspectionAttachmentLimit
              ? null
              : () async => c.addAttachments(await pickAttachmentFiles(limit: inspectionAttachmentLimit - items.length)),
        ),
        const SizedBox(height: 4),
        Text(inspText('insp_attach_help'), style: inspStyle(11, AppFont.regular, color: appColors.textfieldHintColor)),
        const SizedBox(height: 10),
        InspButton(
          label: inspText('insp_statement_send'),
          loading: c.sending.value,
          onTap: c.sending.value
              ? null
              : () async {
                  final text = _text.text.trim();
                  if (text.isEmpty) {
                    c.showSnackBar(inspText('insp_err_text_required'), isltralign: true);
                    return;
                  }
                  FocusManager.instance.primaryFocus?.unfocus();
                  if (await c.sendStatement(text)) _text.clear();
                },
        ),
      ]),
    );
  }
}

/// At most 8 attachments can wait for a statement (server limit).
const int inspectionAttachmentLimit = 8;
