library confirm_pay_page;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;
import 'package:gozy/config/client.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/graphql/UserProfile/__generated__/user_profile.data.gql.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/resources/app_layout.dart';
import 'package:gozy/screens/binding/booking_binding.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/booking/about_license_trip/about_license.dart';
import 'package:gozy/screens/views/booking/generate_with_ai/generate_with_ai.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/screens/views/guest/filter/filter_calendar.dart';
import 'package:gozy/screens/views/home_item_detail/home_item_detail_navigator.dart';
import 'package:gozy/utils/common_api_controller.dart';
import 'package:gozy/utils/duration_discount.dart';
import 'package:gozy/widgets/bottom_sheet/bottom_sheet_refresh_controller.dart';
import 'package:gozy/widgets/cancellation_policy_view.dart';
import 'package:gozy/widgets/checkbox_group.dart';
import 'package:gozy/widgets/common/custom_bottomsheet/custom_bottomsheet.dart';
import 'package:gozy/widgets/common/custom_button/bottom_shadow_button.dart';
import 'package:gozy/widgets/common/custom_button/primary_button.dart';
import 'package:gozy/widgets/common/custom_container/custom_border_container.dart';
import 'package:gozy/widgets/common/custom_container/custom_bottom_item_shadow_container.dart';
import 'package:gozy/widgets/common/custom_painter/custom_tooltip_painter.dart';
import 'package:gozy/widgets/common/custom_text/custom_price_breakdown_text.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/common/custom_textfield/custom_textfield_area.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/conditional_parent_widget.dart';
import 'package:gozy/widgets/common/custom_container/custom_container.dart';
import 'package:gozy/widgets/custom_stateful_widget.dart';

import 'package:gozy/widgets/custom_text.dart';
import 'package:gozy/widgets/custom_textfield.dart';
import 'package:gozy/widgets/dotted_border/dotted_border.dart';
import 'package:gozy/widgets/duration_discount_widgets.dart';
import 'package:gozy/widgets/explore_listing_item_widgets.dart';
import 'package:gozy/widgets/rect_getter.dart';
import 'package:gozy/widgets/show_done_view.dart';

import '../../../../app.dart';
import '../../../../graphql/booking/getBillingCalculation/__generated__/get_billing_calculation.data.gql.dart';
import '../../../../widgets/custom_tool_tip.dart';
import '../../home/home_navigator.dart';
import '../../home_item_detail/home_item_detail_controller.dart';
import 'confirm_pay_page_controller.dart';

part 'confirm_pay_page_function.dart';

class ConfirmAndPayPage extends CustomStatefulWidget {
  final HomeItemDetailController controller;

  ConfirmAndPayPage({super.key, required this.controller});

  @override
  ConfirmAndPayPageState createState() => ConfirmAndPayPageState();
}

