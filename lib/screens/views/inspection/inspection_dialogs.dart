import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/inspection/inspection_widgets.dart';
import 'package:gozy/utils/inspection/inspection_i18n.dart';
import 'package:gozy/utils/inspection/inspection_models.dart';

/// Asks for a short text (comment of a disagreement...). Returns the trimmed
/// text, or null when cancelled.
Future<String?> askForText({
  required String title,
  required String hint,
  required String confirmLabel,
  int maxLength = 500,
}) {
  final controller = TextEditingController();
  return Get.dialog<String>(
    _TextDialog(
      controller: controller,
      title: title,
      hint: hint,
      confirmLabel: confirmLabel,
      maxLength: maxLength,
    ),
    barrierDismissible: false,
  ).whenComplete(controller.dispose);
}

class _TextDialog extends StatefulWidget {
  const _TextDialog({
    required this.controller,
    required this.title,
    required this.hint,
    required this.confirmLabel,
    required this.maxLength,
  });
  final TextEditingController controller;
  final String title;
  final String hint;
  final String confirmLabel;
  final int maxLength;

  @override
  State<_TextDialog> createState() => _TextDialogState();
}

class _TextDialogState extends State<_TextDialog> {
  String? _error;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: appColors.white,
      title: Text(widget.title, style: inspStyle(16, AppFont.semiBold)),
      content: SingleChildScrollView(
        child: InspTextField(
          controller: widget.controller,
          hint: widget.hint,
          maxLength: widget.maxLength,
          maxLines: 5,
          errorText: _error,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Get.back<String>(),
          child: Text(inspText('insp_cancel')),
        ),
        TextButton(
          onPressed: () {
            final text = widget.controller.text.trim();
            if (text.isEmpty) {
              setState(() => _error = inspText('insp_err_text_required'));
              return;
            }
            Get.back<String>(result: text);
          },
          child: Text(widget.confirmLabel),
        ),
      ],
    );
  }
}

/// Reason and comment of a disagreement ("Report a disagreement").
class DisputeDraft {
  const DisputeDraft(this.reason, this.comment);
  final String reason;
  final String comment;
}

Future<DisputeDraft?> askForDispute() {
  return Get.dialog<DisputeDraft>(const _DisputeDialog(), barrierDismissible: false);
}

class _DisputeDialog extends StatefulWidget {
  const _DisputeDialog();

  @override
  State<_DisputeDialog> createState() => _DisputeDialogState();
}

class _DisputeDialogState extends State<_DisputeDialog> {
  final TextEditingController _comment = TextEditingController();
  String? _reason;
  String? _reasonError;
  String? _commentError;

  @override
  void dispose() {
    _comment.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: appColors.white,
      title: Text(inspText('insp_dispute_open_title'), style: inspStyle(16, AppFont.semiBold)),
      content: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
          Text(inspText('insp_dispute_open_help'), style: inspStyle(13, AppFont.regular)),
          const SizedBox(height: 10),
          for (final reason in disputeReasons)
            Semantics(
              inMutuallyExclusiveGroup: true,
              selected: _reason == reason,
              button: true,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                dense: true,
                minVerticalPadding: 8,
                leading: Icon(
                  _reason == reason ? Icons.radio_button_checked : Icons.radio_button_unchecked,
                  color: _reason == reason ? appColors.primaryColor : appColors.textfieldHintColor,
                ),
                title: Text(inspText('insp_reason_$reason'), style: inspStyle(14, AppFont.regular)),
                onTap: () => setState(() {
                  _reason = reason;
                  _reasonError = null;
                }),
              ),
            ),
          InspErrorText(_reasonError),
          const SizedBox(height: 8),
          InspTextField(
            controller: _comment,
            hint: inspText('insp_dispute_comment_hint'),
            maxLength: 2000,
            maxLines: 5,
            errorText: _commentError,
          ),
        ]),
      ),
      actions: [
        TextButton(onPressed: () => Get.back<DisputeDraft>(), child: Text(inspText('insp_cancel'))),
        TextButton(
          onPressed: () {
            final comment = _comment.text.trim();
            setState(() {
              _reasonError = _reason == null ? inspText('insp_err_reason_required') : null;
              _commentError = comment.isEmpty ? inspText('insp_err_text_required') : null;
            });
            if (_reason == null || comment.isEmpty) return;
            Get.back<DisputeDraft>(result: DisputeDraft(_reason!, comment));
          },
          child: Text(inspText('insp_dispute_open_send')),
        ),
      ],
    );
  }
}

/// Yes / No confirmation.
Future<bool> confirmDialog({required String title, required String message, required String confirmLabel}) async {
  final result = await Get.dialog<bool>(
    AlertDialog(
      backgroundColor: appColors.white,
      title: Text(title, style: inspStyle(16, AppFont.semiBold)),
      content: Text(message, style: inspStyle(14, AppFont.regular)),
      actions: [
        TextButton(onPressed: () => Get.back<bool>(result: false), child: Text(inspText('insp_cancel'))),
        TextButton(onPressed: () => Get.back<bool>(result: true), child: Text(confirmLabel)),
      ],
    ),
  );
  return result ?? false;
}
