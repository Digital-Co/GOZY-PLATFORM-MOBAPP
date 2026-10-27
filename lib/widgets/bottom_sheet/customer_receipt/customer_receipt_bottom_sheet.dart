import 'package:gozy/utils/booking_options.dart';
import 'package:gozy/utils/booking_options_i18n.dart';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/widgets/bottom_sheet/customer_receipt/receipt_pdf_layout.dart' as pdflayout;
import 'package:gozy/widgets/common/custom_bottomsheet/custom_bottomsheet.dart';
import 'package:gozy/widgets/common/custom_container/custom_border_container.dart';
import 'package:gozy/widgets/common/custom_painter/custom_tooltip_painter.dart';
import 'package:gozy/widgets/common/custom_text/custom_header_with_label_text.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/common/custom_container/custom_container.dart';
import 'package:gozy/widgets/custom_text.dart';

import '../../../constant.dart';
import '../../../resources/app_font.dart';
import '../../../resources/app_lang.dart';
import '../../common_extension_functions.dart';

import '../../custom_tool_tip.dart';
import '../../rect_getter.dart';
import '../bottom_sheet_refresh_controller.dart';

class CustomerReceiptBottomSheet {
  BaseController? _controller;
  final _itemPadding = 12;
  double? totalAmount;
  String? discountlabel;
  bool? isFromTransactionVar;
  bool? showBillingBorder;
  bool? showBillingColor;
  bool? isPaddedContent;
  bool isFullDivider = false;
  double? billingBorderRadius;
  double _horizontalPadding = 10;
  final GlobalKey boundaryKey = GlobalKey();

  CustomerReceiptBottomSheet(
      {required dynamic receiptItem,
      required BaseController controller,
      String? discountLabel, bool? isFromTransaction}) {
    switch (overALLThemeType) {
      case 1:
        showBillingBorder = true;
        showBillingColor = false;
        billingBorderRadius = 6;
        isPaddedContent = true;
        break;
      case 2:
        showBillingBorder = false;
        showBillingColor = false;
        billingBorderRadius = 0;
        break;
      case 3:
        showBillingBorder = true;
        showBillingColor = true;
        billingBorderRadius = 18;
        isPaddedContent = true;
        _horizontalPadding = 12;
        break;
      default:
        showBillingBorder = true;
        showBillingColor = false;
        billingBorderRadius = 12;
        isPaddedContent = true;
        isFullDivider = true;
        break;
    }

    totalAmount =
        ((receiptItem.isSpecialPriceAverage ?? receiptItem.basePrice)! * receiptItem.dayDifference!);

    _controller = controller;
    discountlabel = discountLabel;
    isFromTransactionVar = isFromTransaction;
    showCustomBottomSheet(
        contentWidget: GetBuilder<BottomSheetController>(
            builder: (newController) =>
                getCustomerReceiptBottomSheet(receiptItem: receiptItem, controller: controller)
                    .toScroll()
                    .toPad(bottom: 5)),
        title: null,
        backButtonWidget: getBackIconWidget(
          themeType: overALLThemeType,
          backIcon: overALLAppLayoutModel!.backIcon,
        ),
        titleFontSize: AppDimen.textSize_20,
        actionWidget: GetBuilder<BottomSheetController>(
            builder: (newController) => CustomContainer(
                  width: 50,
                  height: 50,
                  alignment: AlignmentDirectional.centerEnd,
                  onTap: () async {
                    if (_controller?.isRxBottomSheetLoading.value ?? false) return;
                    _controller?.isRxBottomSheetLoading.value = true;
                    try {
                      Map<String, dynamic> resourceBytes = {};
                      debugPrint("languageCode: ${Get.locale?.languageCode}");

                      final List<Future<pw.Font>> fontFutures = [
                        PdfGoogleFonts.notoSansHebrewRegular(),
                        PdfGoogleFonts.notoSansHebrewBold(),
                        PdfGoogleFonts.notoSansArabicRegular(),
                        PdfGoogleFonts.notoSansArabicBold(),
                        PdfGoogleFonts.beVietnamProRegular(),
                        PdfGoogleFonts.beVietnamProSemiBold(),
                        PdfGoogleFonts.robotoBlack(),
                        PdfGoogleFonts.notoSansThaiRegular(),
                      ];

                      final List<pw.Font> fonts = await Future.wait(fontFutures);

                      pw.Font heb1 = fonts[0];
                      pw.Font heb2 = fonts[1];
                      pw.Font ara1 = fonts[2];
                      pw.Font ara2 = fonts[3];
                      pw.Font eng1 = fonts[4];
                      pw.Font eng2 = fonts[5];
                      pw.Font roboto = fonts[6];

                      if (Get.locale?.languageCode == 'he') {
                        resourceBytes['font'] = heb1;
                        resourceBytes['boldfont'] = heb2;
                      } else if (Get.locale?.languageCode == 'ar') {
                        resourceBytes['font'] = ara1;
                        resourceBytes['boldfont'] = ara2;
                      } else {
                        resourceBytes['font'] = eng1;
                        resourceBytes['boldfont'] = eng2;
                      }

                      resourceBytes['fontfallback'] = fonts;
                      String arrowsvg = await rootBundle.loadString(Assets.drawableViewdetailArrow);
                      String infosvg = await rootBundle.loadString(Assets.drawableInfoToolTip);
                      resourceBytes['arrowsvg'] = arrowsvg;
                      resourceBytes['infosvg'] = infosvg;
                      resourceBytes['discountlabel'] = discountlabel;
                      resourceBytes["textDirection"] =
                          (_controller?.isRTL() ?? false) ? pw.TextDirection.rtl : pw.TextDirection.ltr;
                      resourceBytes['showBillingBorder'] = showBillingBorder;
                      resourceBytes['showBillingColor'] = showBillingColor;
                      resourceBytes['billingBorderRadius'] = billingBorderRadius;
                      _printReceipt(receiptItem: receiptItem, resources: resourceBytes);
                    } catch (e) {
                      debugPrint("PDF Error: $e");
                    } finally {
                      _controller?.isRxBottomSheetLoading.value = false;
                    }
                  },
                  body: Assets.drawableReceiptPdfPrinter.toSVG(
                    colour: appColors.black,
                  ),
                )).toPad(horizontal: AppDimen.startMargin));
  }

