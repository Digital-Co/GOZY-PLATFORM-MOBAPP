import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gozy/widgets/common/custom_container/custom_border_container.dart';
import 'package:gozy/widgets/dotted_border/dotted_border.dart';
import 'package:gozy/widgets/theme4/custom_dash_divider.dart';

import '../constant.dart';
import '../generated/assets.dart';
import '../resources/app_dimen.dart';
import '../resources/app_font.dart';
import '../resources/app_lang.dart';
import '../screens/views/base_controller.dart';
import 'common_extension_functions.dart';
import 'common/custom_button/custom_button.dart';
import 'custom_text.dart';

enum PaymentSelectionFrom { payoutPreference, payoutPaymentChoose }

enum PayoutButtonType {
  addPayoutButton(add_payout_method),
  verifyButton(label_verify),
  removeButton(label_remove),
  defaultButton(label_default),
  selectButton(label_payout_payment_select),
  setDefaultButton(label_set_default);

  final String buttonText;

  const PayoutButtonType(this.buttonText);
}

class PaypalPaymentSelectionCard extends StatelessWidget {
  final String paymentIcon;
  final String paymentName;
  final String? paymentSubtitle;
  final double? borderRadius;
  final Color? fillColor;
  final bool? isPayYouPage;
  final bool? isThemeFour;
  final int? themeType;
  final List<Map> paymentSubHeader;
  final Map<PayoutButtonType, Map> paymentButton;
  final PaymentSelectionFrom paymentSelectionFrom;

  const PaypalPaymentSelectionCard(
      {super.key,
      required this.paymentIcon,
      required this.paymentName,
      this.paymentSubtitle,
      required this.paymentSubHeader,
      required this.paymentSelectionFrom,
      required this.paymentButton,
      this.borderRadius,
      this.fillColor,
      this.isPayYouPage,
      this.themeType,
      this.isThemeFour = false});

  @override
  Widget build(BuildContext context) {
    return payoutCard();
  }

  Widget payoutCard() {
    return isThemeFour!
        ? DottedBorderView(
                child: [
            10.toHeight(),
            [
              [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(themeType == 3 ? 30 : 0),
                  child: SvgPicture.asset(
                    paymentIcon,
                    width: 25,
                    height: 25,
                  ).toResizeWidget(all: 27),
                ),
                12.toWidth(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText(
                        text: paymentName,
                        fontWeight: AppFont.semiBold,
                        size: AppDimen.textSize_14,
                        color: appColors.customTextColor),
                    if (paymentSubtitle?.trim().isNotEmpty == true)
                      CustomText(
                        text: paymentSubtitle!,
                        size: AppDimen.textSize_12,
                        color: appColors.customTextColor.withValues(alpha: 0.72),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ].toRow().toPad(horizontal: (isPayYouPage ?? false) ? 13 : 0),
              if (paymentSelectionFrom ==
                  PaymentSelectionFrom.payoutPaymentChoose)
                [
                  CustomText(
                    text: label_payout_payment_select.tr,
                    color: appColors.secondaryColor,
                    fontWeight: AppFont.regular,
                    size: AppDimen.textSize_14,
                  ),
                  13.toWidth(),
                  Assets.drawableFilterCalendarArrow.toSVG(
                    colour: appColors.secondaryColor,
                    width: 6,
                    height: 10,
                  ),
                ].toRow(),
            ].toRow(mainAxisAlignment: MainAxisAlignment.spaceBetween),
            10.toHeight(),
            CustomDashDivider(
              height: 2,
              width: deviceWidth,
              dashWidth: 4,
              color: appColors.filterDividerColor,
              isCircle: false,
              dashHeight: 1,
            ),
            ..._subHeaderText(),
            14.toHeight(),
            ..._paymentButton(),
          ]
                    .toColumn(mainAxisSize: MainAxisSize.min)
                    .toPad(horizontal: (isPayYouPage ?? false) ? 0 : 13))
            .toPad(top: AppDimen.startMargin)
        : CustomBorderContainer(
            margin: pad(top: AppDimen.startMargin),
            borderColor: appColors.customBorderColor,
            borderRadius: borderRadius ?? AppDimen.appBorderRadius,
            borderWidth: 0.6,
            color: fillColor,
            body: [
              10.toHeight(),
              [
                [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(themeType == 3 ? 30 : 0),
                    child: SvgPicture.asset(
                      paymentIcon,
                      width: 25,
                      height: 25,
                    ).toResizeWidget(all: 27),
                  ),
                  10.toWidth(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomText(
                          text: paymentName,
                          fontWeight: AppFont.semiBold,
                          size: AppDimen.textSize_14,
                          color: appColors.customTextColor),
                      if (paymentSubtitle?.trim().isNotEmpty == true)
                        CustomText(
                          text: paymentSubtitle!,
                          size: AppDimen.textSize_12,
                          color: appColors.customTextColor.withValues(alpha: 0.72),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                    ],
                  ),
                ].toRow().toPad(horizontal: (isPayYouPage ?? false) ? 13 : 0),
                if (paymentSelectionFrom ==
                    PaymentSelectionFrom.payoutPaymentChoose)
                  [
                    CustomText(
                      text: label_payout_payment_select.tr,
                      color: appColors.secondaryColor,
                      fontWeight: AppFont.regular,
                      size: AppDimen.textSize_14,
                    ),
                    13.toWidth(),
                    Assets.drawableFilterCalendarArrow.toSVG(
                      colour: appColors.secondaryColor,
                      width: 6,
                      height: 10,
                    ),
                  ].toRow(),
              ].toRow(mainAxisAlignment: MainAxisAlignment.spaceBetween),
              10.toHeight(),
              filterDivider,
              ..._subHeaderText(),
              14.toHeight(),
              ..._paymentButton(),
            ]
                .toColumn(mainAxisSize: MainAxisSize.min)
                .toPad(horizontal: (isPayYouPage ?? false) ? 0 : 13));
  }

