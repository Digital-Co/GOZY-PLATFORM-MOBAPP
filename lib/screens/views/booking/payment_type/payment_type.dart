import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/graphql/Payout/__generated__/payout.data.gql.dart';
import 'package:gozy/graphql/booking/getBillingCalculation/__generated__/get_billing_calculation.data.gql.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/booking/booking_navigator.dart';
import 'package:gozy/screens/views/booking/payment_type/payment_type_controller.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/widgets/bottom_sheet/bottom_sheet_refresh_controller.dart';
import 'package:gozy/widgets/cancellation_policy_view.dart';
import 'package:gozy/widgets/common/custom_bottomsheet/custom_bottomsheet.dart';
import 'package:gozy/widgets/common/custom_bottomsheet/custom_getx_bottomsheet.dart';
import 'package:gozy/widgets/common/custom_button/bottom_shadow_button.dart';
import 'package:gozy/widgets/common/custom_container/custom_border_container.dart';
import 'package:gozy/widgets/common/custom_painter/custom_tooltip_painter.dart';
import 'package:gozy/widgets/common/custom_text/custom_price_breakdown_text.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/common/custom_button/custom_button.dart';
import 'package:gozy/widgets/common/custom_container/custom_container.dart';

import 'package:gozy/widgets/custom_stateful_widget.dart';
import 'package:gozy/widgets/custom_text.dart';
import 'package:gozy/widgets/custom_tool_tip.dart';
import 'package:gozy/widgets/payment_type_selection_view.dart';
import 'package:gozy/widgets/owner/step_item_model.dart';
import 'package:gozy/widgets/rect_getter.dart';

import '../../../../resources/app_dimen.dart';
import '../../../../widgets/common/custom_bottomsheet/custom_draggable_bottomsheet.dart';

class PaymentTypePage extends CustomStatefulWidget {
  const PaymentTypePage({super.key});

  @override
  PaymentTypePageState createState() => PaymentTypePageState();
}

class PaymentTypePageState extends CustomStatefulWidgetState<PaymentTypePage> with TickerProviderStateMixin {
  PaymentTypeController controller = Get.find();

  bool? showBillingBorder;
  bool? showBillingColor;
  bool? isPaddedContent;
  double? billingBorderRadius;
  bool isBorderNeeded = true;
  bool isFromBooking = false;
  Color? paymentsContainerColor;
  Color? currencyContainerColor;
  bool? currencyContainerBorderNeeded;
  bool isButtonClicked = false;

