import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/screens/views/profile/payout_preference/payout_preference_controller.dart';
import 'package:gozy/screens/views/profile/payout_preference/payout_preference_navigator.dart';
import 'package:gozy/widgets/common/custom_container/custom_border_container.dart';
import 'package:gozy/widgets/common/custom_painter/custom_tooltip_painter.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/custom_text.dart';

import '../../../../constant.dart';
import '../../../../graphql/Payout/__generated__/payout.data.gql.dart';
import '../../../../resources/app_colors.dart';
import '../../../../resources/app_dimen.dart';
import '../../../../resources/app_lang.dart';
import '../../../../resources/app_layout.dart';

import '../../../../widgets/custom_stateful_widget.dart';
import '../../../../widgets/custom_tool_tip.dart';
import '../../../../widgets/paypal_payment_selection_card.dart';
import '../../../../widgets/rect_getter.dart';

class PayoutPreference extends CustomStatefulWidget {
  const PayoutPreference({super.key});

  @override
  PayoutPreferenceState createState() => PayoutPreferenceState();
}

class PayoutPreferenceState extends CustomStatefulWidgetState<PayoutPreference>
    with TickerProviderStateMixin {
  PayoutPreferenceController controller = Get.find();

  static AppLayoutModel? profile = appLayoutMap[AppLayout.profile];
  Color? fillColor;
  Color? iconColor;
  Color? borderColor;
  bool? showContainer;
  bool? showFloatingAddButton;
  bool isThemeFour = false;
  bool isArrowNeeded = false;
  double? floatingButtonRadius;
  double? containerBorderRadius;
  Color? containerColor;
  Color? primacyButtonColor;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      isShowLoader = true;
      controller.isLoading.value = true;
      controller.checkNetwork(() async {
        controller.getPayouts();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    containerColor = appColors.white;
    if (appLayoutMap[AppLayout.buttonType]?.themeType == 1) {
      isArrowNeeded = true;
    }
    switch (profile?.themeType) {
      case 1:
        fillColor = appColors.white;
        primacyButtonColor = appColors.black;
        borderColor = appColors.myTripsDividerColor;
        containerColor = appColors.cardTheme1Color;
        containerBorderRadius = 8;
        showContainer = true;
        break;
      case 2:
        borderColor = appColors.colorCommonLinkColor;
        containerBorderRadius = 0;
        fillColor = appColors.colorCommonLinkColor.withValues(alpha: 0.1);
        primacyButtonColor = appColors.black;
        break;
      case 3:
        fillColor = appColors.black;
        showFloatingAddButton = true;
        containerBorderRadius = 30;
        floatingButtonRadius = 100;
        primacyButtonColor = appColors.black;
        break;
      default:
        fillColor = appColors.secondaryColor;
        showFloatingAddButton = true;
        iconColor = AppColors.staticwhite;
        floatingButtonRadius = 12;
        isThemeFour = true;
        containerBorderRadius = 16;
        showContainer = true;
        primacyButtonColor = appColors.black;
        break;
    }
    return CustomScaffold(
        controller: controller,
        isShowAppBar: true,
        isDisableLoader: true,
        backgroundColor: appColors.white,
        isShowBGOnLoader: false,
        backIconWidget: getBackIconWidget(
          themeType: overALLThemeType,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: (showFloatingAddButton ?? false)
            ? CustomBorderContainer(
                height: 50,
                width: 50,
                onTap: () {
                  controller.payoutPreferenceNavigator
                      ?.navigateScreen(PayoutPreferenceScreen.payoutCountrySearch);
                },
                color: fillColor,
                borderRadius: floatingButtonRadius,
                borderColor: borderColor,
                padding: pad(a: 15),
                body: Assets.drawableCountIncrement.toSVG(size: 10, colour: iconColor ?? appColors.white),
              )
            : null,
        body: showBodyContent(context));
  }

  Widget showBodyContent(context) {
    return [
      CustomTitleText(text: payout_preferences.tr, size: AppDimen.textSize_24),
      if (!(showFloatingAddButton ?? false)) ...[
        15.toHeight(),
        PaypalPaymentSelectionCard.payoutCustomButton(enums: PayoutButtonType.addPayoutButton, buttonMap: {
          "isEnable": true,
          "onTap": () {
            controller.payoutPreferenceNavigator?.navigateScreen(PayoutPreferenceScreen.payoutCountrySearch);
          },
          "trailingWidget": (showContainer ?? false)
              ? CustomBorderContainer(
                  padding: pad(a: 4),
                  color: appColors.black,
                  body: Assets.drawableCountIncrement.toSVG(size: 13, colour: appColors.white)
              ).toPad(end: 12.0)
              : Assets.drawableCountIncrement.toSVG(colour: appColors.secondaryColor).toPad(end: 12.0),
          "fillColor": fillColor,
          "textColor": appColors.black,
          "bottomPadding": 10.0,
          "borderColor": borderColor,
          "borderRadius": 30.0,
          "isButtonLayout": false
        })
      ],
      Obx(
        () {
          // Ensure verify button text updates when loading state changes.
          controller.isVerifyButtonLoading.value;
          return (!controller.isLoading.value && !controller.isPayoutLoading.value)
            ? (controller.payoutResultMap.value["results"]?.length ?? 0) > 0
                ? toListView(
                    key: PageStorageKey<String>('paypalpreference'),
                    itemCount: controller.payoutResultMap.value["results"]?.length ?? 0,
                    itemBuilder: (context, index) {
                      GgetPayoutsData_getPayouts_results? payoutResult =
                          controller.payoutResultMap.value["results"][index];
                      int paymentId = payoutResult?.paymentMethod?.id ?? 0;
                      return PaypalPaymentSelectionCard(
                        paymentSelectionFrom: PaymentSelectionFrom.payoutPreference,
                        isThemeFour: isThemeFour,
                        themeType: profile?.themeType,
                        paymentIcon: paymentId == 1
                            ? Assets.drawablePaypal
                            : paymentId == 3
                                ? 'res/drawable/pawapay.svg'
                                : Assets.drawableStripe,
                        paymentName: payoutResult?.paymentMethod?.paymentName ?? payoutResult?.paymentMethod?.name ?? '',
                        paymentSubtitle: payoutResult?.paymentMethod?.paymentSubtitle,
                        borderRadius: containerBorderRadius,
                        isPayYouPage: true,
                        fillColor: containerColor,
                        paymentSubHeader: [
                          {
                            "title": label_payout_details.tr,
                            "subTitle": paymentId == 1
                                ? payoutResult?.payEmail ?? ''
                                : '${"*" * 4}${payoutResult?.last4Digits ?? ''}',
                            "toolTip": paymentId == 2 && payoutResult?.isVerified == false
                                ? _getToolTipWidget(label_stripe_info.trParams({"field": label_stripe.tr}),
                                    RectGetter.createGlobalKey())
                                : const SizedBox.shrink(),
                          },
                          {
                            "title": label_payout_status.tr,
                            "subTitle": (payoutResult?.Gdefault == true || payoutResult?.isVerified == true)
                                ? label_payout_ready.tr
                                : label_payout_not_ready.tr,
                          },
                          {
                            "title": label_currency.tr,
                            "subTitle":
                                "[${(payoutResult?.currency?.contains(" ") ?? false) ? payoutResult?.currency?.split(" ")[1] : payoutResult?.currency}]"
                          },
                        ],
                        paymentButton: {
                          PayoutButtonType.defaultButton: {
                            "onTap": () {},
                            "isEnable": payoutResult?.Gdefault == true,
                            "trailingWidget": Assets.drawableViewdetailReportTick.toSVG(
                              size: 8,
                              colour: AppColors.staticwhite
                            ).toCircle(
                              color: appColors.secondaryColor,
                              padding: 5,
                              margin: 4,
                              borderColor: appColors.secondaryColor,
                            ),
                            "fillColor": containerColor,
                            "textColor": appColors.textColor,
                            "borderColor": appColors.myTripsDividerColor,
                            "borderRadius": containerBorderRadius,
                            "isArrowNeeded": false
                          },
                          PayoutButtonType.setDefaultButton: {
                            "onTap": () {
                              controller.checkNetwork(() {
                                controller.setDefaultPayout(
                                    id: payoutResult?.id ?? 0,
                                    payoutButtonType: PayoutButtonType.setDefaultButton);
                              });
                            },
                            "isEnable": payoutResult?.isVerified == true && payoutResult?.Gdefault == false,
                            "fillColor": primacyButtonColor,
                            "borderColor": Colors.transparent,
                            "borderRadius": containerBorderRadius,
                            "isArrowNeeded": isArrowNeeded
                          },
                          PayoutButtonType.verifyButton: {
                            "onTap": () {
                              if (controller.isVerifyButtonLoading.value) return;
                              controller.checkNetwork(() {
                                isShowLoader = false;
                                controller.verifyPayout(payoutResult?.payEmail ?? '');
                              });
                            },
                            "isEnable": payoutResult?.isVerified == false,
                            "buttonText":
                                controller.isVerifyButtonLoading.value ? '' : label_verify.tr,
                            "trailingWidget": Obx(() => controller.isVerifyButtonLoading.value
                                ? SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      valueColor: AlwaysStoppedAnimation<Color>(appColors.white),
                                    ),
                                  ).toPad(end: 8)
                                : const SizedBox.shrink()),
                            "fillColor": primacyButtonColor,
                            "borderColor": Colors.transparent,
                            "borderRadius": containerBorderRadius,
                            "isArrowNeeded": controller.isVerifyButtonLoading.value ? false :isArrowNeeded
                          },
                          PayoutButtonType.removeButton: {
                            "onTap": () {
                              controller.checkNetwork(() {
                                controller.setDefaultPayout(
                                    id: payoutResult?.id ?? 0,
                                    payoutButtonType: PayoutButtonType.removeButton);
                              });
                            },
                            "isEnable": payoutResult?.Gdefault == false,
                            "fillColor": containerColor,
                            "borderColor": primacyButtonColor,
                            "textColor": primacyButtonColor,
                            "borderRadius": containerBorderRadius,
                            "isArrowNeeded": false
                          },
                        },
                      ).toPad(
                          bottom: index == (controller.payoutResultMap.value["results"]?.length ?? 0) - 1
                              ? 27.0
                              : 0.0);
                    }).toStretch()
                : [
                    70.toHeight(),
                    Assets.drawablePayoutEmpty.toSVG().toPad(bottom: AppDimen.startMargin),
                    CustomText(
                      text: label_to_get_paid.tr,
                      size: AppDimen.textSize_20,
                      fontWeight: AppFont.semiBold,
                      textAlign: TextAlign.center,
                    ).toPad(bottom: 12),
                    CustomText(
                      text: label_payout_empty_content.trParams({'field': APP_NAME}),
                      size: AppDimen.textSize_14,
                      fontWeight: AppFont.regular,
                      textAlign: TextAlign.center,
                    ),
                  ]
                    .toColumn(
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ).toStretch()
            : showCenterLoading(
                controller: controller,
                loader: LottieLoaders.three_dots_loader,
                isShowBGOnLoader: false,
              ).toStretch();
        },
      ),
    ].toColumn().toResizeWidget(isDeviceFit: true).toPad(horizontal: AppDimen.startMargin);
  }

  @override
  void dispose() {
    controller.selectedpaymentType.value = 0;
    super.dispose();
  }

  Widget _getToolTipWidget(content, globalKey) {
    CustomTooltipPainter customShapePointer = CustomTooltipPainter(
        isItemSelected: true,
        contentBGColor: appColors.black,
        textColor: appColors.white,
        content: content);
    return getToolTipWidget(
      customShapePointer: customShapePointer,
      controller: controller,
      pagetype: 'payout',
      globalKey: globalKey,
      overlayWidget: Assets.drawableDrawableInfoTooltip.toSVG(size: 10, fit: BoxFit.scaleDown),
    );
  }
}