  Widget getCustomerReceiptBottomSheet(
      {required dynamic receiptItem, required BaseController controller}) {
    List<Widget> ListItemWidgets = [];
    ListItemWidgets.add(_receiptTitleWidget(receiptItem: receiptItem));
    ListItemWidgets.add(_AccomodationInfoWidget(receiptItem: receiptItem));
    ListItemWidgets.add(_TripDetailsWidget(receiptItem: receiptItem));
    ListItemWidgets.add(_renterInfoWidget(receiptItem: receiptItem));
    ListItemWidgets.add(_priceDetailWidget(receiptItem: receiptItem));
    ListItemWidgets.add(_ReceiptDescriptionWidget());
    List<Widget> ListItemWidgetsWithDivider = ListItemsWithDivider(
        WidgetList: ListItemWidgets,
        space: 10,
        noSpaceIndices: {
          4
        },
        noDividerIndices: {
          4,5},
        horizontalPad: isFullDivider ? 0 : AppDimen.startMargin);
    return RepaintBoundary(key: boundaryKey, child: ListItemWidgetsWithDivider.toColumn());
  }

  Widget _receiptTitleWidget({required dynamic receiptItem}) {
    String createdAt = getDateFormat(dateFormat: reservationDateformat, milliSec: receiptItem?.createdAt).$1;
    String? name = '';
    if (receiptItem?.guestData != null && (receiptItem?.guestData?.firstName ?? '').toString().isNotEmpty) {
      name = receiptItem?.guestData?.firstName;
    }
    return [
      CustomText(
        text: '${appPreference.isOwner! ? label_receipt.tr : sheet_title_customer_receipt.tr}: #${receiptItem?.id}',
        size: AppDimen.textSize_22,
        fontWeight: AppFont.semiBold,
        textDirection: TextDirection.ltr,
      ),
      6.toHeight(),
      CustomText(
        text: createdAt,
        size: AppDimen.textSize_16,
        fontWeight: AppFont.regular,
        textDirection: TextDirection.ltr,
      ),
      10.toHeight(),
      toOnTap(
        
          child: CustomHeaderWithLabelText(
              labelText: name,
              headerText: label_booked_by.tr,
              verticalPad: _itemPadding / 2,
              labelColor: appColors.customTextColor)),
      10.toHeight(),
      _userconfirmationCodeWidget(receiptItem: receiptItem),
    ].toColumn().toPad(horizontal: AppDimen.startMargin);
  }