class ConfirmAndPayPageState
    extends CustomStatefulWidgetState<ConfirmAndPayPage> {
  ConfirmAndPayPageController confirmpaycontroller = Get.find();
  String? symbol;
  Map<String, dynamic> controllerdata = {};
  RxBool isWritten = false.obs;
  bool _isBackpress = false,
      isInputThemeFour = false,
      isChipView = false,
      isShowDotForCarType = true;
  Color? listingDetailInfoBgColor = appColors.theme4AppBarBg;
  double? containerBorderRadius;
  Color? borderColor;
  double? borderRadius;
  double? sizeOfSvg;
  bool? showBillingBorder;
  bool? showBillingColor;
  bool? isPaddedContent;
  double? billingBorderRadius;
  int minLine = 6;
  RxString textVal = "".obs;
  FocusNode messageFocusNode = FocusNode();
  Worker? selectedDatesWorker, startTimeWorker, endTimeWorker;
  bool _isUpdatingFromCalendar = false;

  @override
  void initState() {
    widget.controller.confirmpayMessageController.clear();
    setItemController(Get.arguments);
    symbol = confirmpaycontroller.getCurrencySymbol();
    selectedDatesWorker = ever(widget.controller.selectedDates, (value) {
      debugPrint("selectedDatesinitState: $value");
      if (_isUpdatingFromCalendar) return;
      _setSelectedDates(value);
    });
    startTimeWorker = ever(widget.controller.selectedStartTime, (value) {
      debugPrint("selectedStartTime: $value");
      if (_isUpdatingFromCalendar) return;
      _setStartAndEndTime(value, "start");
    });
    endTimeWorker = ever(widget.controller.selectedEndTime, (value) {
      debugPrint("selectedEnd: $value");
      if (_isUpdatingFromCalendar) return;
      _setStartAndEndTime(value, "end");
    });
    reasonForBooking = App().buildReasonList(
        reasons: reasonForBooking, labelsString: App().getReasonBooking());
    super.initState();
  }

  @override
  void dispose() {
    selectedDatesWorker?.dispose();
    startTimeWorker?.dispose();
    endTimeWorker?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      appThemeChanged.value;
      confirmpaycontroller.isLoading.value;
      widget.controller.isLoading.value;
      widget.controller.billingCalcuationData.value;
      widget.controller.totalValue.value;
      _intiThemeData();
      return CustomScaffold(
        controller: confirmpaycontroller.pageType == 'pay'
            ? widget.controller
            : confirmpaycontroller,
        isShowAppBar: true,
        isShowBGOnLoader: false,
        loader: LottieLoaders.three_dots_loader,
        resizeToAvoidBottomInset: false,
        backIconWidget: getBackIconWidget(
            themeType: overALLThemeType,
            onTap: () {
              setControllerData();
              widget.controller.confirmpayMessageController.clear();
              widget.controller.couponCodeController.clear();
              widget.controller.isPromoApplied.value = false;
              _isBackpress = true;
              Get.back(result: controllerdata, closeOverlays: true);
            },
            backIcon: Assets.drawableSignupClose),
        customAppBarFunction: () {
          setControllerData();
          _isBackpress = true;
          widget.controller.confirmpayMessageController.clear();
          Get.back(result: controllerdata);
        },
        body: InputDoneView(
          confirmpaycontroller.pageType == 'pay'
              ? widget.controller
              : confirmpaycontroller,
          parentWidget: showBodyContent(context).toPad(
              bottom: (MediaQuery.of(context).viewInsets.bottom > 0
                  ? (MediaQuery.of(context).viewInsets.bottom + 40)
                  : 0)),
        ),
      );
    });
  }

  Widget showBodyContent(context) {
    List<Widget> ListItemWidgets = [];
    Widget billingWidget = _buildTellYourHostInfo(
        (confirmpaycontroller.pageType == 'pay'
                ? widget.controller
                : confirmpaycontroller)
            .isLoading
            .value);
    Widget _buildListingDetailInfoWidget = _buildListingDetailInfo();
    ListItemWidgets.add(_buildListingDetailInfoWidget);
    ListItemWidgets.add(billingWidget);
    if (confirmpaycontroller.pageType == 'pay') {
      ListItemWidgets.add(_buildCancellationPolicyInfo());
    }
    List<Widget> ListItemWidgetsWithDivider = ListItemsWithDivider(
        WidgetList: ListItemWidgets,
        noSpaceIndices: {1},
        isPadForDivider: overALLThemeType == 4);
    ListItemWidgetsWithDivider.insert(0, _buildTitleInfo());
    ListItemWidgetsWithDivider.insert(2, _buildBillingRequestInfo());
    return [
      [
        for (var (i, item) in ListItemWidgetsWithDivider.indexed)
          item.toPad(horizontal: i != 1 ? AppDimen.startMargin : 0.0),
        50.toHeight()
      ].toScroll().toStretch(),
      _showBottomAddPaymentWidget()
    ].toColumn();
  }

  Widget _emptyDateView(
      {Color? headerColor, double? headerFontSize, double? fontSize}) {
    return IntrinsicHeight(
      child: [
        Flexible(
          child: _customDateTimeView(
              headerText: label_trip_start.tr,
              date: "${add_date.tr} & ${label_time.tr}",
              crossAxisAlignment: CrossAxisAlignment.start,
              headerFontWeight: AppFont.medium,
              headerColor: headerColor,
              headerFontSize: headerFontSize,
              fontSize: fontSize,
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                _openCalendarFromConfirmPay();
              }),
        ),
        24.toWidth(),
        Align(
          alignment: Alignment.center,
          child: ViewdetailArrowsvg!.toSVG(
              quarterTurns:
                  intl.Bidi.isRtlLanguage(Get.locale?.languageCode) ? 2 : 0,
              size: 15,
              colour: appColors.black,
              replaceableValues: {'stroke-width="0.1"': 'stroke-width="0.5"'}),
        ),
        5.toWidth(),
        Flexible(
          child: Align(
            child: _customDateTimeView(
              headerText: label_trip_end.tr,
              date: "${add_date.tr} & ${label_time.tr}",
              crossAxisAlignment: CrossAxisAlignment.start,
              textAlign: TextAlign.start,
              headerFontWeight: AppFont.medium,
              headerColor: headerColor,
              headerFontSize: headerFontSize,
              fontSize: fontSize,
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                _openCalendarFromConfirmPay();
              },
            ),
          ),
        )
      ].toRow(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start),
    );
  }

  Widget _buildTellYourHostInfo([bool? isloading]) {
    GgetBillingCalculationData_getBillingCalculation_result? billingdata =
        widget.controller.billingCalcuationData.value?.getBillingCalculation
            ?.result;
    billingdata ??= confirmpaycontroller
        .billingCalcuationData.value?.getBillingCalculation?.result;
    double fontsize = (maxwidthamountWidget /
        ((billingdata?.priceForDays
                .toNumberFormat(symbol: widget.controller.getCurrencySymbol()))
            .toString()
            .length) *
        1.7);
    fontsize =
        fontsize > AppDimen.textSize_16 ? AppDimen.textSize_16 : fontsize;
    return [
      if (confirmpaycontroller.pageType != 'pay') ...[
        CustomText(
          text: 'your_message'.tr,
          size: AppDimen.textSize_18,
          fontWeight: AppFont.medium,
        ),
        if (appLayoutMap[AppLayout.inputType]?.themeType != 4) 9.toHeight(),
        Scrollbar(
          child: CustomTextfieldArea(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: (messageFocusNode.hasFocus ?? false)
                        ? appColors.black
                        : appColors.customBorderColor,
                    width: 0.5),
              ),
            ),
            focusNode: messageFocusNode,
            hintText: write_message.tr,
            controller: widget.controller.confirmpayMessageController,
            minLines: minLine,
            borderTextfieldPadding: pad(
                w: appLayoutMap[AppLayout.inputType]?.themeType == 4 ? 0 : 18,
                h: appLayoutMap[AppLayout.inputType]?.themeType != 4 ? 10 : 4),
            maxLines: 6,
          ),
        ).toPad(bottom: 16),
      ],
      if (confirmpaycontroller.pageType != 'pay')
        if (aiTextGeneration &&
            (guestContactMessage || renterServicePlanAIFeatureStatus))
          confirmpaycontroller.buildGenerateWithAIView(
              label: isWritten.value
                  ? label_rewrite_with_ai.tr
                  : label_generate_with_ai.tr,
              onTap: () {
                if (confirmpaycontroller.rxSelectedStartTime.value.isEmpty &&
                    confirmpaycontroller.rxSelectedEndTime.value.isEmpty) {
                  confirmpaycontroller.showToast("Select date and time");
                  return;
                }
                DateTime startDate;
                DateTime endDate;
                startDate = confirmpaycontroller.rxSelectedDates.value.first;
                endDate = confirmpaycontroller.rxSelectedDates.value.last;
                String startTime =
                    confirmpaycontroller.rxSelectedStartTime.value.isNotEmpty
                        ? confirmpaycontroller.rxSelectedStartTime.value
                        : "";
                String endTime =
                    confirmpaycontroller.rxSelectedEndTime.value.isNotEmpty
                        ? confirmpaycontroller.rxSelectedEndTime.value
                        : "";
                Map<String, dynamic> params = {};
                params["startDate"] = startDate;
                params["endDate"] = endDate;
                params["startTime"] = startTime;
                params["endTime"] = endTime;
                params["hostName"] =
                    confirmpaycontroller.itemInfo.user?.profile?.firstName;
                params["type"] = "contactHost";
                params["special_apperance"] =
                    widget.controller.confirmpayMessageController.text;
                Get.to(GenerateWithAI(),
                        binding: BookingBinding(), arguments: params)
                    ?.then((value) {
                  if (value.isEmpty) {
                    isWritten.value = false;
                  } else {
                    widget.controller.confirmpayMessageController.text = value;
                    isWritten.value = true;
                  }
                });
              }),
      if (confirmpaycontroller.pageType == 'pay')
        IntrinsicHeight(
          child: CustomBorderContainer(
            borderRadius: appLayoutMap[AppLayout.viewCar]?.borderRadius,
            body: [
              Assets.drawableMinibus
                  .toSVG(size: 30)
                  .toPad(all: 12)
                  .toPad(vertical: 5),
              VerticalDivider(width: 1.2, color: appColors.customBorderColor),
              10.toWidth(),
              [
                CustomText(
                  text: label_include_doorstep_delivery.tr,
                  size: AppDimen.textSize_16,
                  fontWeight: AppFont.regular,
                ),
                CustomText(
                    text: "(${label_delivery_charges.trParams({
                          "field1": billingdata!.delivery.toNumberFormat(
                              symbol: widget.controller.getCurrencySymbol(),
                              maximumFractionDigits: 2)
                        })})",
                    size: AppDimen.textSize_14,
                    fontWeight: AppFont.regular,
                    color: appColors.secondaryColor),
              ].toColumn(mainAxisAlignment: MainAxisAlignment.center),
              Spacer(),
              toOnTap(
                onTap: () {
                  confirmpaycontroller.isDeliveryCheck.value =
                      !confirmpaycontroller.isDeliveryCheck.value;
                  widget.controller.isDeliveryCheck.value =
                      !widget.controller.isDeliveryCheck.value;
                  print(
                      "isdelivery>>>>${widget.controller.isDeliveryCheck.value}");
                  widget.controller
                      .checkNetwork(widget.controller.getBillingCalculation);
                },
                child: CustomCheckBox(
                        boxshape: BoxShape.rectangle,
                        ischeckCondition:
                            !(widget.controller.isDeliveryCheck.value),
                        borderColor: appColors.customBorderColor)
                    .toPad(bottom: 4),
              )
            ].toRow(
              mainAxisAlignment: MainAxisAlignment.start,
            ),
          ),
        ),
      if (confirmpaycontroller.pageType == 'pay') ...[
        20.toHeight(),
        overALLThemeType == 4
            ? filterDivider.toFitToDeviceWidth().toResizeWidget(height: 1)
            : filterDivider,
        20.toHeight(),
        _buildCouponCodeField(),
      ],
      20.toHeight(),
      if (confirmpaycontroller.pageType == 'pay') ...[
        CustomTitleText(
          text: label_reservation_charges.tr,
          size: AppDimen.textSize_16,
        ),
        _priceDetailWidget(receiptItem: billingdata),
      ]
    ].toColumn();
  }

  List<Widget> _buildCouponCodeTextField() {
    return [
      TitleTextField(
        controller: widget.controller.couponCodeController,
        hintText: label_digit_code
            .trParams({"field": label_code_text.tr.toLowerCase()}),
        suffixIconWidget: _buildApplyRemoveWidget(),
        textInputAction: TextInputAction.done,
        focusNode: widget.controller.focusNode,
        textCapitalization: TextCapitalization.characters,
        isReadOnly: widget.controller.isPromoApplied.value,
        onSubmitted: (_) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        onChanged: (value) {
          textVal.value = value;
          if (value.isNotEmpty) {
            widget.controller.couponCodeController.value =
                widget.controller.couponCodeController.value.copyWith(
              text: value.toUpperCase(),
              selection: TextSelection.collapsed(offset: value.length),
            );
            debugPrint(
                "widget.controller.couponCodeController: ${widget.controller.couponCodeController.Ttext}");
            widget.controller.isPromoCodeTyping.value = true;
          } else {
            widget.controller.isPromoCodeTyping.value = false;
          }
        },
      ),
    ];
  }

  Widget? _buildApplyRemoveWidget() {
    print(
        "controller :::${textVal.value} >>> ${widget.controller.isPromoCodeTyping.value} <<<<< ${widget.controller.isPromoApplied.value}");
    return widget.controller.isPromoCodeTyping.value &&
            !widget.controller.isPromoApplied.value
        ? toOnTap(
            onTap: () {
              FocusManager.instance.primaryFocus!.unfocus();
              widget.controller
                  .checkNetwork(widget.controller.validatePromoCode);
            },
            child: CustomText(
                text: textVal.value.isNotEmpty ? label_apply_text.tr : "",
                color: appColors.secondaryColor))
        : widget.controller.isPromoCodeTyping.value &&
                widget.controller.isPromoApplied.value
            ? toOnTap(
                onTap: () {
                  widget.controller.isRemoveClicked = true;
                  widget.controller
                      .checkNetwork(widget.controller.getBillingCalculation);
                  textVal.value = "";
                  FocusManager.instance.primaryFocus!.unfocus();
                },
                child: CustomText(
                    text: label_remove.tr, color: appColors.secondaryColor))
            : null;
  }

  void setItemController(dynamic controllerData) {
    confirmpaycontroller.billingCalcuationData.value =
        controllerData['billingCalcuationData'];

    debugPrint(
        "updatedguestcount: ${controllerData['selectedStartTime']} --- ${controllerData['selectedEndTime']} --- ${contactHostBookingType == 'instant'}");
    debugPrint(
        "billingcalculationdata: ${confirmpaycontroller.billingCalcuationData.value}");
    widget.controller.selectedStartTime = controllerData['selectedStartTime'];
    widget.controller.selectedEndTime = controllerData['selectedEndTime'];

    widget.controller.billingCalcuationData.value =
        confirmpaycontroller.billingCalcuationData.value;

    confirmpaycontroller.change(
        rxVariable: confirmpaycontroller.rxUpdatedGuestCount,
        value: int.tryParse(controllerData['updatedGuestCount'].toString()));
    confirmpaycontroller.itemInfo = controllerData['itemInfo'];
    confirmpaycontroller.pageType = controllerData['pageType'];
    if (controllerData['contactHostDates'] != null) {
      confirmpaycontroller.contactHostDates =
          controllerData['contactHostDates'];
    }

    if (confirmpaycontroller.pageType != 'pay' &&
        confirmpaycontroller.contactHostDates.isNotEmpty) {
      if (confirmpaycontroller.contactHostDates.first !=
              controllerData['selectedDates'].first ||
          confirmpaycontroller.contactHostDates.last !=
              controllerData['selectedDates'].last) {
        confirmpaycontroller.change(
            rxVariable: confirmpaycontroller.rxSelectedDates,
            value: controllerData['selectedDates']);
        confirmpaycontroller.change(
            rxVariable: confirmpaycontroller.rxSelectedStartTime,
            value: controllerData['selectedStartTime'].value);
        confirmpaycontroller.change(
            rxVariable: confirmpaycontroller.rxSelectedEndTime,
            value: controllerData['selectedEndTime'].value);
      }
    } else {
      confirmpaycontroller.change(
          rxVariable: confirmpaycontroller.rxSelectedDates,
          value: controllerData['selectedDates']);
      confirmpaycontroller.change(
          rxVariable: confirmpaycontroller.rxSelectedStartTime,
          value: controllerData['selectedStartTime'].value);
      confirmpaycontroller.change(
          rxVariable: confirmpaycontroller.rxSelectedEndTime,
          value: controllerData['selectedEndTime'].value);
    }

    debugPrint(
        'selecteddated:${controllerData['selectedDates']} --- ${Get.previousRoute}');
    if (!Get.previousRoute.toLowerCase().contains('itemdetail')) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.controller.itemInfo == null &&
            confirmpaycontroller.itemInfo != null) {
          widget.controller.itemInfo = confirmpaycontroller.itemInfo;
          widget.controller.billingCalcuationData.value =
              confirmpaycontroller.billingCalcuationData.value;
          widget.controller.rxUpdatedGuestCount =
              confirmpaycontroller.rxUpdatedGuestCount;
          widget.controller.contactHostDates =
              confirmpaycontroller.contactHostDates;
        }

        if (confirmpaycontroller.pageType == 'pay') {
          widget.controller.selectedDates.value =
              List.from(confirmpaycontroller.rxSelectedDates.value);
        }
        if (controllerData['billingCalcuationData'] != null) {
          widget.controller.selectedDates.value =
              controllerData['selectedDates'];
          widget.controller.totalValue.value = widget
                  .controller
                  .billingCalcuationData
                  .value
                  ?.getBillingCalculation
                  ?.result
                  ?.total ??
              0.0;
          widget.controller.totalValue.refresh();
        }
      });
    }
  }

  Widget _showBottomAddPaymentWidget() {
    GgetBillingCalculationData_getBillingCalculation_result? billingdata =
        widget.controller.billingCalcuationData.value?.getBillingCalculation
            ?.result;
    debugPrint("billingdata111: ${billingdata}");
    billingdata ??= confirmpaycontroller
        .billingCalcuationData.value?.getBillingCalculation?.result;
    debugPrint("billingdata222: ${billingdata}");
    debugPrint("_showBottomAddPaymentWidget: ${contactHostBookingType}");
    return confirmpaycontroller.pageType == 'pay'
        ? _showPayBottom(billingdata: billingdata)
        : BottomShadowButton(
            buttonPadding: pad(a: 20),
            borderRadiusGeometry: BorderRadiusDirectional.only(
                topStart: Radius.circular(
                    appLayoutMap[AppLayout.themeType]?.borderRadius ?? 0),
                topEnd: Radius.circular(
                    appLayoutMap[AppLayout.themeType]?.borderRadius ?? 0)),
            buttonText: send_message.tr,
            onTap: () async {
              bool isvalidate = confirmpaycontroller.validateCredentials(
                  widget.controller.confirmpayMessageController);
              FocusManager.instance.primaryFocus?.unfocus();
              if (isvalidate) {
                isShowLoader = true;
                if ((widget.controller.appPreference.profileImage ?? '')
                    .isEmpty) {
                  widget.controller.isLoading.value = true;
                  GuserAccountData? userProfileFragmentData =
                      await widget.controller.getuserProfileData();
                  widget.controller.appPreference.profileImage =
                      userProfileFragmentData.userAccount?.result?.picture ??
                          '';
                }
                isShowLoader = false;
                widget.controller.isLoading.value = false;
                // if ((controller.appPreference.profileImage ?? '').isEmpty) {
                //   super
                //       .controller
                //       .homeItemDetailNavigator
                //       ?.navigateScreen(HomeItemDetailScreen.uploadProfile, {
                //     "page": confirmpaycontroller.pageType,
                //     "onTap": (callBack) async {
                //       callBack(true);
                //       await confirmPayment();
                //       callBack(false);
                //     }
                //   });
                // } else {
                confirmPayment();
                // }
              }
            },
          );
  }

  Widget _showPayBottom(
      {GgetBillingCalculationData_getBillingCalculation_result? billingdata}) {
    return Obx(
      () {
        debugPrint("_showPayBottom update called");
        GgetBillingCalculationData_getBillingCalculation_result?
            currentBillingData = widget.controller.billingCalcuationData.value
                ?.getBillingCalculation?.result;
        currentBillingData ??= confirmpaycontroller
            .billingCalcuationData.value?.getBillingCalculation?.result;
        currentBillingData ??= billingdata;
        final currentDays = (currentBillingData?.days ?? 0).toInt();
        final nextOffer = DurationDiscountPresentation.nextOffer(
          weeklyDiscount:
              widget.controller.itemInfo?.listingData?.weeklyDiscount,
          monthlyDiscount:
              widget.controller.itemInfo?.listingData?.monthlyDiscount,
          days: currentDays,
        );
        final maxDays = widget.controller.itemInfo?.listingData?.maxDay as int?;
        return [
          if (nextOffer != null &&
              (maxDays == null ||
                  maxDays <= 0 ||
                  nextOffer.thresholdDays <= maxDays))
            DurationDiscountExtensionPanel(
              offer: nextOffer,
              currentDays: currentDays,
              onAddDays: () =>
                  _extendToDiscountThreshold(nextOffer, currentDays),
            ),
          CustomBottomItemShadowContainer(
                  height: 100,
                  color: appColors.white,
                  padding: pad(w: 20, top: 25, bottom: 20),
                  borderRadiusGeometry: BorderRadiusDirectional.vertical(
                      top: Radius.circular(
                          overALLAppLayoutModel?.borderRadius ?? 0),
                      bottom: Radius.circular(
                          overALLAppLayoutModel?.borderRadius ?? 0)),
                  body: [
                    [
                      RichText(
                          text: TextSpan(children: [
                        if (widget.controller.itemInfo != null &&
                            widget.controller.itemInfo.bookingType == 'instant')
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: CustomContainer(
                                padding: pad(w: 2, bottom: 4),
                                body: (overALLAppLayoutModel?.instantBookIcon ??
                                        Assets.drawableInstantBook)
                                    .toSVG(size: 16)),
                          ),
                        TextSpan(
                          style: TextStyle(
                              color: appColors.textColor,
                              fontSize: AppDimen.textSize_18,
                              fontFamily: AppFont.font,
                              fontWeight: AppFont.semiBold),
                          text: (widget.controller.isDeliveryCheck.value ||
                                      widget.controller.isPromoApplied.value
                                  ? (widget.controller.totalValue.value)
                                  : (widget.controller.totalValue.value))
                              .currencyConverted(
                                  convertedCurrency:
                                      currentBillingData?.currency ??
                                          defaultCurrency)
                              .toNumberFormat(
                                  symbol:
                                      widget.controller.getCurrencySymbol()),
                        )
                      ])),
                      CustomText(
                          text: label_for_text.trParams({
                            "field":
                                "${currentBillingData?.days ?? 0} ${label_day.trPlural(dayPlural.tr, currentBillingData?.days ?? 0)}"
                          }),
                          fontWeight: AppFont.regular,
                          size: AppDimen.textSize_14)
                    ].toColumn(),
                    24.toWidth(),
                    PrimaryButton(
                            isWrapContent: true,
                            isResizeText: true,
                            buttonText:
                                (widget.controller.itemInfo.bookingType ==
                                            'instant' ||
                                        contactHostBookingType == 'instant')
                                    ? label_book.tr
                                    : label_request_to_book.tr,
                            onTap: () {
                              if (widget.controller.isEmailVerified()) {
                                _openAboutLicenceFromConfirmPay();
                              } else {
                                confirmpaycontroller.showSnackBar(
                                    label_error_msg_email_is_not_verified_please_verify_it
                                        .tr);
                              }
                            },
                            padding: pad(w: 10))
                        .toStretch(isExpanded: true)
                  ].toRow(mainAxisAlignment: MainAxisAlignment.spaceBetween))
              .toStretch()
        ].toRow();
      },
    );
  }

  Future<void> _extendToDiscountThreshold(
      DurationDiscountOffer offer, int currentDays) async {
    final selectedDates = widget.controller.selectedDates.toList();
    if (selectedDates.isEmpty) return;
    final daysToAdd = offer.daysToReach(currentDays);
    if (daysToAdd <= 0) return;

    final originalEnd = selectedDates.last;
    final targetEnd = originalEnd.add(Duration(days: daysToAdd));
    final blockedDates = widget.controller.getBlockedDates().keys;
    final hasBlockedDate = blockedDates.any((date) {
      final normalized = DateTime(date.year, date.month, date.day);
      final firstAddedDay =
          DateTime(originalEnd.year, originalEnd.month, originalEnd.day)
              .add(const Duration(days: 1));
      final normalizedTarget =
          DateTime(targetEnd.year, targetEnd.month, targetEnd.day);
      return !normalized.isBefore(firstAddedDay) &&
          !normalized.isAfter(normalizedTarget);
    });
    if (hasBlockedDate) {
      widget.controller.showToast(those_dates_are_not_available.tr);
      return;
    }

    final projectedDates = [selectedDates.first, targetEnd];
    final projected = await widget.controller.getBillingCalculation(
      dates: projectedDates,
      startTimeVal: widget.controller.selectedStartTime.value,
      endTimeVal: widget.controller.selectedEndTime.value,
    );
    if (projected?.getBillingCalculation?.status != 200) return;

    widget.controller.selectedDates.assignAll(projectedDates);
    confirmpaycontroller.change(
      rxVariable: confirmpaycontroller.rxSelectedDates,
      value: projectedDates,
    );
  }

  Future<void> confirmPayment() async {
    widget.controller.isLoading.value = true;
    if (confirmpaycontroller.pageType == 'pay') {
      widget.controller.isNavigateToPaymentType = true;
      setControllerData();
      widget.controller.threadId = Get.arguments['threadId'].toString();
      widget.controller.checkNetwork(widget.controller.getBillingCalculation);
    } else {
      confirmpaycontroller.content =
          widget.controller.confirmpayMessageController.Ttext;
      confirmpaycontroller.contactHostDates =
          List.from(widget.controller.selectedDates);
      confirmpaycontroller.checkNetwork(confirmpaycontroller.contactHost);
    }
  }

  void setControllerData() {
    debugPrint(
        "setControllerData: ${confirmpaycontroller.rxSelectedDates.value}");
    controllerdata = {
      'billingCalcuationData': confirmpaycontroller.billingCalcuationData.value,
      'updatedGuestCount': confirmpaycontroller.rxUpdatedGuestCount,
      'itemInfo': confirmpaycontroller.itemInfo,
      'selectedDates': confirmpaycontroller.rxSelectedDates.value.isNotEmpty
          ? confirmpaycontroller.rxSelectedDates.value
          : widget.controller.selectedDates,
      'contactHostDates': confirmpaycontroller.contactHostDates,
    };
  }

  Widget _priceDetailWidget(
      {GgetBillingCalculationData_getBillingCalculation_result? receiptItem}) {
    double fontsize = (maxwidthamountWidget /
        ((double.parse(receiptItem!.total.toString()).toNumberFormat(
                symbol: confirmpaycontroller.getCurrencySymbol()))
            .toString()
            .length) *
        1.7);
    fontsize =
        fontsize > AppDimen.textSize_16 ? AppDimen.textSize_16 : fontsize;

    return [
      10.toHeight(),
      (showBillingBorder ?? false)
          ? CustomBorderContainer(
              padding: pad(
                  a: ((showBillingBorder ?? false) &&
                          (showBillingColor ?? false))
                      ? 12
                      : 0),
              borderColor: appLayoutMap[AppLayout.viewCar]?.themeType == 3
                  ? null
                  : (showBillingBorder ?? false)
                      ? appColors.myTripsDividerColor
                      : null,
              color: (showBillingColor ?? false)
                  ? appColors.viewMessageReceiverBGColor
                  : null,
              borderRadius: billingBorderRadius,
              body: _getPriceDetailItemWidget(
                  receiptItem: receiptItem, fontsize: fontsize),
            )
          : Container(
              padding: pad(
                  a: ((showBillingBorder ?? false) &&
                          (showBillingColor ?? false))
                      ? 12
                      : 0),
              color: (showBillingColor ?? false)
                  ? appColors.viewMessageReceiverBGColor
                  : null,
              child: _getPriceDetailItemWidget(
                  receiptItem: receiptItem, fontsize: fontsize),
            ),
      if (overALLThemeType == 2) 5.toHeight(),
      if (overALLThemeType != 2) 20.toHeight(),
    ].toColumn();
  }

  void _openCalendarFromConfirmPay() {
    if (widget.controller.homeItemDetailNavigator != null) {
      widget.controller.homeItemDetailNavigator
          ?.navigateScreen(HomeItemDetailScreen.Calendar, '');
      return;
    }

    int minnight = widget.controller.itemInfo?.listingData?.minDay ?? 1;
    int maxnight = widget.controller.itemInfo?.listingData?.maxDay ?? 1;
    final Map<String, dynamic> minMaxNights = {
      'minnight': minnight,
      'maxnight': maxnight,
      'maxDaysNotice': widget.controller.itemInfo?.listingData?.maxDaysNotice,
    };

    final RxList<DateTime> tempSelectedDates =
        RxList<DateTime>.from(widget.controller.selectedDates);
    final RxString tempSelectedStartTime =
        widget.controller.selectedStartTime.value.obs;
    final RxString tempSelectedEndTime =
        widget.controller.selectedEndTime.value.obs;

    Get.to(
      FilterCalendar(
        controller: widget.controller,
        selectedDates: tempSelectedDates,
        selectedStartTime: tempSelectedStartTime,
        selectedEndTime: tempSelectedEndTime,
        contactHostDates: confirmpaycontroller.pageType == 'pay'
            ? null
            : confirmpaycontroller.contactHostDates,
        blockedDates: widget.controller.getBlockedDates(),
        minMaxNights: minMaxNights,
        calendarType: 'availability',
        initialDateTime: DateTime.now(),
        isBlockedDateStrikeOut: true,
      ),
      transition: Transition.downToUp,
    )?.then((list) {
      if (list != null && list.isNotEmpty) {
        _isUpdatingFromCalendar = true;

        confirmpaycontroller.rxSelectedStartTime.value =
            list["selectedStartTime"].value;
        confirmpaycontroller.rxSelectedEndTime.value =
            list["selectedEndTime"].value;
        confirmpaycontroller.change(
            rxVariable: confirmpaycontroller.rxSelectedDates,
            value: List<DateTime>.from(list["selectedDate"]));

        widget.controller.selectedStartTime.value =
            list["selectedStartTime"].value;
        widget.controller.selectedEndTime.value = list["selectedEndTime"].value;
        widget.controller.selectedDates.assignAll(list["selectedDate"]);

        _isUpdatingFromCalendar = false;

        if (confirmpaycontroller.pageType == 'pay') {
          widget.controller
              .checkNetwork(widget.controller.getBillingCalculation);
        }
      }
    });
  }

  void _openAboutLicenceFromConfirmPay() {
    if (widget.controller.homeItemDetailNavigator != null) {
      widget.controller.homeItemDetailNavigator
          ?.navigateScreen(HomeItemDetailScreen.aboutLicencePage, '');
      return;
    }
    Get.to(AboutLicense(), binding: BookingBinding());
  }

  Widget? _getPriceDetailItemWidget(
      {GgetBillingCalculationData_getBillingCalculation_result? receiptItem,
      required double fontsize}) {
    final double days = (receiptItem?.days ?? 0).toDouble();
    final double basePrice = receiptItem?.basePrice ?? 0.0;
    final double priceForDays = receiptItem?.priceForDays ?? 0.0;
    final double totalForDays =
        priceForDays > 0 ? priceForDays : (basePrice * days);
    final double perDayPrice = days > 0 ? (totalForDays / days) : basePrice;
    print(
        'test9${'${(receiptItem?.guestServiceFee)?.currencyConverted(convertedCurrency: receiptItem?.currency ?? defaultCurrency)}'}');
    return [
      CustomPriceBreakdownText(
              label:
                  '${perDayPrice.currencyConverted(convertedCurrency: receiptItem!.currency ?? defaultCurrency).toNumberFormat(symbol: confirmpaycontroller.getCurrencySymbol())} X ${receiptItem.days} ${label_day.trPlural(dayPlural.tr, receiptItem.days)}',
              amount: totalForDays.currencyConverted(
                  convertedCurrency: receiptItem.currency ?? defaultCurrency),
              amountFontSize: fontsize,
              isToolTipFirst: true,
              tooltipWidget: (receiptItem.isSpecialPriceAssigned ?? false)
                  ? _getToolTipWidget(
                      content: label_spl_price_tooltip_content.tr,
                      colors: appColors.secondaryColor,
                      globalKey: RectGetter.createGlobalKey(),
                      isPromo: false)
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
      if ((receiptItem.discount ?? 0.0) > 0.0)
        DurationDiscountSavingsPanel(
          formattedSavings: (receiptItem.discount ?? 0.0)
              .currencyConverted(
                  convertedCurrency: receiptItem.currency ?? defaultCurrency)
              .toNumberFormat(symbol: confirmpaycontroller.getCurrencySymbol()),
        ).toPad(horizontal: (isPaddedContent ?? false) ? 10 : 0),
      widget.controller.isPromoApplied.value
          ? CustomPriceBreakdownText(
              isDiscount: true,
              isSelectedSymbolNotNeeded: true,
              label: widget.controller.couponCodeController.Ttext,
              tooltipWidget: _getToolTipWidget(
                  content: receiptItem.promoCodeDescription ?? "",
                  colors: appColors.secondaryColor,
                  globalKey: RectGetter.createGlobalKey()),
              isToolTipFirst: true,
              amount:
                  '${receiptItem.promoDiscount?.currencyConverted(convertedCurrency: receiptItem.currency ?? defaultCurrency)}',
              amountFontSize: fontsize,
            ).toPad(horizontal: (isPaddedContent ?? false) ? 10 : 0)
          : const SizedBox.shrink(),
      (confirmpaycontroller.isDeliveryCheck.value)
          ? CustomPriceBreakdownText(
              label: delivery_fee.tr,
              amount:
                  '${receiptItem.delivery?.currencyConverted(convertedCurrency: receiptItem.currency ?? defaultCurrency, decimalDigits: 2)}',
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
      if (overALLThemeType == 2) 5.toHeight(),
      CustomPriceBreakdownText(
        label: label_total.tr.toUpperLowerCase(),
        amount:
            '${(confirmpaycontroller.isDeliveryCheck.value) ? (receiptItem.total ?? 0.0) : (receiptItem.total ?? 0.0).currencyConverted(convertedCurrency: receiptItem.currency ?? defaultCurrency)}',
        isTotal: true,
        amountFontSize: fontsize,
      ).toPad(horizontal: (isPaddedContent ?? false) ? 10 : 0),
    ].toColumn();
  }

  dynamic _getToolTipWidget(
      {required String content,
      globalKey,
      required Color colors,
      bool isPromo = true}) {
    debugPrint("_getToolTipWidget: $content");
    CustomTooltipPainter customShapePointer = CustomTooltipPainter(
        isItemSelected: true,
        borderRadius: 6,
        fontSize: AppDimen.textSize_14,
        isDisableStroke: true,
        contentBGColor: appColors.black,
        padding: overALLThemeType == 3
            ? EdgeInsets.only(left: 18, right: 18, bottom: 7, top: 5)
            : null,
        textColor: appColors.white,
        content: content);
    return getToolTipWidget(
      startMargin: 0,
      customShapePointer: customShapePointer,
      controller: widget.controller,
      globalKey: globalKey,
      pagetype: 'profile',
      overlayWidget: (isPromo
              ? Assets.drawableInfoToolTip
              : Assets.drawableConfirmPaySplPriceTooltip)
          .toSVG(size: 13, fit: BoxFit.scaleDown, colour: colors),
    ).toPad(end: 4);
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      appThemeChanged.refresh();
    });
  }
}