  @override
  void initState() {
    if (Get.currentRoute == '/PaymentTypePage') {
      _intiThemeData();
      controller.selectedpaymentCurrency = null;
      controller.rxSelectedPaymentType.value = 0;
      if (Get.arguments != null) {
        if (Get.arguments.containsKey("")) {}
        if (Get.arguments.containsKey("isFrom") && Get.arguments["isFrom"] == "servicePlan") {
          isPaymentFrom = Get.arguments["isFrom"];
          servicePlanList = Get.arguments["itemInfo"];
          controller.userType = Get.arguments["userType"];
          isFromBooking = false;
        } else {
          isFromBooking = true;
          isPaymentFrom = "";
          controller.itemInfo = Get.arguments['itemInfo'];
          controller.billingCalcuationData.value = Get.arguments['billingCalcuationData'];
          controller.message = Get.arguments['message'];
          controller.isDeliveryCheck = Get.arguments['isDeliveryCheck'] ?? false;
          controller.startTime = Get.arguments['startTime'];
          controller.endTime = Get.arguments['endTime'];
          controller.licenceNumber = Get.arguments['licenceNumber'];
          controller.firstName = Get.arguments['firstName'];
          controller.lastName = Get.arguments['lastName'];
          controller.dateOfBirth = Get.arguments['dateOfBirth'];
          controller.country = Get.arguments['country'];
          controller.couponCode = Get.arguments['couponCode'] ?? "";
          controller.isPromoApplied = Get.arguments['isPromoApplied'] ?? false;
        }
      }
      controller.checkNetwork(controller.getpaymentTypes);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      appThemeChanged.value;
      _intiThemeData();
      return CustomScaffold(
        controller: controller,
        isShowAppBar: true,
        isShowBGOnLoader: false,
        loader: LottieLoaders.three_dots_loader,
        resizeToAvoidBottomInset: true,
        customAppBarFunction: () {
          if (!controller.isPaymentPending) Get.back();
        },
        backIconWidget: getBackIconWidget(
            themeType: overALLThemeType,
            onTap: () {
              if (!controller.isPaymentPending) Get.back();
            }),
        body: ShowContentWidget(),
      );
    });
  }

  Widget ShowContentWidget() {
    return [
      _showTitleWidget(),
      18.toHeight(),
      GetBuilder(
          id: controller.rxSelectedPaymentType.id,
          init: controller,
          builder: (context) {
            return controller.rxSelectedPaymentType.value != 0
                ? [
                    isBorderNeeded
                        ? CustomBorderContainer(
                            color: paymentsContainerColor,
                            borderRadius: isBorderNeeded ? billingBorderRadius : null,
                            borderColor: appColors.myTripsDividerColor,
                            body: _paymentListWidget(),
                          ).toPad(horizontal: AppDimen.startMargin)
                        : CustomContainer(
                            color: paymentsContainerColor,
                            body: _paymentListWidget(),
                          ).toPad(horizontal: AppDimen.startMargin),
                    20.toHeight(),
                    if (isPaymentFrom == "servicePlan") ...[
                      filterDivider.toPad(horizontal: !isBorderNeeded ? 0 : AppDimen.startMargin),
                      [
                        CustomText(
                          text: label_doesnt_auto_renew_content.tr,
                          size: AppDimen.textSize_18,
                          fontWeight: AppFont.semiBold,
                        ),
                        5.toHeight(),
                        CustomText(
                          text: label_service_plan_description.tr,
                          size: AppDimen.textSize_14,
                          fontWeight: AppFont.regular,
                        ),
                      ].toColumn().toPad(horizontal: AppDimen.startMargin, top: 10),
                    ] else ...[
                      !isBorderNeeded
                          ? filterDivider.toPad(horizontal: !isBorderNeeded ? 0 : AppDimen.startMargin)
                          : 0.toHeight(),
                      if(overALLThemeType==1||overALLThemeType==2||overALLThemeType==3)...[
                        filterDivider.toPad(horizontal:AppDimen.startMargin),
                      ],
                      18.toHeight(),
                      _showReservationCharges().toPad(horizontal: AppDimen.startMargin),
                      5.toHeight(),
                      filterDivider.toPad(horizontal: !isBorderNeeded ? 0 : AppDimen.startMargin),
                      20.toHeight(),
                      _buildCancellationPolicyInfo().toPad(horizontal: AppDimen.startMargin),
                      20.toHeight(),
                    ]
                  ].toColumn().toScroll()
                : controller.paymentlist != null
                    ? CustomTitleText(text: paymentUnavailableMessage)
                    : const SizedBox.shrink();
          }).toStretch(),
      _showBottomAddPaymentWidget()
    ].toColumn(mainAxisSize: MainAxisSize.min);
  }

  Widget _showReservationCharges() {
    GgetBillingCalculationData_getBillingCalculation_result? billingdata =
        controller.billingCalcuationData.value?.getBillingCalculation?.result;
    double fontsize = (maxwidthamountWidget /
        ((billingdata?.priceForDays.toNumberFormat(symbol: controller.getCurrencySymbol()))
            .toString()
            .length) *
        1.7);
    fontsize = fontsize > AppDimen.textSize_16 ? AppDimen.textSize_16 : fontsize;
    return [
      CustomTitleText(
        text: label_reservation_charges.tr,
        size: AppDimen.textSize_16,
      ),
      10.toHeight(),
      _priceDetailWidget(receiptItem: billingdata),
    ].toColumn();
  }

  Widget _paymentListWidget() {
    return [
      for (var i = 0; i < (controller.paymentlist?.length ?? 0); i++) ...[
        i == 0 ? 15.toHeight() : 0.toHeight(),
        controller.paymentlist?[i]?.isEnable ?? true
            ? toOnTap(
                    onTap: () {
                      controller.rxSelectedPaymentType.value = controller.paymentlist?[i]?.paymentType ?? 1;
                      controller.change(
                          rxVariable: controller.rxSelectedPaymentType,
                          value: controller.paymentlist?[i]?.paymentType ?? 1);
                    },
                    child: PaymentTypeSelectionView(
                        paymentTypeIcon:
                            (controller.paymentlist?[i]?.name ?? '').toLowerCase() == 'bank account'
                                ? Assets.drawableStripe
                                : Assets.drawablePaypal,
                        paymentTypeTitle:
                            '${(controller.paymentlist?[i]?.name ?? '').toLowerCase() == 'bank account' ? label_card_card_by_stripe.tr : controller.paymentlist?[i]?.name}',
                        ispaymentTypeSelected: (controller.rxSelectedPaymentType.value ==
                            controller.paymentlist?[i]?.paymentType)))
                .toPad(start: 15)
            : const SizedBox.shrink(),
        15.toHeight(),
        if ((controller.paymentlist?[i]?.isEnable ?? true) &&
            (controller.paymentlist?[i]?.name.toString().toLowerCase() == label_paypal.toLowerCase() &&
                controller.rxSelectedPaymentType.value == controller.paymentlist?[i]?.paymentType)) ...[
          CancelButton(
              borderColor: overALLThemeType == 2 ? Colors.transparent : null,
              isExpand: false,
              buttonText: controller.selectedpaymentCurrency ?? appPreference.preferredCurrency,
              borderRadius: overALLThemeType == 4
                  ? 19
                  : overALLAppLayoutModel?.borderRadius,
              fillcolor: currencyContainerColor,
              horizontalPadding: 10,
              textColor: appColors.black,
              textSize: AppDimen.textSize_14,
              symbol: controller.selectedpaymentCurrency != null
                  ? controller.selectedpaymentCurrency!.split(' ')[0]
                  : appPreference.preferredCurrency!.split(' ')[0],
              height: controller.rxSelectedPaymentType.value ==
                      controller.paymentlist?[i]?.paymentType
                  ? 40
                  : 0,
              dotWidget: Assets.drawableFilterCalendarArrow
                  .toSVG(quarterTurns: 3, colour: appColors.black, size: 12)
                  .toPad(top: 0, start: 10),
              color: currencyContainerBorderNeeded!
                  ? appColors.myTripsDividerColor
                  : null,
              onTap: () {
                print("currency :::${appPreference.preferredCurrency}");
                GetXBottomSheet(
                  bottomSheetWidget: getDraggableSheetWidget(
                      controller: controller,
                      listItems: (controller.listOfCurrencies ?? [])
                          .map((e) => StepItemModel(itemName: e, itemValue: e))
                          .toList(),
                      borderRadius: overALLAppLayoutModel?.borderRadius,
                      themeType: overALLThemeType,
                      selectedValue: controller.selectedpaymentCurrency ?? appPreference.preferredCurrency,
                      isShowCircleTick: true,
                      title: label_choose_currency.tr,
                      isMaterialLocalization: true,
                      fontFamily: 'Roboto',
                      onItemSelected: (value) {
                        controller.selectedpaymentCurrency = value.itemValue;
                        controller.change(
                            rxVariable: controller.rxSelectedPaymentType,
                            value: controller.rxSelectedPaymentType.value);
                      }),
                );
              }).toPad(bottom: 15, start: 15),
        ],
        if (i < (controller.paymentlist?.length ?? 1) - 1) ...[
          filterDivider,
          15.toHeight(),
        ]
      ],
    ].toColumn();
  }

  Widget _priceDetailWidget({GgetBillingCalculationData_getBillingCalculation_result? receiptItem}) {
    return [
      10.toHeight(),
      (showBillingBorder ?? false)
          ? CustomBorderContainer(
              padding: pad(a: ((showBillingColor ?? false)) ? 12 : 0),
              borderColor: overALLThemeType == 3
                  ? Colors.transparent
                  : appColors.myTripsDividerColor,
              color: (showBillingColor ?? false) ? appColors.viewMessageReceiverBGColor : null,
              borderRadius: billingBorderRadius,
              body: priceBreakDownWidget(receiptItem: receiptItem),
            )
          : CustomContainer(
              color: (showBillingColor ?? false) ? appColors.viewMessageReceiverBGColor : null,
              body: priceBreakDownWidget(receiptItem: receiptItem),
            ),
      if (overALLThemeType != 2) 20.toHeight(),
    ].toColumn();
  }

  Widget priceBreakDownWidget({GgetBillingCalculationData_getBillingCalculation_result? receiptItem}) {
    final double days = (receiptItem?.days ?? 0).toDouble();
    final double basePrice = receiptItem?.basePrice ?? 0.0;
    final double priceForDays = receiptItem?.priceForDays ?? 0.0;
    final double totalForDays = priceForDays > 0 ? priceForDays : (basePrice * days);
    final double perDayPrice = days > 0 ? (totalForDays / days) : basePrice;

    double fontsize = (maxwidthamountWidget /
        ((double.parse(receiptItem!.total.toString()).toNumberFormat(symbol: controller.getCurrencySymbol()))
            .toString()
            .length) *
        1.7);
    fontsize = fontsize > AppDimen.textSize_16 ? AppDimen.textSize_16 : AppDimen.textSize_16;

    return [
      CustomPriceBreakdownText(
              label:
                  '${perDayPrice.currencyConverted(convertedCurrency: receiptItem.currency ?? defaultCurrency).toNumberFormat(symbol: controller.getCurrencySymbol())} X ${receiptItem.days} ${label_day.trPlural(dayPlural.tr, receiptItem.days)}',
              amount: totalForDays.currencyConverted(convertedCurrency: receiptItem.currency ?? defaultCurrency),
              amountFontSize: fontsize,
              isToolTipFirst: true,
              tooltipWidget: (receiptItem.isSpecialPriceAssigned ?? false)
                  ? _getToolTipWidget(content: label_spl_price_tooltip_content.tr, colors: appColors.secondaryColor, globalKey: RectGetter.createGlobalKey())
          : const SizedBox.shrink())
          .toPad(horizontal: (isPaddedContent ?? false) ? 10 : 0),
      ((receiptItem.discount ?? 0.0) > 0.0 &&
              (receiptItem.discountLabel ?? '').trim().isNotEmpty)
          ? CustomPriceBreakdownText(
              isDiscount: true,
              isSelectedSymbolNotNeeded: true,
              label: receiptItem.discountLabel!,
              amount:
                  '${receiptItem.discount?.currencyConverted(convertedCurrency: receiptItem.currency ?? defaultCurrency)}',
              amountFontSize: fontsize,
            ).toPad(horizontal: (isPaddedContent ?? false) ? 10 : 0)
          : const SizedBox.shrink(),
      controller.isPromoApplied
          ? CustomPriceBreakdownText(
              isDiscount: true,
              isSelectedSymbolNotNeeded: true,
              label: controller.couponCode ?? "",
              tooltipWidget: _getToolTipWidget(content: receiptItem.promoCodeDescription??"", colors: appColors.secondaryColor, globalKey: RectGetter.createGlobalKey()),
              isToolTipFirst: true,
              amount:
                  '${receiptItem.promoDiscount?.currencyConverted(convertedCurrency: receiptItem.currency ?? defaultCurrency)}',
              amountFontSize: fontsize,
            ).toPad(horizontal: (isPaddedContent ?? false) ? 10 : 0)
          : const SizedBox.shrink(),
      (controller.isDeliveryCheck)
          ? CustomPriceBreakdownText(
              label: delivery_fee.tr,
              amount:
                  '${receiptItem.delivery?.currencyConverted(convertedCurrency: receiptItem.currency ?? defaultCurrency)}',
              amountFontSize: fontsize,
            ).toPad(horizontal: (isPaddedContent ?? false) ? 10 : 0)
          : const SizedBox.shrink(),
      CustomPriceBreakdownText(
              label: label_service_fee.tr,
              amount:
                  '${(receiptItem.guestServiceFee)?.currencyConverted(convertedCurrency: receiptItem.currency ?? defaultCurrency)}',
              amountFontSize: fontsize,
              isHostServiceFee: appPreference.isOwner!)
          .toPad(horizontal: (isPaddedContent ?? false) ? 10 : 0),
      CustomPriceBreakdownText(
        label: label_security_deposit.tr,
        amount:
            '${receiptItem.securityDeposit?.currencyConverted(convertedCurrency: receiptItem.currency ?? defaultCurrency)}',
        amountFontSize: fontsize,
      ).toPad(horizontal: (isPaddedContent ?? false) ? 10 : 0),
      filterDivider,
      CustomPriceBreakdownText(
        label: label_total.tr.toUpperLowerCase(),
        amount:
            '${(!controller.isDeliveryCheck) ? (receiptItem.total ?? 0.0) : (receiptItem.total ?? 0.0).currencyConverted(convertedCurrency: receiptItem.currency ?? defaultCurrency)}',
        isTotal: true,
        amountFontSize: fontsize,
      ).toPad(horizontal: (isPaddedContent ?? false) ? 10 : 0),
    ].toColumn();
  }

  Widget _buildCancellationPolicyInfo() {
    dynamic cancellation = controller.itemInfo?.listingData?.cancellation;
    return [
      CustomTitleText(
        text: label_cancellation_policy.tr,
        size: AppDimen.textSize_16,
      ),
      Spacer(),
      CustomText(
        text: cancellation.policyName,
        color: appColors.secondaryColor,
        size: AppDimen.textSize_16,
        fontWeight: FontWeight.w400,
        onTap: () {
          showCustomBottomSheet(
            backButtonWidget: getBackIconWidget(
              backIcon: overALLAppLayoutModel!.backIcon,
            ),
            contentWidget: GetBuilder<BottomSheetController>(
                builder: (newController) =>
                    CancellationPolicyView(cancellation: cancellation, controller: controller)),
            title: label_cancellation_policy.tr,
          );
        },
      ),
      Assets.drawableRightArrow.toSVG(colour: appColors.secondaryColor, size: 10,onTap: (){
        showCustomBottomSheet(
          backButtonWidget: getBackIconWidget(
            backIcon: overALLAppLayoutModel!.backIcon,
          ),
          contentWidget: GetBuilder<BottomSheetController>(
              builder: (newController) =>
                  CancellationPolicyView(cancellation: cancellation, controller: controller)),
          title: label_cancellation_policy.tr,
        );
      }).toPad(start: 5)
    ].toRow();
  }

  Widget _showBottomAddPaymentWidget() {
    return BottomShadowButton(
        buttonPadding: pad(a: 20),
        borderRadiusGeometry:
            BorderRadiusDirectional.only(topStart: Radius.circular(20), topEnd: Radius.circular(20)),
        buttonText: btn_label_proceed_to_pay.tr,
        onTap: () {
          debugPrint("isButtonClicked: ${isButtonClicked} -- ${controller.isLoading.value}");
          if (controller.paymentlist?.isEmpty ?? true) {
            controller.showSnackBar(paymentUnavailableMessage);
            return;
          }
          if (isButtonClicked || controller.isLoading.value) return;
          isButtonClicked = true;
          Future.delayed(Duration(seconds: 2)).then((value) => isButtonClicked = false);


          for (GgetPaymentMethodsData_getPaymentMethods_results? payment in controller.paymentlist!) {

            if (payment?.name.toString().toLowerCase() == label_paypal.toLowerCase()) {
              if (controller.rxSelectedPaymentType.value == payment?.paymentType &&
                  controller.selectedpaymentCurrency == null) {
                controller.showSnackBar(
                  error_msg_currency_selection.tr,
                );
                break;
              } else if (controller.rxSelectedPaymentType.value == payment?.paymentType) {
                if (isPaymentFrom == "servicePlan") {
                  controller.isLoading.value = true;
                  controller.checkNetwork(() {
                    controller.createPurchasePlan().then((value) {
                      isButtonClicked = false;
                      controller.isLoading.value = false;
                      if (value.createPurchaseServicePlan?.status == 200) {
                        controller.bookingnavigator.navigateScreen(BookingScreen.PayFromWeb, Get.arguments);
                      } else {
                        controller.showSnackBar(value.createPurchaseServicePlan?.errorMessage);
                      }
                    });
                  });
                } else {
                  controller.isLoading.value = true;
                  controller.checkNetwork(createReservation);
                }
                break;
              }
            } else {
              if (controller.rxSelectedPaymentType.value == payment?.paymentType) {
                if (!isFromBooking) {
                  servicePlanList = Get.arguments["itemInfo"];
                }
                controller.checkNetwork(controller.startCardPaymentSheet);
                break;
              }
            }
          }
        });
  }

  Widget _showTitleWidget() {
    return [
      CustomTitleText(
          text: isPaymentFrom == "servicePlan" ? label_payment.tr : '4. ${label_payment.tr}',
          size: AppDimen.textSize_22,
        fontWeight: AppFont.semiBold,
      ),
      12.toHeight(),
      CustomText(
        text: label_choose_your_preferable_payment_method.tr,
        size: AppDimen.textSize_16,
        fontWeight: AppFont.regular,
      ),
    ].toColumn().toPad(horizontal: AppDimen.startMargin);
  }

  void _intiThemeData() {
    currencyContainerBorderNeeded = false;
    switch (overALLThemeType) {
      case 1:
        showBillingBorder = true;
        showBillingColor = false;
        billingBorderRadius = 6;
        isPaddedContent = true;
        paymentsContainerColor = appColors.myTripsBGColor;
        currencyContainerBorderNeeded = true;
        break;
      case 2:
        showBillingBorder = false;
        showBillingColor = false;
        currencyContainerColor = appColors.myTripsBGColor;
        billingBorderRadius = 0;
        break;
      case 3:
        showBillingBorder = true;
        showBillingColor = true;
        billingBorderRadius = 18;
        paymentsContainerColor = appColors.viewMessageReceiverBGColor;
        break;
      default:
        showBillingBorder = true;
        showBillingColor = false;
        billingBorderRadius = 12;
        isPaddedContent = true;
        isBorderNeeded = false;
        currencyContainerBorderNeeded = true;
        break;
    }
  }

  void createReservation() {
    controller.isLoading.value = true;
    controller.createReservation().then((value) {
      isButtonClicked = false;
      controller.isLoading.value = false;
      if (value.createReservation?.status == 200) {
        controller.bookingnavigator.navigateScreen(BookingScreen.PayFromWeb, Get.arguments);
      } else {
        controller.showSnackBar(value.createReservation?.errorMessage);
      }
    });
  }

  dynamic _getToolTipWidget(
      {required String content, globalKey, required Color colors}) {
    debugPrint("_getToolTipWidget: $content");
    CustomTooltipPainter customShapePointer = CustomTooltipPainter(
        isItemSelected: true,
        borderRadius: 6,
        fontSize: AppDimen.textSize_14,
        isDisableStroke: true,
        contentBGColor: appColors.black,
        padding: overALLThemeType == 3
            ? EdgeInsets.only(left: 18,right: 18,bottom: 7,top: 5)
            : null,
        textColor: appColors.white,
        content: content
    );
    return getToolTipWidget(
      startMargin: 0,
      customShapePointer: customShapePointer,
      controller: controller,
      globalKey: globalKey,
      pagetype: 'profile',
      overlayWidget: Assets.drawableInfoToolTip.toSVG(size: 13, fit: BoxFit.scaleDown, colour: colors),
    ).toPad(end: 4);
  }
}