  List<Widget> _subHeaderText() {
    List<Widget> children = [];
    for (var element in paymentSubHeader) {
      (element['toolTip'] != null)
          ? children.add([
              Flexible(child: subHeaderText('${element['title']}: ${element['subTitle']}')),
              element['toolTip'] as Widget,
            ]
              .toRow(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center)
              .toPad(top: 14, horizontal: (isPayYouPage ?? false) ? 13 : 0))
          : children.add(
              subHeaderText('${element['title']}: ${element['subTitle']}')
                  .toPad(
                      top: 14, horizontal: (isPayYouPage ?? false) ? 13 : 0));
    }
    return children;
  }

  List<Widget> _paymentButton() {
    List<Widget> children = [];
    paymentButton.forEach((enums, buttonMap) {
      children.add(payoutCustomButton(
        enums: enums,
        buttonMap: buttonMap,
      ).toPad(horizontal: 13));
    });
    return children;
  }

  Widget subHeaderText(String text) {
    return CustomText(
      text: text,
      color: appColors.customTextColor,
      fontWeight: AppFont.regular,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      size: AppDimen.textSize_14,
    );
  }

  static Widget payoutCustomButton(
      {required PayoutButtonType enums, required Map buttonMap}) {
    return buttonMap["isEnable"]
        ? CancelButton(
            verticalPadding: 12,
            buttonText: buttonMap["buttonText"] ?? enums.buttonText.tr,
            isArrowNeeded: buttonMap["isArrowNeeded"] ?? true,
            trailingWidget: buttonMap["trailingWidget"],
            onTap: buttonMap["onTap"],
            textColor: buttonMap["textColor"] ?? appColors.white,
            fillcolor: buttonMap["fillColor"] ?? appColors.secondaryColor,
            textSize: AppDimen.textSize_18,
            borderColor: buttonMap["borderColor"],
            isExpand: true,
            borderRadius: buttonMap['borderRadius'],
            isButtonLayout: buttonMap['isButtonLayout'] ?? true,
          ).toPad(bottom: buttonMap["bottomPadding"] ?? 14)
        : const SizedBox.shrink();
  }
}
