import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/resources/app_layout.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/profile/edit_profile/edit_profile_controller.dart';
import 'package:gozy/widgets/common/custom_button/primary_button.dart';
import 'package:gozy/widgets/common/custom_container/custom_bottom_item_shadow_container.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/common/custom_textfield/custom_prefix_textfield.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/custom_stateful_widget.dart';
import 'package:gozy/widgets/custom_text.dart';

class ChangeEmailPage extends CustomStatefulWidget {
  const ChangeEmailPage({super.key, required this.controller});

  final EditProfileController controller;

  @override
  ChangeEmailPageState createState() => ChangeEmailPageState();
}

class ChangeEmailPageState extends CustomStatefulWidgetState<ChangeEmailPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _confirmationController = TextEditingController();
  bool _isPending = false;
  bool _isSending = false;
  String? _errorMessage;
  String _requestedEmail = '';

  @override
  void dispose() {
    _emailController.dispose();
    _confirmationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      controller: widget.controller,
      isShowAppBar: false,
      customAppBarFunction: onBack,
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: getBackIconWidget(
              themeType: appLayoutMap[AppLayout.profile]?.themeType,
              backIcon: appLayoutMap[AppLayout.profile]?.backIcon,
              size: AppDimen.backIconSize,
              margin: pad(
                  top: 15,
                  end: 13,
                  start: AppDimen.startMargin - 2,
                  bottom: 13),
              onTap: onBack,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: AppDimen.startMargin),
              child: _isPending ? _pendingContent() : _formContent(),
            ),
          ),
          if (!_isPending)
            CustomBottomItemShadowContainer(
              padding:
                  pad(w: AppDimen.startMargin, h: AppDimen.startMargin + 5),
              body: PrimaryButton(
                buttonText: _isSending
                    ? email_change_sending.tr
                    : send_confirmation_link.tr,
                onTap: _isSending ? null : _submit,
              ),
            ),
        ],
      ),
    );
  }

  Widget _formContent() {
    return [
      CustomTitleText(
        text: change_email_title.tr,
        size: AppDimen.textSize_22,
        fontWeight: AppFont.semiBold,
      ),
      12.toHeight(),
      CustomText(
        text: change_email_description.tr,
        size: AppDimen.textSize_14,
        fontWeight: AppFont.regular,
      ),
      22.toHeight(),
      CustomPrefixTextField(
        title: new_email_address.tr,
        hintText: error_email_address.tr,
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        applayout: AppLayout.inputType,
      ),
      18.toHeight(),
      CustomPrefixTextField(
        title: confirm_new_email_address.tr,
        hintText: error_email_address.tr,
        controller: _confirmationController,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
        applayout: AppLayout.inputType,
        onSubmitted: (_) => _submit(),
      ),
      if (_errorMessage != null) ...[
        12.toHeight(),
        CustomText(
          text: _errorMessage!,
          color: appColors.errorRed,
          size: AppDimen.textSize_14,
        ),
      ],
      24.toHeight(),
    ].toColumn(crossAxisAlignment: CrossAxisAlignment.start);
  }

  Widget _pendingContent() {
    return [
      CustomTitleText(
        text: email_change_check_inbox_title.tr,
        size: AppDimen.textSize_22,
        fontWeight: AppFont.semiBold,
      ),
      16.toHeight(),
      CustomText(
        text: email_change_sent_to.trParams({'email': _requestedEmail}),
        size: AppDimen.textSize_16,
      ),
      6.toHeight(),
      CustomText(
        text: email_change_open_message.tr,
        size: AppDimen.textSize_14,
      ),
      12.toHeight(),
      CustomText(
        text: email_change_current_address_remains.tr,
        size: AppDimen.textSize_14,
      ),
      24.toHeight(),
      CustomText(
        text: email_change_check_spam.tr,
        size: AppDimen.textSize_14,
      ),
    ].toColumn(crossAxisAlignment: CrossAxisAlignment.start);
  }

  Future<void> _submit() async {
    final email = _emailController.text.trim();
    final confirmation = _confirmationController.text.trim();
    if (!GetUtils.isEmail(email)) {
      setState(() => _errorMessage = email_change_invalid_address.tr);
      return;
    }
    if (email.toLowerCase() != confirmation.toLowerCase()) {
      setState(() => _errorMessage = email_change_mismatch.tr);
      return;
    }

    setState(() {
      _isSending = true;
      _errorMessage = null;
    });
    final status = await widget.controller.requestEmailChange(email);
    if (!mounted) return;

    setState(() {
      _isSending = false;
      if (status == 'pending') {
        _requestedEmail = email;
        _isPending = true;
      } else {
        _errorMessage = switch (status) {
          'email' => email_change_already_used.tr,
          'sameEmail' => email_change_same_as_current.tr,
          'notLoggedIn' => email_change_sign_in_required.tr,
          _ => email_change_send_failed.tr,
        };
      }
    });
  }
}