  Widget _userconfirmationCodeWidget({dynamic receiptItem}) {
    int? confirmationCode = 0;
    if (receiptItem?.confirmationCode != null &&
        (receiptItem?.confirmationCode ?? '').toString().isNotEmpty) {
      confirmationCode = receiptItem?.confirmationCode;
    }
    return CustomHeaderWithLabelText(
        labelText: '\u200e#$confirmationCode\u200e',
        headerText: label_reservation_code.tr,
        verticalPad: _itemPadding / 2,
        labelColor: appColors.customTextColor);
  }

  Widget _userTravelDestinationWidget({dynamic receiptItem}) {
    String? city = '';
    if (receiptItem?.listData != null && receiptItem?.listData?.city != null) {
      city = receiptItem?.listData?.city;
    }
    return CustomHeaderWithLabelText(
        labelText: city, headerText: label_destination.tr, verticalPad: _itemPadding / 2);
  }

  Widget _bookingDurationWidget({dynamic receiptItem}) {
    int reservationNights = 1;
    if (receiptItem?.days != null) {
      reservationNights = receiptItem?.days ?? 1;
    }
    return CustomHeaderWithLabelText(
        labelText: '$reservationNights ${label_day.trPlural(dayPlural.tr, reservationNights)}',
        headerText: label_receipt_title_duration.tr,
        verticalPad: _itemPadding / 2);
  }

  Widget _AccomodationInfoWidget({dynamic receiptItem}) {
    return [
      CustomTitleText(
        text: label_vehicle_details.tr,
        size: AppDimen.textSize_18,
        fontWeight: AppFont.medium,
      ),
      _itemPadding.toHeight(),
      _accomodationHostWidget(receiptItem: receiptItem),
      10.toHeight(),
      _carTypeWidget(receiptItem: receiptItem),
      10.toHeight(),
      _accomodationAddressWidget(receiptItem: receiptItem),
    ].toColumn().toPad(horizontal: AppDimen.startMargin);
  }

  Widget _TripDetailsWidget({dynamic receiptItem}) {
    return [
      CustomTitleText(
        text: label_trip_details.tr,
        size: AppDimen.textSize_18,
        fontWeight: AppFont.medium,
      ),
      _itemPadding.toHeight(),
      basecontroller.reservationDateInfo(
          checkinDate: receiptItem?.checkIn ?? '',
          checkoutDate: receiptItem?.checkOut ?? '',
          checkinTime: receiptItem?.startTime.toString() ?? '',
          checkoutTime: receiptItem?.endTime.toString() ?? '',
          headerFontSize: 16,
          headerFontWeight: AppFont.medium),
      10.toHeight(),
      _bookingDurationWidget(receiptItem: receiptItem),
      10.toHeight(),
      _userTravelDestinationWidget(receiptItem: receiptItem)
    ].toColumn().toPad(horizontal: AppDimen.startMargin);
  }

