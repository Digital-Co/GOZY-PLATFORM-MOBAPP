import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/constant.dart' as Constants;
import 'package:gozy/generated/assets.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/resources/app_layout.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/screens/views/profile/edit_profile/edit_profile_controller.dart';
import 'package:gozy/screens/views/profile/edit_profile/change_email_page.dart';
import 'package:gozy/utils/google_signin_setup.dart';
import 'package:gozy/widgets/bottom_sheet/add_phone_number/add_phone_number_bottom_sheet.dart';
import 'package:gozy/widgets/common/custom_bottomsheet/custom_bottomsheet.dart';
import 'package:gozy/widgets/common/custom_button/bottom_shadow_button.dart';
import 'package:gozy/widgets/common/custom_container/custom_border_container.dart';
import 'package:gozy/widgets/common/custom_painter/custom_tooltip_painter.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/common/custom_textfield/custom_prefix_textfield.dart';
import 'package:gozy/widgets/common/custom_textfield/custom_textfield_area.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/conditional_parent_widget.dart';
import 'package:gozy/widgets/custom_text.dart';
import 'package:gozy/widgets/custom_tool_tip.dart';
import 'package:gozy/widgets/dotted_border/dotted_border.dart';
import 'package:gozy/widgets/theme4/custom_dash_divider.dart';

import '../../../../config/client.dart';
import '../../../../constant.dart';
import '../../../../widgets/custom_container_extensions.dart';
import '../../../../widgets/custom_stateful_widget.dart';
import '../../../../widgets/rect_getter.dart';
import '../../../../widgets/upload_profile/upload_profile.dart';
import '../../base_controller.dart';
import '../document_verification/document_verification.dart';

class EditProfilePage extends CustomStatefulWidget {
  const EditProfilePage({super.key});

  @override
  EditProfilePageState createState() => EditProfilePageState();
}

class EditProfilePageState extends CustomStatefulWidgetState<EditProfilePage> {
  late EditProfileController controller = Get.find();

  int profileTheme = appLayoutMap[AppLayout.profile]?.themeType ?? 1;
  String? _profileBackIcon = appLayoutMap[AppLayout.profile]?.backIcon;
  String? _imageUploadIcon = appLayoutMap[AppLayout.profile]?.imageUploadIcon;
  double? _profileBorderradius = appLayoutMap[AppLayout.profile]?.borderRadius;

  @override
  void initState() {
    GoogleSigninSetup.init();
    debugPrint("userid: ${appPreference.userID}");
    if (Get.arguments != null && Get.arguments['email'] != null && Get.arguments['confirm'] != null) {
      Future.delayed(const Duration(seconds: 1)).then((_) {
        if (Get.arguments['changeEmail'] == '1') {
          controller.confirmEmailChange(
              email: Get.arguments['email'], token: Get.arguments['confirm']);
        } else {
          controller.confirmEmailVerification(
              email: Get.arguments['email'], confirmCode: Get.arguments['confirm']);
        }
      });
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.isLoading.value = true;
      controller.getProfile();
      controller.checkNetwork(controller.getDocumentImages);
    });

    controller.lifecycleListener = controller.registerLifeCycleListener(onResume: () {
      debugPrint("isSocketConnected.value : ${isSocketConnected.value} --- ${Get.currentRoute}");
      controller.getProfile();
    });
    addFocusListener();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    profileTheme = appLayoutMap[AppLayout.profile]?.themeType ?? 1;
    _profileBackIcon = appLayoutMap[AppLayout.profile]?.backIcon;
    _imageUploadIcon = appLayoutMap[AppLayout.profile]?.imageUploadIcon;
    _profileBorderradius = appLayoutMap[AppLayout.profile]?.borderRadius;