  Widget _renterInfoWidget({dynamic receiptItem}) {
    return [
      CustomTitleText(
        text: label_renter_info.tr,
        size: AppDimen.textSize_18,
        fontWeight: AppFont.medium,
      ),
      _itemPadding.toHeight(),
      CustomHeaderWithLabelText(
        headerText: label_renter_name.tr,
        labelText: receiptItem?.firstName,
        verticalPad: 4,
        headerFontSize: AppDimen.textSize_16,
        labelFontSize: AppDimen.textSize_14
      ),
      12.toHeight(),
      CustomHeaderWithLabelText(
        headerText: label_dob.tr,
        labelText: receiptItem?.dateOfBirth,
        verticalPad: 4,
        headerFontSize: AppDimen.textSize_16,
        labelFontSize: AppDimen.textSize_14
      ),
      12.toHeight(),
      CustomHeaderWithLabelText(
        headerText: label_license_number.tr,
        labelText: receiptItem?.licenseNumber,
        verticalPad: 4,
        headerFontSize: AppDimen.textSize_16,
        labelFontSize: AppDimen.textSize_14
      ),
      12.toHeight(),
      CustomHeaderWithLabelText(
        headerText: payout_country.tr,
        labelText: receiptItem?.countryLabel,
        verticalPad: 4,
        headerFontSize: AppDimen.textSize_16,
        labelFontSize: AppDimen.textSize_14
      ),
    ].toColumn().toPad(horizontal: AppDimen.startMargin);
  }

  Widget _accomodationAddressWidget({dynamic receiptItem}) {
    String? address = '';
    if (receiptItem?.listData != null) {
      address = _controller?.getAddressText(itemInfo: receiptItem?.listData, isAfterBooking: true);
    }
    return CustomHeaderWithLabelText(
        labelText: address, headerText: label_location.tr, verticalPad: _itemPadding / 2);
  }

  Widget _accomodationHostWidget({dynamic receiptItem}) {
    String? name = '';
    if (receiptItem?.hostData != null && (receiptItem?.hostData?.firstName ?? '').toString().isNotEmpty) {
      name = receiptItem?.hostData?.firstName;
    }
    return CustomHeaderWithLabelText(
        labelText: name,
        headerText: '${label_owner.tr} ${label_receipt_title_name.tr.toLowerCase()}',
        verticalPad: _itemPadding / 2);
  }

  Widget _carTypeWidget({dynamic receiptItem}) {
    String? carType = '';
    if (receiptItem?.listData != null) {
      carType = receiptItem?.listData?.carType ?? '';
    }
    return CustomHeaderWithLabelText(
        labelText: carType, headerText: label_car_type.tr, verticalPad: _itemPadding / 2);
  }

  Widget _priceDetailWidget({dynamic receiptItem}) {
    String currencySymbol = _controller!.getCurrencySymbol();
    String convertedCurrency = receiptItem!.currency ?? defaultCurrency;
    int days = receiptItem.days ?? 1;

    // Pre-format all amounts like _billingInfo in reservation_detail.dart
    String billingAmountForOneDay = (receiptItem.isSpecialPriceAssigned ?? false)
        ? double.parse((receiptItem.isSpecialPriceAverage)?.toString() ?? '0').currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: 'en')
        : double.parse((receiptItem.basePrice)?.toString() ?? '0').currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: 'en');
    String billingAmount = (receiptItem.isSpecialPriceAssigned ?? false)
        ? double.parse(((receiptItem.isSpecialPriceAverage ?? 0) * days).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol)
        : double.parse(((receiptItem.basePrice ?? 0) * days).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol);
    String weeklyDiscount = double.parse((receiptItem.discount ?? 0).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol);
    String couponDiscount = double.parse((receiptItem.promoDiscount ?? 0).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol);
    String serviceFee = double.parse(((appPreference.isOwner! ? receiptItem.hostServiceFee : receiptItem.guestServiceFee) ?? 0).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol);
    String securityDeposit = double.parse((receiptItem.securityDeposit ?? 0).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol);
    String claimRefund = double.parse((receiptItem.claimRefund ?? 0).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol);
    String claimPayout = double.parse((receiptItem.claimPayout ?? 0).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol);
    String totalPaid = double.parse(((appPreference.isOwner! ? receiptItem.total : (receiptItem.totalWithGuestServiceFee ?? receiptItem.total))).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol);
    String actualEarnings = double.parse((receiptItem.cancellationDetails?.payoutToHost ?? 0).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol);
    String estimatedEarnings;
    if (appPreference.isOwner! && (receiptItem.promoCode != null) && receiptItem.promoCodeType != null && !receiptItem.promoCodeType!) {
      estimatedEarnings = double.parse((((receiptItem.totalWithoutSecurityFee ?? 0) - (receiptItem.hostServiceFee ?? 0)) + (receiptItem.promoDiscount ?? 0)).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol);
    } else {
      estimatedEarnings = double.parse(((receiptItem.totalWithoutSecurityFee ?? 0) - (receiptItem.hostServiceFee ?? 0)).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol);
    }

    Widget receiptInfoWidget = [
      6.toHeight(),
      _commonBillingRow(
        isRTL: _controller?.isRTL() ?? false,
        toolTipContent: (receiptItem.isSpecialPriceAssigned ?? false) ? label_spl_price_tooltip_content.tr : null,
        title: (_controller?.isRTL() ?? false)
            ? '$billingAmountForOneDay x ${label_day.trPlural(dayPlural.tr, days)} $days'
            : '$billingAmountForOneDay x $days ${label_day.trPlural(dayPlural.tr, days)}',
        value: billingAmount,
      ).toPad(horizontal: (isPaddedContent ?? false) ? _horizontalPadding : 0),
      if ((receiptItem.discount ?? 0) > 0)
        _commonBillingRow(
          title: '$discountlabel',
          value: weeklyDiscount,
          isDiscount: true,
        ).toPad(horizontal: (isPaddedContent ?? false) ? _horizontalPadding : 0),
      if (!appPreference.isOwner! && (receiptItem.promoCode != null) && (receiptItem.promoCode != ""))
        _commonBillingRow(
          toolTipContent: receiptItem.promoCodeDescription ?? "",
          title: receiptItem.promoCode ?? "",
          value: couponDiscount,
          isDiscount: true,
        ).toPad(horizontal: (isPaddedContent ?? false) ? _horizontalPadding : 0),
      if (appPreference.isOwner! &&
          (receiptItem.promoCode != null) &&
          receiptItem.promoCodeType != null &&
          receiptItem.promoCodeType!)
        _commonBillingRow(
          toolTipContent: receiptItem.promoCodeDescription ?? "",
          title: receiptItem.promoCode ?? "",
          value: couponDiscount,
          isDiscount: true,
        ).toPad(horizontal: (isPaddedContent ?? false) ? _horizontalPadding : 0),
      for (final line in receiptOptionLines(receiptItem))
        _commonBillingRow(
          title: bookingOptionReceiptLabel(line),
          value: line.amount
              .currencyConverted(convertedCurrency: line.currency ?? convertedCurrency)
              .toNumberFormat(symbol: currencySymbol),
        ).toPad(horizontal: (isPaddedContent ?? false) ? _horizontalPadding : 0),
      if ((appPreference.isOwner! ? receiptItem.hostServiceFee : receiptItem.guestServiceFee) != null &&
          (appPreference.isOwner! ? receiptItem.hostServiceFee : receiptItem.guestServiceFee) != 0)
        _commonBillingRow(
          title: label_service_fee.tr,
          value: serviceFee,
          isDiscount: appPreference.isOwner!,
        ).toPad(horizontal: (isPaddedContent ?? false) ? _horizontalPadding : 0),
      if ((receiptItem.securityDeposit ?? 0) > 0 && !appPreference.isOwner!)
        _commonBillingRow(
          title: label_security_deposit.tr,
          value: securityDeposit,
        ).toPad(horizontal: (isPaddedContent ?? false) ? _horizontalPadding : 0),
      if((appPreference.isOwner! && (receiptItem.promoCode == null)) ||
          (appPreference.isOwner! && (receiptItem.promoCode != null) && receiptItem.promoCodeType != null && receiptItem.promoCodeType!) ||
          ((appPreference.isOwner! && (receiptItem.promoCode != null) && receiptItem.promoCodeType != null && !receiptItem.promoCodeType!)) ||
          (appPreference.isOwner! && (isFromTransactionVar ?? false) && ((receiptItem.cancellationDetails?.payoutToHost ?? 0) > 0) && receiptItem.reservationState != "completed"))...[
            filterDivider
      ],
      if (appPreference.isOwner! && (receiptItem.promoCode == null))
        _commonBillingRow(
          title: _getEarningsTitle(status: receiptItem.reservationState),
          value: estimatedEarnings,
          titleFontWeight: AppFont.medium,
          valueFontWeight: AppFont.medium,
        ).toPad(horizontal: (isPaddedContent ?? false) ? _horizontalPadding : 0),
      if (appPreference.isOwner! &&
          (receiptItem.promoCode != null) &&
          receiptItem.promoCodeType != null &&
          receiptItem.promoCodeType!)
        _commonBillingRow(
          title: _getEarningsTitle(status: receiptItem.reservationState),
          value: estimatedEarnings,
          titleFontWeight: AppFont.medium,
          valueFontWeight: AppFont.medium,
        ).toPad(horizontal: (isPaddedContent ?? false) ? _horizontalPadding : 0),
      if (appPreference.isOwner! &&
          (receiptItem.promoCode != null) &&
          receiptItem.promoCodeType != null &&
          !receiptItem.promoCodeType!)
        _commonBillingRow(
          title: _getEarningsTitle(status: receiptItem.reservationState),
          value: estimatedEarnings,
          titleFontWeight: AppFont.medium,
          valueFontWeight: AppFont.medium,
        ).toPad(horizontal: (isPaddedContent ?? false) ? _horizontalPadding : 0),
      if (appPreference.isOwner! && ((receiptItem.cancellationDetails?.payoutToHost ?? 0) > 0) && receiptItem.reservationState != "completed")...[
        filterDivider,
        _commonBillingRow(
          title: label_actual_earnings.tr,
          value: actualEarnings,
          titleFontWeight: AppFont.medium,
          valueFontWeight: AppFont.medium,
        ).toPad(horizontal: (isPaddedContent ?? false) ? _horizontalPadding : 0)
      ],
      if((appPreference.isOwner! && (receiptItem.promoCode == null)) ||
          (appPreference.isOwner! && (receiptItem.promoCode != null) && receiptItem.promoCodeType != null && receiptItem.promoCodeType!) ||
          ((appPreference.isOwner! && (receiptItem.promoCode != null) && receiptItem.promoCodeType != null && !receiptItem.promoCodeType!)) ||
          (appPreference.isOwner! && (isFromTransactionVar ?? false) && ((receiptItem.cancellationDetails?.payoutToHost ?? 0) > 0) && receiptItem.reservationState != "completed"))...[
        if(overALLThemeType == 2) ...[
          filterDivider
        ]
      ],
      if (!appPreference.isOwner!)...[
        filterDivider,
        _commonBillingRow(
          title: label_total.tr.toUpperLowerCase(),
          value: totalPaid,
          titleFontWeight: AppFont.medium,
          valueFontWeight: AppFont.medium,
        ).toPad(horizontal: (isPaddedContent ?? false) ? _horizontalPadding : 0),
        if (overALLThemeType == 2) filterDivider,
      ],
      6.toHeight(),
    ].toColumn();

    Widget claimDetailsWidget = [
      6.toHeight(),
      if ((receiptItem.securityDeposit ?? 0) > 0)
        _commonBillingRow(
          title: label_security_deposit.tr,
          value: securityDeposit,
        ).toPad(horizontal: (isPaddedContent ?? false) ? _horizontalPadding : 0),
      if (((receiptItem.claimPayout ?? 0) > 0) && appPreference.isOwner!)...[
        _commonBillingRow(
          title: "label_claim_amount_obtained".tr,
          value: claimPayout,
        ).toPad(horizontal: (isPaddedContent ?? false) ? _horizontalPadding : 0),
        CustomText(
          text: getDateFormat(dateFormat: reservationDateformat, milliSec: receiptItem.claimRefundedAt).$1,
          size: AppDimen.textSize_14,
        ).toPad(start: (showBillingBorder ?? false) ? 10 : 0)
      ],
      if (((receiptItem.claimRefund ?? 0) > 0) && !appPreference.isOwner!)...[
        _commonBillingRow(
          title: "label_claim_amount_refunded".tr,
          value: claimRefund,
        ).toPad(horizontal: (isPaddedContent ?? false) ? _horizontalPadding : 0),
        CustomText(
          text: getDateFormat(dateFormat: reservationDateformat, milliSec: receiptItem.claimRefundedAt).$1,
          size: AppDimen.textSize_14,
        ).toPad(start: (showBillingBorder ?? false) ? 10 : 0)
      ],
      6.toHeight(),
    ].toColumn();

    return [
      CustomTitleText(
        text: billing.tr,
        size: AppDimen.textSize_18,
        fontWeight: AppFont.medium,
      ).toPad(bottom: (showBillingBorder ?? false) ? 10 : 0),
      (showBillingBorder ?? false)
          ? CustomBorderContainer(
              padding: pad(
                  top: (showBillingColor ?? false)
                      ? overALLThemeType == 3
                          ? 0
                          : 12
                      : 0,
                  bottom: (showBillingColor ?? false)
                      ? overALLThemeType == 3
                          ? 0
                          : 12
                      : 0),
              borderColor: appColors.myTripsDividerColor,
              color: (showBillingColor ?? false) ? appColors.viewMessageReceiverBGColor : null,
              borderRadius: billingBorderRadius,
              body: receiptInfoWidget,
            )
          : Container(
              padding: pad(top: (showBillingColor ?? false) ? 12 : 0, bottom: (showBillingColor ?? false) ? 12 : 0),
              color: (showBillingColor ?? false) ? appColors.viewMessageReceiverBGColor : null,
              child: receiptInfoWidget,
            ),
      if ((receiptItem.securityDeposit ?? 0) > 0)...[
        18.toHeight(),
        CustomTitleText(
          text: "label_security_deposit_details".tr,
          size: AppDimen.textSize_18,
          fontWeight: AppFont.medium,
        ).toPad(bottom: (showBillingBorder ?? false) ? 10 : 0),
        (showBillingBorder ?? false)
            ? CustomBorderContainer(
          padding: pad(
              top: (showBillingColor ?? false)
                  ? overALLThemeType == 3
                  ? 0
                  : 12
                  : 0,
              bottom: (showBillingColor ?? false)
                  ? overALLThemeType == 3
                  ? 0
                  : 12
                  : 0),
          borderColor: appColors.myTripsDividerColor,
          color: (showBillingColor ?? false) ? appColors.viewMessageReceiverBGColor : null,
          borderRadius: billingBorderRadius,
          body: claimDetailsWidget,
        ) : Container(
          padding: pad(top: (showBillingColor ?? false) ? 12 : 0, bottom: (showBillingColor ?? false) ? 12 : 0),
          color: (showBillingColor ?? false) ? appColors.viewMessageReceiverBGColor : null,
          child: claimDetailsWidget,
        ),
      ],
      18.toHeight(),
      if (!appPreference.isOwner!) ...[
        CustomTitleText(
          text: label_payment.tr,
          size: AppDimen.textSize_18,
          fontWeight: AppFont.medium,
        ),
        _PaymentReceivedWidget(receiptItem: receiptItem),
        filterDivider.toPad(vertical: 12)
      ]
    ].toColumn().toPad(horizontal: AppDimen.startMargin);
  }

  void _printReceipt(
      {required dynamic receiptItem, required Map<String, dynamic> resources}) async {
    final doc = pw.Document(
      title: sheet_title_customer_receipt.tr,
    );

    doc.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pdflayout.ReceiptPDFLayout(
            isFromTransaction: isFromTransactionVar,
            receiptItem: receiptItem!,
            controller: _controller!,
            resources: resources
          );
        }
      )
    );

    await Printing.layoutPdf(
        name: sheet_title_customer_receipt.tr,
        usePrinterSettings: true,
        onLayout: (PdfPageFormat format) async => doc.save());
  }

  Widget _PaymentReceivedWidget({dynamic receiptItem}) {
    String paymentdate =
        getDateFormat(dateFormat: reservationDateformat, milliSec: receiptItem?.updatedAt).$1;

    return [
      CustomHeaderWithLabelText(
              labelText: '\u200e$paymentdate\u200e',
              headerText: appPreference.isOwner! ? label_receipt_title_payment_received.tr : label_paid.tr,
              headerFontSize: AppDimen.textSize_16,
              headerFontWeight: AppFont.medium,
              verticalPad: _itemPadding / 2,
              labelColor: appColors.customTextColor,
              labelFontSize: AppDimen.textSize_16,
              labelFontWeight: AppFont.medium)
          .toStretch(),
      CustomText(
        symbol: _controller!.getCurrencySymbol(),
        text: double.parse((appPreference.isOwner! ? receiptItem?.total : (receiptItem?.totalWithGuestServiceFee ?? receiptItem?.total)).toString()).currencyConverted(convertedCurrency: receiptItem?.currency ?? defaultCurrency).toNumberFormat(symbol: _controller!.getCurrencySymbol()),
        size: AppDimen.textSize_16,
        fontWeight: FontWeight.normal,
      ),
    ].toRow(crossAxisAlignment: CrossAxisAlignment.end).toPad(top: 10);
  }

  Widget _ReceiptDescriptionWidget() {
    return CustomText(
      text: label_desc_customer_receipt.trParams({'field': '\u200e$APP_NAME\u200e'}),
      color: appColors.customTextColor,
      size: AppDimen.textSize_14,
      fontWeight: AppFont.regular,
    ).toPad(horizontal: AppDimen.startMargin, bottom: Platform.isIOS ? 24 : 20);
  }

  String _getEarningsTitle({String? status}) {
    switch (status) {
      case "completed":
        return label_earnings.tr;
      default:
        return label_estimated_earnings.tr;
    }
  }
  dynamic _getToolTips({required String toolTipContent, required Color toolTipColor}){

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
        content: toolTipContent
    );

    return  getToolTipWidget(
      customShapePointer: customShapePointer,
      startMargin: 0,
      controller: _controller!,
      globalKey:  RectGetter.createGlobalKey(),
      pagetype: 'profile',
      overlayWidget: Assets.drawableInfoToolTip.toSVG(size: 13, fit: BoxFit.scaleDown, colour: toolTipColor),
    );
  }

  Widget _commonBillingRow({required String title, required String value, FontWeight? titleFontWeight, FontWeight? valueFontWeight, bool isDiscount = false, String? toolTipContent, bool isRTL = false}) {
    Color valueColor = (isDiscount && (title != label_service_fee.tr)) ? appColors.discountAmountColor : appColors.customTextColor;
    return <Widget>[
      <Widget>[
        toolTipContent != null ? _getToolTips(
          toolTipContent: toolTipContent,
          toolTipColor: appColors.secondaryColor
        ) : 0.toHeight(),
        toolTipContent != null ? 4.toWidth() : SizedBox.shrink(),
        CustomText(
          textAlign: isRTL ? TextAlign.end : TextAlign.start,
          textDirection: isRTL ? TextDirection.ltr : null,
          text: title,
          size: AppDimen.textSize_14,
          fontWeight: titleFontWeight ?? AppFont.regular,
          color: (isDiscount && (title != label_service_fee.tr)) ? appColors.discountAmountColor : appColors.customTextColor,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ).toStretch(isExpanded: true)
      ].toRow(mainAxisAlignment: MainAxisAlignment.start, mainAxisSize: MainAxisSize.max).toStretch(isExpanded: true),
      [
        if (isDiscount)
          Text(
            '-',
            style: TextStyle(
                color: valueColor,
                fontWeight: valueFontWeight ?? AppFont.regular,
                fontSize: AppDimen.textSize_14,
                fontFamily: AppFont.font),
          ),
        CustomText(
          text: value,
          size: AppDimen.textSize_14,
          color: valueColor,
          fontWeight: valueFontWeight ?? AppFont.regular,
          symbol: _controller?.getCurrencySymbol(),
        ),
      ].toRow(mainAxisSize: MainAxisSize.min).toPad(start: 10),
    ].toRow(crossAxisAlignment: CrossAxisAlignment.start).toPad(vertical: 6);
  }
}