    bool isDashDivider = false;
    bool isLastDividerNeed = false;
    bool isFillProfileTitle = false;
    bool isGroupBorder = true;
    bool isPersonalInfoDividerPadded = true;
    bool isPersonalInfoTitlePadNeeded = true;
    Color? personalInfoFillColor;
    int aboutSheetminLines = 7;
    switch (profileTheme) {
      case 1:
        isGroupBorder = false;
        isLastDividerNeed = true;
        isPersonalInfoTitlePadNeeded = false;
        break;
      case 2:
        controller.genderDividerType = 'line';
        break;
      case 3:
        personalInfoFillColor = appColors.myTripsBGColor;
        isFillProfileTitle = true;
        controller.genderDividerType = 'line';
        isPersonalInfoDividerPadded = false;
        break;
      case 4:
        isDashDivider = true;
        aboutSheetminLines = 1;
        controller.genderDividerType = 'dot';
        break;
    }
    return CustomScaffold(
      controller: controller,
      isShowAppBar: false,
      body: _showBodyContent(
          isDashDivider: isDashDivider,
          isPersonalInfoDividerPadded: isPersonalInfoDividerPadded,
          isLastDividerNeed: isLastDividerNeed,
          isPersonalInfoTitlePadNeeded: isPersonalInfoTitlePadNeeded,
          aboutSheetminLines: aboutSheetminLines,
          isGroupBorder: isGroupBorder,
          personalInfoFillColor: personalInfoFillColor,
          isFillProfileTitle: isFillProfileTitle),
    );
  }

  Widget _showBodyContent(
      {required bool isDashDivider,
      required bool isLastDividerNeed,
      required bool isPersonalInfoDividerPadded,
      required bool isPersonalInfoTitlePadNeeded,
      int? aboutSheetminLines,
      bool isFillProfileTitle = false,
      bool isGroupBorder = true,
      Color? personalInfoFillColor}) {
    List<Widget> listOfWidgets = [];
    listOfWidgets.add(getTitleAndUserProfile(isFillProfileTitle: isFillProfileTitle));
    listOfWidgets.add(_getNameView());
    listOfWidgets.add(_getAboutPlaceInfo(aboutSheetminLines: aboutSheetminLines));
    listOfWidgets.add(isDashDivider ? fullWidthDashDivider() : filterDivider);
    listOfWidgets.add(_getPersonalInfoView(
        isDashDivider: isDashDivider,
        isPersonalInfoDividerPadded: isPersonalInfoDividerPadded,
        isPersonalInfoTitlePadNeeded: isPersonalInfoTitlePadNeeded,
        isGroupBorder: isGroupBorder,
        fillColor: personalInfoFillColor,
        isLastDividerNeed: isLastDividerNeed));
    listOfWidgets.add(_getUserVerifiedInfo(isDashDivider: isDashDivider));
    listOfWidgets.add(bottomViewPadding.toHeight());

    return [
      getBackIconWidget(
          size: AppDimen.backIconSize,
          themeType: profileTheme,
          backIcon: _profileBackIcon,
          margin: pad(w: AppDimen.startMargin, top: 20)),
      listOfWidgets
          .toScroll(shrinkWrap: true)
          .toPad(
            horizontal: AppDimen.startMargin,
            top: 10,
          )
          .toStretch(),
    ].toColumn().toPad();
  }

  Widget getTitleAndUserProfile({bool isFillProfileTitle = false}) {
    return [
      5.toHeight(),
      CustomTitleText(
        text: label_edit_profile.tr,
        size: AppDimen.textSize_22,
        fontWeight: AppFont.semiBold,
      ),
      18.toHeight(),
      ConditionalParentWidget(
          condition: isFillProfileTitle,
          parentBuilder: (child) {
            return CustomBorderContainer(
              color: appColors.myTripsBGColor,
              padding: pad(h: AppDimen.startMargin),
              borderRadius: _profileBorderradius,
              alignment: AlignmentDirectional.center,
              body: child,
            );
          },
          child: UploadProfile(
            uploadIcon: _imageUploadIcon ?? '',
            themeType: profileTheme,
          )),
      18.toHeight(),
    ].toColumn(crossAxisAlignment: CrossAxisAlignment.start);
  }

  Widget _getNameView() {
    return [
      _getFirstNameTextField(),
      18.toHeight(),
      _getLastNameTextField(),
      18.toHeight(),
    ].toColumn();
  }

  Widget _getAboutPlaceInfo({int? aboutSheetminLines}) {
    return Obx(
      () => [
        CustomTitleText(
          text: about.tr,
          size: AppDimen.textSize_18,
        ).toPad(
          bottom: 5,
        ),
        5.toHeight(),
        _getDescriptionText(maxLines: 3),
        if (controller.about.value.isNotEmpty) 12.toHeight(),
        [
          CustomText(
            text: label_edit_about_me.tr,
            color: appColors.secondaryColor,
            size: AppDimen.textSize_16,
            fontWeight: AppFont.regular,
            onTap: () {
              showCustomBottomSheet(
                backButtonWidget: getBackIconWidget(
                  themeType: profileTheme,
                  onTap: () {
                    controller.aboutController.text = appPreference.description ?? '';
                    controller.about.value = appPreference.description ?? '';
                    onBack();
                  },
                ),
                contentWidget: _getAboutBottomSheetView(aboutSheetminLines: aboutSheetminLines),
                title: label_edit_about_me.tr,
                titleFontSize: AppDimen.textSize_20,
              );
            },
          ),
          5.toWidth(),
          _profileBackIcon!.toSVG(isReverseRotation: true, size: 10, colour: appColors.secondaryColor)
        ].toRow(mainAxisAlignment: MainAxisAlignment.start),
        18.toHeight()
      ].toColumn(),
    );
  }

  Widget _getAboutBottomSheetView({int? aboutSheetminLines}) {
    return [
      10.toHeight(),
      Scrollbar(
        child: CustomTextfieldArea(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  color: (controller.editAboutMeFocusNode?.hasFocus ?? false)
                      ? appColors.black
                      : appColors.customBorderColor,
                  width: 0.5),
            ),
          ),
          focusNode: controller.editAboutMeFocusNode,
          minLines:  aboutSheetminLines ?? 7,
          maxLines: 7,
        borderTextfieldPadding: pad(
            w: appLayoutMap[AppLayout.inputType]?.themeType == 4 ? 0 : 18,
            h: 10),
        hintText: label_add_about_hint_text.tr,
          controller: controller.aboutController,
          characterlength: 10000,
        )
    ).toPad(horizontal: AppDimen.startMargin),
      Spacer(),
      _bottomButtonWidget(),
    ].toColumn();
  }

  Widget _bottomButtonWidget() {
    return BottomShadowButton(
      buttonPadding: pad(a: 20),
      buttonText: label_update.tr,
      borderRadiusGeometry: BorderRadiusDirectional.only(
          topStart: Radius.circular(Constants.overALLAppLayoutModel!.borderRadius),
          topEnd: Radius.circular(Constants.overALLAppLayoutModel!.borderRadius)),
      onTap: () {
        if (controller.aboutController.text.isNotEmpty) {
          controller.updateUserProfile(EditProfileField.info);
          onBack();
        } else {
          controller.showSnackBar(add_about_error_content.tr);
        }
      },
    );
  }

  Widget _getPersonalInfoView(
      {bool isGroupBorder = false,
      Color? fillColor,
      required bool isDashDivider,
      required bool isPersonalInfoDividerPadded,
      required bool isLastDividerNeed,
      required bool isPersonalInfoTitlePadNeeded}) {
    return Obx(() {
      List<Widget> widgetList = [];

      for (var element in controller.personalInfoList) {
        widgetList.add(_getNavigationView(
            title: element["name"],
            link: element["link"],
            onClick: element["name"] == label_login_email.tr
                ? () => Get.to(() => ChangeEmailPage(controller: controller))
                : element["onTap"],
            isDashDivider: isDashDivider,
            isPersonalInfoDividerPadded: isPersonalInfoDividerPadded,
            isLastDividerNeed: controller.personalInfoList.last == element && isLastDividerNeed,
            isLastIndex: controller.personalInfoList.last == element,
            element: element));
      }
      return [
        18.toHeight(),
        _getTitleTextView(title: label_personal_info.tr, fontSize: AppDimen.textSize_18),
        isPersonalInfoTitlePadNeeded ? 12.toHeight() : 0.toHeight(),
        ConditionalParentWidget(
          condition: isGroupBorder,
          parentBuilder: (child) {
            if (isDashDivider) {
              return DottedBorderView(child: child.toPad(horizontal: 18), borderRadius: _profileBorderradius)
                  .toPad(horizontal: 2);
            } else {
              return CustomBorderContainer(
                color: fillColor,
                padding: pad(w: isPersonalInfoDividerPadded ? 18 : 0),
                borderRadius: _profileBorderradius,
                borderColor: appColors.filterDividerColor,
                borderWidth: 1,
                body: child,
              );
            }
          },
          child: widgetList.toColumn(),
        ),
      ].toColumn();
    });
  }

  Widget _getFirstNameTextField() {
    return CustomPrefixTextField(
        title: label_first_name.tr,
        controller: controller.firstNameController,
        textInputAction: TextInputAction.done,
        prefixIcon: isShowTextFieldIcon ? Assets.drawableGuestProfile : null,
        focusNode: controller.firstNameFocusNode,
        characterlength: 25,
        textSize: AppDimen.textSize_14,
        keyboardType: TextInputType.text,
        onSubmitted: (value) {
          if (controller.firstNameController.text.trim().isEmpty) {
            controller.showToast(edit_name_error.tr);
          } else {
            controller.updateUserProfile(EditProfileField.firstName);
          }
          controller.lastNameFocusNode.nextFocus();
        });
  }

  Widget _getLastNameTextField() {
    return CustomPrefixTextField(
        title: label_last_name.tr,
        textSize: AppDimen.textSize_14,
        controller: controller.lastNameController,
        textInputAction: TextInputAction.done,
        prefixIcon: isShowTextFieldIcon ? Assets.drawableGuestProfile : null,
        focusNode: controller.lastNameFocusNode,
        characterlength: 25,
        onSubmitted: (value) {
          if (controller.lastNameController.text.trim().isEmpty) {
            controller.showToast(edit_name_error.tr);
          } else {
            controller.updateUserProfile(EditProfileField.lastName);
          }
        });
  }

  Widget _getDescriptionText({int? maxLines}) {
    return Obx(
      () => CustomText(
        text: controller.about.value.trim(),
        fontWeight: FontWeight.normal,
        maxLines: maxLines,
        size: AppDimen.textSize_14,
        maxWidth: deviceWidth - (2 * AppDimen.startMargin),
        color: appColors.customTextColor,
        overflow: maxLines != null ? TextOverflow.ellipsis : TextOverflow.visible,
      ),
    );
  }

  Widget _getTitleTextView({required String title, double? fontSize}) {
    return CustomTitleText(
      text: title.toUpperLowerCase(),
      size: fontSize ?? AppDimen.textSize_14,
    );
  }

  Widget _getNavigationView(
      {required String title,
      required dynamic link,
      required VoidCallback onClick,
      bool isLastIndex = false,
      dynamic element,
      required bool isDashDivider,
      required bool isLastDividerNeed,
      required bool isPersonalInfoDividerPadded}) {
    return toOnTap(
      onTap: onClick,
      child: [
        15.toHeight(),
        [
          CustomText(
            text: title,
            size: AppDimen.textSize_16,
            fontWeight: AppFont.regular,
            color: appColors.customTextColor,
          ),
          15.toWidth(),
          link.trim().isNotEmpty
              ? CustomText(
                      onTap: onClick,
                      text: link,
                      color: appColors.secondaryColor,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      size: AppDimen.textSize_16,
                      fontWeight: FontWeight.normal)
                  .toStretch(isExpanded: false)
              : [
                  CustomText(
                    text:
                        element == controller.personalInfoList[0] || element == controller.personalInfoList[1]
                            ? label_set.tr
                            : label_add.tr,
                    color: appColors.secondaryColor,
                    size: AppDimen.textSize_16,
                  ),
                  if (element != controller.personalInfoList[0] && element != controller.personalInfoList[1])
                    _profileBackIcon!
                        .toSVG(
                            colour: appColors.secondaryColor,
                            size: 12,
                            onTap: onClick,
                            isReverseRotation: true)
                        .toPad(end: 10, start: 5)
                ].toRow()
        ]
            .toRow(mainAxisAlignment: MainAxisAlignment.spaceBetween)
            .toPad(horizontal: isPersonalInfoDividerPadded ? 0 : 18),
        15.toHeight(),
        if (!isLastIndex || isLastDividerNeed)
          if (isDashDivider) fullWidthDashDivider() else filterDivider
      ].toColumn(),
    );
  }

  Widget _getUserVerifiedInfo({required bool isDashDivider}) {
    return Obx(
      () => [
        18.toHeight(),
        _getTitleTextView(
            title: '${label_verified.tr} ${label_info.tr.toLowerCase()}', fontSize: AppDimen.textSize_18),
        12.toHeight(),
        UserVerifiedInfo(
            headingFontWeight: AppFont.regular,
            isVerified: EditProfileController.isEmailVerified.value == VerifyStatusForEmail.Verified,
            communicationIcon: Assets.drawableProfileEmailVerified,
            borderRadius: _profileBorderradius,
            communicationType: label_login_email.tr,
            tooltipWidget: _getToolTipWidget(
                EditProfileController.isEmailVerified.value == VerifyStatusForEmail.Verified
                    ? label_your_email_verified.tr
                    : label_please_verify_your_email.tr,
                RectGetter.createGlobalKey()),
            isEdited: true,
            isDashDivider: isDashDivider,
            suffixIcon: _profileBackIcon,
            verificationText:
                VerifyStatusForEmail.getMultiString(EditProfileController.isEmailVerified.value),
            verifyCallback: () {
              if (EditProfileController.isEmailVerified.value == VerifyStatusForEmail.Verify) {
                controller.sendEmailVerification();
              }
            }).toPad(end: 1),
        UserVerifiedInfo(
            headingFontWeight: AppFont.regular,
            isVerified: controller.isGoogleVerified.value == VerifyStatusForSocialLogin.Disconnect,
            communicationIcon: Assets.drawableProfileGmailVerified,
            communicationType: "Google",
            borderRadius: _profileBorderradius,
            tooltipWidget: _getToolTipWidget(google_verify_info_content.tr, RectGetter.createGlobalKey()),
            isEdited: true,
            isDashDivider: isDashDivider,
            suffixIcon: _profileBackIcon,
            verificationText: VerifyStatusForSocialLogin.getMultiString(controller.isGoogleVerified.value),
            verifyCallback: () async {
              if (controller.isGoogleVerified.value == VerifyStatusForSocialLogin.Connect) {
                final account = await GoogleSigninSetup.signin();
                if (account != null) {
                  controller.checkNetwork(() {
                    controller.socialLoginVerifyForGoogle(actionType: VerifyStatusForSocialLogin.Connect);
                  });
                }
              } else {
                controller.socialLoginVerifyForGoogle(actionType: VerifyStatusForSocialLogin.Disconnect);
              }
            }).toPad(top: 15, end: 1),
        UserVerifiedInfo(
            headingFontWeight: AppFont.regular,
            isVerified: controller.isPhoneNumberVerified.value == VerifyStatusForEmail.Verified,
            communicationIcon: Assets.drawableProfilePhoneVerified,
            communicationType: label_phone_number.tr,
            borderRadius: _profileBorderradius,
            suffixIcon: _profileBackIcon,
            verificationText: VerifyStatusForEmail.getMultiString(controller.isPhoneNumberVerified.value),
            tooltipWidget: _getToolTipWidget(phone_verify_info_content.tr, RectGetter.createGlobalKey()),
            isEdited: true,
            isDashDivider: isDashDivider,
            verifyCallback: () {
              if (controller.isPhoneNumberVerified.value == VerifyStatusForEmail.Verify) {
                AddPhoneNumberBottomSheet();
              }
            }).toPad(top: 15, end: 1),
        UserVerifiedInfo(
            headingFontWeight: AppFont.regular,
            isVerified: controller.isDocumentVerified.value == VerifyStatusForEmail.Verified,
            communicationIcon: Assets.drawableDocumentVerify,
            communicationType: label_document_verification.tr,
            borderRadius: _profileBorderradius,
            verificationText: VerifyStatusForEmail.getMultiString(controller.isDocumentVerified.value),
            tooltipWidget: _getToolTipWidget(document_verify_info_content.tr, RectGetter.createGlobalKey()),
            isEdited: true,
            isDashDivider: isDashDivider,
            suffixIcon: _profileBackIcon,
            verifyCallback: () {
              if (controller.isDocumentVerified.value == VerifyStatusForEmail.Verify) {
                UploadDocumentsBottomSheet();
              }
            }).toPad(top: 15, end: 1),
      ].toColumn(),
    );
  }

  dynamic _getToolTipWidget(content, globalKey) {
    debugPrint("_getToolTipWidget: $content");
    CustomTooltipPainter customShapePointer = CustomTooltipPainter(
        isItemSelected: true,
        borderRadius: 6,
        fontSize: AppDimen.textSize_14,
        isDisableStroke: true,
        contentBGColor: appColors.black,
        padding: appLayoutMap[AppLayout.profile]?.themeType == 3
            ? EdgeInsets.only(left: 18,right: 18,bottom: 7,top: 5)
            : null,
        textColor: appColors.white,
        content: content);
    return getToolTipWidget(
      customShapePointer: customShapePointer,
      controller: controller,
      globalKey: globalKey,
      pagetype: 'profile',
      overlayWidget: Assets.drawableInfoToolTip.toSVG(size: 14, fit: BoxFit.scaleDown),
    );
  }

  void addFocusListener() {
    controller.firstNameFocusNode.addListener(() {
      if (!controller.firstNameFocusNode.hasFocus) {
        controller.updateUserProfile(EditProfileField.firstName);
      }
    });

    controller.lastNameFocusNode.addListener(() {
      if (!controller.lastNameFocusNode.hasFocus) {
        controller.updateUserProfile(EditProfileField.lastName);
      }
    });
  }

  @override
  void dispose() {
    if (cameraController != null) {
      cameraController?.dispose();
      cameraController = null;
    }
    isTerminateMessage.value = false;
    controller.lifecycleListener?.dispose();
    super.dispose();
  }
}
