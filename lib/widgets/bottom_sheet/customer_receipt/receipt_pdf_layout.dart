import 'package:gozy/utils/booking_options.dart';
import 'package:gozy/utils/booking_options_i18n.dart';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:gozy/constant.dart';
import 'package:gozy/graphql/__generated__/reservation_fragment.data.gql.dart';
import 'package:gozy/resources/app_colors.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/custom_text.dart';

import '../../../config/client.dart';

List<pw.Widget> ReceiptPDFLayout(
    {required GreservationFragmentData receiptItem,
    required BaseController controller,
    bool? isFromTransaction,
    required Map<String, dynamic> resources}) {
  return [
    _receiptTitleWidget(receiptItem: receiptItem, resources: resources, controller: controller),
    pw.SizedBox(height: 12),
    _userTravelInfoWidget(receiptItem: receiptItem, resources: resources, controller: controller),
    getDivider(),
    _AccomodationInfoWidget(receiptItem: receiptItem, resources: resources, controller: controller),
    getDivider(),
    _TripDetailsWidget(receiptItem: receiptItem, resources: resources, controller: controller),
    pw.SizedBox(height: 16),
    getDivider(),
    _renterInfoWidget(receiptItem: receiptItem, resources: resources, controller: controller),
    getDivider(),
    priceDetailWidget(receiptItem: receiptItem, resources: resources, controller: controller, isFromTransaction: isFromTransaction),
    pw.SizedBox(height: 16),
    if(!appPreference.isOwner!)...[
      PaymentReceivedWidget(receiptItem: receiptItem, resources: resources, controller: controller),
      getDivider(),
    ],
    pw.RichText(
      textAlign: pw.TextAlign.start,
      textDirection: controller.isRTL()? pw.TextDirection.rtl:pw.TextDirection.ltr ,
      text: pw.TextSpan(
        children: () {
          final fullTranslation = label_desc_customer_receipt.trParams({'field': '||SPLIT||'});
          final parts = fullTranslation.split('||SPLIT||');

          List<pw.TextSpan> spans = [];
          for (int i = 0; i < parts.length; i++) {
            if (parts[i].isNotEmpty) {
              spans.add(pw.TextSpan(
                text: parts[i],
                style: pw.TextStyle(
                  color: PdfColor.fromInt(appColors.pdfplaceholderColor.toARGB32()),
                  font: resources['font'],         // Arabic RTL font
                  fontFallback: resources['fontfallback'],
                  fontSize: 12,
                ),
              ));
            }
            if (i < parts.length - 1) {
              spans.add(pw.TextSpan(
                text: ' $APP_NAME ',
                style: pw.TextStyle(
                  color: PdfColor.fromInt(appColors.pdfplaceholderColor.toARGB32()),
                  font: pw.Font.helvetica(),       // Latin font — prevents reversal
                  fontFallback: resources['fontfallback'],
                  fontSize: 12,
                ),
              ));
            }
          }
          return spans;
        }(),
      ),
    ),
  ];
}

pw.Align _receiptTitleWidget({
  required GreservationFragmentData? receiptItem,
  required Map<String, dynamic> resources,
  required BaseController controller,
}) {
  String createdAt = getDateFormat(dateFormat: reservationDateformat, milliSec: receiptItem?.createdAt).$1;
  return pw.Align(
      alignment: controller.isRTL() ? pw.Alignment.centerRight : pw.Alignment.centerLeft,
      child: pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: controller.isRTL() ? pw.CrossAxisAlignment.end : pw.CrossAxisAlignment.start,
          children: [
            pw.Text('${appPreference.isOwner! ? label_receipt.tr : sheet_title_customer_receipt.tr}: #${receiptItem?.id}',
                textDirection: resources["textDirection"],
                style: pw.TextStyle(
                  font: resources['boldfont'],
                  fontSize: 21,
                  fontWeight: pw.FontWeight.bold,
                  fontFallback: resources['fontfallback'],
                )),
            pw.SizedBox(height: 10),
            pw.Text(createdAt,
                style: pw.TextStyle(
                  font: resources['font'],
                  fontWeight: pw.FontWeight.normal,
                  fontSize: 16,
                  fontFallback: resources['fontfallback'],
                )),
          ]),
  );
}

pw.Align _TripDetailsWidget({
  required GreservationFragmentData? receiptItem,
  required Map<String, dynamic> resources,
  required BaseController controller,
}) {
  int reservationNights = 1;
  if (receiptItem?.days != null) {
    reservationNights = receiptItem?.days ?? 1;
  }

  String? city = '';
  if (receiptItem?.listData != null && receiptItem?.listData?.city != null) {
    city = receiptItem?.listData?.city;
  }

  return pw.Align(
      alignment: controller.isRTL() ? pw.Alignment.centerRight : pw.Alignment.centerLeft,
      child: pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: controller.isRTL() ? pw.CrossAxisAlignment.end : pw.CrossAxisAlignment.start,
          children: [
            pw.Text(label_trip_details.tr,
                textDirection: resources["textDirection"],
                style: pw.TextStyle(
                  font: resources['boldfont'],
                  fontSize: 18,
                  fontFallback: resources['fontfallback'],
                  fontWeight: pw.FontWeight.bold,
                )),
            pw.SizedBox(height: 6),
            reservationDateInfo(
                checkinDate: receiptItem?.checkIn ?? '',
                checkoutDate: receiptItem?.checkOut ?? '',
                checkinTime: receiptItem?.startTime.toString() ?? '',
                checkoutTime: receiptItem?.endTime.toString() ?? '',
                resources: resources,
                controller: controller,
                arrowSVG: resources['arrowsvg']!),
            pw.SizedBox(height: 12),
            HeaderLabelText(
                HeaderText: label_receipt_title_duration.tr,
                labelText: '$reservationNights ${label_day.trPlural(dayPlural.tr, reservationNights)}',
                resources: resources,
                verticalPad: 8,
                controller: controller),
            HeaderLabelText(
                labelText: city,
                HeaderText: label_destination.tr,
                resources: resources,
                verticalPad: 8,
                controller: controller),
          ]));
}

pw.Align _renterInfoWidget({
  required GreservationFragmentData? receiptItem,
  required Map<String, dynamic> resources,
  required BaseController controller,
}) {
  return pw.Align(
      alignment: controller.isRTL() ? pw.Alignment.centerRight : pw.Alignment.centerLeft,
      child: pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: controller.isRTL() ? pw.CrossAxisAlignment.end : pw.CrossAxisAlignment.start,
          children: [
            pw.Text(label_renter_info.tr,
                textDirection: resources["textDirection"],
                style: pw.TextStyle(
                  font: resources['boldfont'],
                  fontSize: 18,
                  fontFallback: resources['fontfallback'],
                  fontWeight: pw.FontWeight.bold,
                )),
            pw.SizedBox(height: 6),
            HeaderLabelText(
                labelText: receiptItem?.firstName,
                HeaderText: label_renter_name.tr,
                resources: resources,
                verticalPad: 8,
                controller: controller),
            HeaderLabelText(
                labelText: (receiptItem?.dateOfBirth != null &&
                        (receiptItem?.dateOfBirth ?? '').toString().isNotEmpty)
                    ? (int.tryParse(receiptItem!.dateOfBirth!.toString()) == null
                        ? receiptItem.dateOfBirth
                        : getDateFormat(
                                dateFormat: dobformat,
                                milliSec: receiptItem.dateOfBirth)
                            .$1)
                    : '',
                HeaderText: label_dob.tr,
                resources: resources,
                verticalPad: 8,
                controller: controller),
            HeaderLabelText(
                labelText: receiptItem?.licenseNumber,
                HeaderText: label_license_number.tr,
                resources: resources,
                verticalPad: 8,
                controller: controller),
            HeaderLabelText(
                labelText: receiptItem?.countryLabel,
                HeaderText: payout_country.tr,
                resources: resources,
                verticalPad: 8,
                controller: controller),
          ]));
}

pw.Align _userTravelInfoWidget({
  required GreservationFragmentData? receiptItem,
  required Map<String, dynamic> resources,
  required BaseController controller,
}) {
  String? name = '';
  if (receiptItem?.guestData != null && (receiptItem?.guestData?.firstName ?? '').toString().isNotEmpty) {
    name = receiptItem?.guestData?.firstName;
  }

  int? confirmationCode = 0;
  if (receiptItem?.confirmationCode != null && (receiptItem?.confirmationCode ?? '').toString().isNotEmpty) {
    confirmationCode = receiptItem?.confirmationCode;
  }


  return pw.Align(
      alignment: controller.isRTL() ? pw.Alignment.centerRight : pw.Alignment.centerLeft,
      child: pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: controller.isRTL() ? pw.CrossAxisAlignment.end : pw.CrossAxisAlignment.start,
          children: [
            HeaderLabelText(
                HeaderText: label_booked_by.tr,
                labelText: name,
                resources: resources,
                verticalPad: 8,
                controller: controller),
            HeaderLabelText(
                labelText: '#${confirmationCode.toString()}',
                HeaderText: label_reservation_code.tr,
                resources: resources,
                verticalPad: 8,
                controller: controller),
          ]),
  );
}

pw.Align _AccomodationInfoWidget(
    {GreservationFragmentData? receiptItem,
    required Map<String, dynamic> resources,
    required BaseController controller}) {
  String? name = '';
  String? carType = '';
  String? address = '';
  if (receiptItem?.hostData != null && (receiptItem?.hostData?.firstName ?? '').toString().isNotEmpty) {
    name = receiptItem?.hostData?.firstName;
  }

  if (receiptItem?.listData != null && receiptItem?.listData?.carType != null) {
    carType = receiptItem?.listData?.carType ?? '';
  }

  if (receiptItem?.listData != null) {
    address = basecontroller.getAddressText(itemInfo: receiptItem?.listData, isAfterBooking: true);
  }

  return pw.Align(
      alignment: controller.isRTL() ? pw.Alignment.centerRight : pw.Alignment.centerLeft,
      child: pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: controller.isRTL() ? pw.CrossAxisAlignment.end : pw.CrossAxisAlignment.start,
          children: [
            pw.Text(label_vehicle_details.tr,
                textDirection: resources["textDirection"],
                style: pw.TextStyle(
                  font: resources['boldfont'],
                  fontFallback: resources['fontfallback'],
                  fontSize: AppDimen.textSize_18,
                  fontWeight: pw.FontWeight.bold,
                )),
            pw.SizedBox(height: 10),
            HeaderLabelText(
                labelText: name,
                HeaderText: '${label_owner.tr} ${label_receipt_title_name.tr.toLowerCase()}',
                resources: resources,
                verticalPad: 8,
                controller: controller),
            HeaderLabelText(
                labelText: carType,
                HeaderText: label_car_type.tr,
                resources: resources,
                verticalPad: 8,
                controller: controller),
            HeaderLabelText(
                labelText: address,
                HeaderText: label_location.tr,
                resources: resources,
                verticalPad: 8,
                controller: controller),
          ]));
}

pw.Row reservationDateInfo(
    {required String checkinDate,
    required String checkoutDate,
    required String checkinTime,
    required String checkoutTime,
    required Map<String, dynamic> resources,
    required BaseController controller,
    required dynamic arrowSVG}) {
  String startdate = getDateFormat(dateFormat: reservationDateformat, milliSec: checkinDate).$1;
  String enddate = getDateFormat(dateFormat: reservationDateformat, milliSec: checkoutDate).$1;
  String starttime = controller.getStartTime(checkinTime: checkinTime, checkoutTime: checkoutTime);

  return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.start,
      crossAxisAlignment: pw.CrossAxisAlignment.center,
      children: [
        pw.Expanded(
          child: _customDateTimeView(
            headerText: controller.isRTL() ? label_trip_end.tr : label_trip_start.tr,
            date: controller.isRTL() ? enddate : startdate,
            time: controller.isRTL()
                ? controller.formatBookingTime(checkoutTime)
                : controller.formatBookingTime(checkinTime),
            resources: resources,
            controller: controller,
            crossAxisAlignment: controller.isRTL() ? pw.CrossAxisAlignment.end : pw.CrossAxisAlignment.start,
          ),
        ),
        pw.SizedBox(
          width: AppDimen.startMargin
        ),
        pw.Transform.rotateBox(
          angle: controller.isRTL() ? pi : 0,
          child:
              pw.SvgImage(colorFilter: PdfColor.fromInt(appColors.primaryColor.toARGB32()), svg: '$arrowSVG'),
        ),
        pw.SizedBox(
          width: AppDimen.startMargin
        ),
        pw.Expanded(
          child: _customDateTimeView(
            headerText: controller.isRTL() ? label_trip_start.tr : label_trip_end.tr,
            date: controller.isRTL() ? startdate : enddate,
            time: controller.isRTL()
                ? controller.formatBookingTime(checkinTime)
                : controller.formatBookingTime(checkoutTime),
            resources: resources,
            controller: controller,
            crossAxisAlignment: controller.isRTL() ? pw.CrossAxisAlignment.end : pw.CrossAxisAlignment.start,
          ),
        ),
      ]);
}

pw.Column _customDateTimeView(
    {required String headerText,
    required String date,
    String? time,
    required BaseController controller,
    required Map<String, dynamic> resources,
    required pw.CrossAxisAlignment crossAxisAlignment}) {
  return pw.Column(
    mainAxisSize: pw.MainAxisSize.min,
    crossAxisAlignment: crossAxisAlignment,
    children: [
      pw.Text(headerText,
          textDirection: resources["textDirection"],
          style: pw.TextStyle(
            font: resources['boldfont'],
            fontSize: 16,
            fontWeight: pw.FontWeight.bold,
            fontFallback: resources['fontfallback'],
          )),
      pw.SizedBox(height: 6),
      pw.Text(date,
          style: pw.TextStyle(
            font: resources['font'],
            fontFallback: resources['fontfallback'],
            fontSize: 12,
          )),
      pw.SizedBox(height: 4),
      time != null
          ? pw.SizedBox(
              child: pw.Text(
              time,
              style: pw.TextStyle(
                  font: resources['font'],
                  fontSize: 12,
                  fontFallback: resources['fontfallback'],
                  color: PdfColor.fromInt(appColors.pdfplaceholderColor.toARGB32(),
                  ),
              ),
              textAlign: controller.isRTL() ? pw.TextAlign.end : pw.TextAlign.start,
              maxLines: 4,
            ))
          : pw.SizedBox.shrink(),
    ],
  );
}

pw.Widget priceDetailWidget(
    {required GreservationFragmentData receiptItem,
    required Map<String, dynamic> resources,
      bool? isFromTransaction,
    required BaseController controller}) {
  final String earningsTitle = (receiptItem.reservationState == "completed") ? label_earnings.tr : label_estimated_earnings.tr;
  double fontsize = (maxwidthamountWidget /
      ((double.parse(receiptItem.total.toString()).toNumberFormat(symbol: controller.getCurrencySymbol(), overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en'))
          .toString()
          .length) *
      1.7);
  fontsize = fontsize > 16 ? 16 : fontsize;
  String currencySymbol = controller.getCurrencySymbol();
  String convertedCurrency = receiptItem.currency ?? defaultCurrency;
  int days = receiptItem.days ?? 1;

  // Pre-format all amounts like _billingInfo in reservation_detail.dart
  String billingAmountForOneDay = (receiptItem.isSpecialPriceAssigned ?? false)
      ? double.parse((receiptItem.isSpecialPriceAverage)?.toString() ?? '0').currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en')
      : double.parse((receiptItem.basePrice)?.toString() ?? '0').currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en');
  String billingAmount = (receiptItem.isSpecialPriceAssigned ?? false)
      ? double.parse(((receiptItem.isSpecialPriceAverage ?? 0) * days).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en')
      : double.parse(((receiptItem.basePrice ?? 0) * days).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en');
  String weeklyDiscount = double.parse((receiptItem.discount ?? 0).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en');
  String couponDiscount = double.parse((receiptItem.promoDiscount ?? 0).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en');
  String serviceFee = double.parse(((appPreference.isOwner! ? receiptItem.hostServiceFee : receiptItem.guestServiceFee) ?? 0).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en');
  String securityDeposit = double.parse((receiptItem.securityDeposit ?? 0).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en');
  String claimRefund = double.parse((receiptItem.claimRefund ?? 0).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en');
  String claimPayout = double.parse((receiptItem.claimPayout ?? 0).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en');
  String actualEarnings = double.parse((receiptItem.cancellationDetails?.payoutToHost ?? 0).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en');
  String totalPaid = double.parse(((appPreference.isOwner! ? receiptItem.total : (receiptItem.totalWithGuestServiceFee ?? receiptItem.total))).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en');

  String estimatedEarnings;
  if (appPreference.isOwner! && (receiptItem.promoCode != null) && receiptItem.promoCodeType != null && !receiptItem.promoCodeType!) {
    estimatedEarnings = double.parse((((receiptItem.totalWithoutSecurityFee ?? 0) - (receiptItem.hostServiceFee ?? 0)) + (receiptItem.promoDiscount ?? 0)).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en');
  } else {
    estimatedEarnings = double.parse(((receiptItem.totalWithoutSecurityFee ?? 0) - (receiptItem.hostServiceFee ?? 0)).toString()).currencyConverted(convertedCurrency: convertedCurrency).toNumberFormat(symbol: currencySymbol, overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en');
  }

  return pw.Align(
      alignment: controller.isRTL() ? pw.Alignment.centerRight : pw.Alignment.centerLeft,
      child: pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: controller.isRTL() ? pw.CrossAxisAlignment.end : pw.CrossAxisAlignment.start,
          children: [
            pw.Text(
            billing.tr,
          textDirection: resources["textDirection"],
          style: pw.TextStyle(
            font: resources['boldfont'],
            fontSize: 16,
            fontWeight: pw.FontWeight.bold,
            fontFallback: resources['fontfallback'],
          ),
        ),
        pw.SizedBox(height: 10),
        pw.Container(
            padding: pw.EdgeInsets.all(
                ((resources["showBillingBorder"] ?? false) || (resources["showBillingColor"] ?? false))
                    ? 12
                    : 0),
            decoration: pw.BoxDecoration(
                color: (resources["showBillingColor"] ?? false)
                    ? PdfColor.fromInt(appColors.myTripsBGColor.toARGB32())
                    : null,
                border: resources["showBillingBorder"]
                    ? pw.Border.all(color: PdfColor.fromInt(appColors.replyContainer.toARGB32()))
                    : null,
                borderRadius: pw.BorderRadius.circular(resources["billingBorderRadius"])),
            child: pw.Column(children: [
              pw.SizedBox(height: 6),
              getPriceBreakdownText(
                  label: controller.isRTL() ? '$billingAmountForOneDay x ${label_day.trPlural(dayPlural.tr, days)} $days' : '$billingAmountForOneDay x $days ${label_day.trPlural(dayPlural.tr, days)}',
                  amount: billingAmount,
                  amountFontSize: fontsize,
                  resources: resources,
                  controller: controller,
                  showInfoIcon: receiptItem.isSpecialPriceAssigned ?? false,
                  infoSVG: resources['infosvg'],
                  hideDivider: true),
              if ((receiptItem.discount ?? 0) > 0)
                getPriceBreakdownText(
                    label: '${resources['discountlabel']}',
                    amount: weeklyDiscount,
                    isDiscount: true,
                    amountFontSize: fontsize,
                    resources: resources,
                    controller: controller,
                    hideDivider: true),
              if (!appPreference.isOwner! && (receiptItem.promoCode != null) && (receiptItem.promoCode != ""))
                getPriceBreakdownText(
                  label: receiptItem.promoCode ?? "",
                  amount: couponDiscount,
                  isDiscount: true,
                  amountFontSize: fontsize,
                  resources: resources,
                  controller: controller,
                  showInfoIcon: true,
                  infoSVG: resources['infosvg'],
                  hideDivider: true
                ),
              if (appPreference.isOwner! &&
                  (receiptItem.promoCode != null) &&
                  receiptItem.promoCodeType != null &&
                  receiptItem.promoCodeType!)
                getPriceBreakdownText(
                  label: (receiptItem.promoCode ?? ""),
                  amount: couponDiscount,
                  isDiscount: true,
                  amountFontSize: fontsize,
                  resources: resources,
                  controller: controller,
                  showInfoIcon: true,
                  infoSVG: resources['infosvg'],
                  hideDivider: true
                ),
              for (final line in receiptOptionLines(receiptItem))
                getPriceBreakdownText(
                  label: bookingOptionReceiptLabel(line),
                  amount: line.amount
                      .currencyConverted(convertedCurrency: line.currency ?? convertedCurrency)
                      .toNumberFormat(symbol: currencySymbol, overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en'),
                  amountFontSize: fontsize,
                  resources: resources,
                  controller: controller,
                  hideDivider: true
                ),
              if ((appPreference.isOwner! ? receiptItem.hostServiceFee : receiptItem.guestServiceFee) != null &&
                  (appPreference.isOwner! ? receiptItem.hostServiceFee : receiptItem.guestServiceFee) != 0)
                getPriceBreakdownText(
                  label: label_service_fee.tr,
                  amount: serviceFee,
                  amountFontSize: fontsize,
                  resources: resources,
                  controller: controller,
                  isHostServiceFee: appPreference.isOwner!,
                  hideDivider: true
                ),
              if ((receiptItem.securityDeposit ?? 0) > 0 && !appPreference.isOwner!)...[
                getPriceBreakdownText(
                  label: label_security_deposit.tr,
                  amount: securityDeposit,
                  amountFontSize: fontsize,
                  resources: resources,
                  controller: controller,
                  hideDivider: true
                ),
              ],
              if((appPreference.isOwner! && (receiptItem.promoCode == null)) ||
                 (appPreference.isOwner! && (receiptItem.promoCode != null) && receiptItem.promoCodeType != null && receiptItem.promoCodeType!) ||
                 ((appPreference.isOwner! && (receiptItem.promoCode != null) && receiptItem.promoCodeType != null && !receiptItem.promoCodeType!)) ||
                 (appPreference.isOwner! && (isFromTransaction ?? false) && ((receiptItem.cancellationDetails?.payoutToHost ?? 0) > 0) && receiptItem.reservationState != "completed"))...[
                getDivider()
              ],
              if (appPreference.isOwner! && (receiptItem.promoCode == null))...[
                getPriceBreakdownText(
                    label: earningsTitle,
                    amount: estimatedEarnings,
                    amountFontSize: fontsize,
                    isEstimatedEarning: true,
                    resources: resources,
                    controller: controller,
                    hideDivider: true),
              ],
              if (appPreference.isOwner! &&
                  (receiptItem.promoCode != null) &&
                  receiptItem.promoCodeType != null &&
                  receiptItem.promoCodeType!)...[
                getPriceBreakdownText(
                    label: earningsTitle,
                    amount: estimatedEarnings,
                    amountFontSize: fontsize,
                    isEstimatedEarning: true,
                    resources: resources,
                    controller: controller,
                    hideDivider: true),
              ],
              if (appPreference.isOwner! &&
                  (receiptItem.promoCode != null) &&
                  receiptItem.promoCodeType != null &&
                  !receiptItem.promoCodeType!)...[
                getPriceBreakdownText(
                    label: earningsTitle,
                    amount: estimatedEarnings,
                    amountFontSize: fontsize,
                    isEstimatedEarning: true,
                    resources: resources,
                    controller: controller,
                    hideDivider: true),
              ],
              if (appPreference.isOwner! && ((receiptItem.cancellationDetails?.payoutToHost ?? 0) > 0) && receiptItem.reservationState != "completed")...[
                getDivider(),
                getPriceBreakdownText(
                    label: label_actual_earnings.tr,
                    amount: actualEarnings,
                    amountFontSize: fontsize,
                    isEstimatedEarning: true,
                    resources: resources,
                    controller: controller,
                    hideDivider: true
                ),
              ],
              if((appPreference.isOwner! && (receiptItem.promoCode == null)) ||
                  (appPreference.isOwner! && (receiptItem.promoCode != null) && receiptItem.promoCodeType != null && receiptItem.promoCodeType!) ||
                  ((appPreference.isOwner! && (receiptItem.promoCode != null) && receiptItem.promoCodeType != null && !receiptItem.promoCodeType!)) ||
                  (appPreference.isOwner! && (isFromTransaction ?? false) && ((receiptItem.cancellationDetails?.payoutToHost ?? 0) > 0) && receiptItem.reservationState != "completed"))...[
                if(overALLThemeType == 2)...[
                  getDivider()
                ]
              ],
              if(!appPreference.isOwner!)...[
                getDivider(),
                getPriceBreakdownText(
                    label: label_total.tr.toUpperLowerCase(),
                    amount: totalPaid,
                    isTotal: true,
                    amountFontSize: fontsize,
                    resources: resources,
                    controller: controller,
                    hideDivider: true),
                if(overALLThemeType == 2)
                  getDivider()
              ],
              pw.SizedBox(height: 0),
            ])),
            if ((receiptItem.securityDeposit ?? 0) > 0)...[
              pw.SizedBox(height: 16),
              pw.Text(
                "label_security_deposit_details".tr,
                textDirection: resources["textDirection"],
                style: pw.TextStyle(
                  font: resources['boldfont'],
                  fontSize: 16,
                  fontWeight: pw.FontWeight.bold,
                  fontFallback: resources['fontfallback'],
                ),
              ),
              pw.SizedBox(height: 10),
              pw.Container(
                  padding: pw.EdgeInsets.all(
                      ((resources["showBillingBorder"] ?? false) || (resources["showBillingColor"] ?? false))
                          ? 12
                          : 0),
                  decoration: pw.BoxDecoration(
                      color: (resources["showBillingColor"] ?? false)
                          ? PdfColor.fromInt(appColors.myTripsBGColor.toARGB32())
                          : null,
                      border: resources["showBillingBorder"]
                          ? pw.Border.all(color: PdfColor.fromInt(appColors.replyContainer.toARGB32()))
                          : null,
                      borderRadius: pw.BorderRadius.circular(resources["billingBorderRadius"])),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                    pw.SizedBox(height: 6),
                    if ((receiptItem.securityDeposit ?? 0) > 0)...[
                      getPriceBreakdownText(
                        label: label_security_deposit.tr,
                        amount: securityDeposit,
                        amountFontSize: fontsize,
                        resources: resources,
                        controller: controller,
                        hideDivider: true
                      ),
                    ],
                    if (((receiptItem.claimPayout ?? 0) > 0) && appPreference.isOwner!)...[
                      getPriceBreakdownText(
                          label: "label_claim_amount_obtained".tr,
                          amount: claimPayout,
                          amountFontSize: fontsize,
                          resources: resources,
                          controller: controller,
                          hideDivider: true
                      ),
                      pw.Text(
                        getDateFormat(dateFormat: reservationDateformat, milliSec: receiptItem.claimRefundedAt).$1,
                        textDirection: resources["textDirection"],
                        style: pw.TextStyle(
                          font: resources['boldfont'],
                          fontSize: 14,
                          fontFallback: resources['fontfallback'],
                        ),
                      ),
                    ],
                    if (((receiptItem.claimRefund ?? 0) > 0) && !appPreference.isOwner!)...[
                      getPriceBreakdownText(
                        label: "label_claim_amount_refunded".tr,
                        amount: claimRefund,
                        amountFontSize: fontsize,
                        resources: resources,
                        controller: controller,
                        hideDivider: true
                      ),
                      pw.Text(
                        getDateFormat(dateFormat: reservationDateformat, milliSec: receiptItem.claimRefundedAt).$1,
                        textDirection: resources["textDirection"],
                        style: pw.TextStyle(
                          font: resources['boldfont'],
                          fontSize: 14,
                          fontFallback: resources['fontfallback'],
                        ),
                      ),
                    ],
                  ]
                )
              )
            ],
      ]));
}

pw.Widget PaymentReceivedWidget(
    {required GreservationFragmentData receiptItem,
    required Map<String, dynamic> resources,
    required BaseController controller}) {
  String paymentdate = getDateFormat(dateFormat: reservationDateformat, milliSec: receiptItem.updatedAt).$1;
  final headerWidget = pw.Text(paymentdate,
      // textDirection: resources["textDirection"],
      style: pw.TextStyle(
          font: resources['font'],
          fontFallback: resources['fontfallback'],
          fontSize: AppDimen.textSize_14,
          fontWeight: pw.FontWeight.normal));
  final amountWidget = pw.Expanded(
    child: pw.RichText(
      textAlign: controller.isRTL() ? pw.TextAlign.left : pw.TextAlign.right,
      // textDirection: resources["textDirection"],
      text: pw.TextSpan(
          text: '',
          style: pw.TextStyle(
            fontFallback: resources['fontfallback'],
            fontSize: 16,
          ),
          children: toCurrencyTextSpan(
            symbol: controller.getCurrencySymbol(),
            controller: controller,
            resources: resources,
            text:
                double.parse(((appPreference.isOwner! ? receiptItem.total : (receiptItem.totalWithGuestServiceFee ?? receiptItem.total)) ?? 0).toString()).currencyConverted(convertedCurrency: receiptItem.currency ?? defaultCurrency).toNumberFormat(symbol: controller.getCurrencySymbol(), overrideLocale: !controller.isRTL() ? Get.locale?.languageCode : 'en'),
            style: pw.TextStyle(
              fontSize: 16,
            ),
          )),
    ),
  );

  return pw.Align(
      alignment: controller.isRTL() ? pw.Alignment.centerRight : pw.Alignment.centerLeft,
      child: pw.Column(
      crossAxisAlignment: controller.isRTL() ? pw.CrossAxisAlignment.end : pw.CrossAxisAlignment.start,
      children: [
    pw.Text(label_payment.tr,
        textDirection: resources["textDirection"],
        style: pw.TextStyle(
            font: resources['boldfont'],
            fontFallback: resources['fontfallback'],
            fontWeight: pw.FontWeight.bold,
            fontSize: AppDimen.textSize_18)),
    pw.SizedBox(height: 12),
    pw.Text(label_paid.tr,
        textDirection: resources["textDirection"],
        style: pw.TextStyle(
            font: resources['boldfont'],
            fontFallback: resources['fontfallback'],
            fontWeight: pw.FontWeight.bold,
            fontSize: AppDimen.textSize_16)),
    pw.SizedBox(height: 6),
    pw.Row(children: controller.isRTL() ? [amountWidget, headerWidget] : [headerWidget, amountWidget]),
    pw.SizedBox(height: 12),
  ]));
}

pw.SpanningWidget getPriceBreakdownText(
    {required String label,
    required String amount,
    bool? isTotal,
    bool isltrAlign = false,
    bool isHostServiceFee = false,
    bool isDiscount = false,
    bool isEstimatedEarning = false,
    bool showInfoIcon = false,
    String? infoSVG,
    double? amountFontSize,
    required Map<String, dynamic> resources,
    required BaseController controller,
    bool? hideDivider}) {
  PdfColor textColor = PdfColor.fromInt(appColors.pdfplaceholderColor.toARGB32());
  pw.FontWeight fontWeight = pw.FontWeight.normal;
  if (isTotal != null && isTotal) {
    textColor = PdfColor.fromInt(AppColors.staticblack.toARGB32());
  }
  if (isEstimatedEarning) {
    fontWeight = pw.FontWeight.bold;
  }
  PdfColor priceColor = textColor;
  if (isDiscount) {
    textColor = PdfColor.fromInt(appColors.discountAmountColor.toARGB32());
    priceColor = PdfColor.fromInt(appColors.discountAmountColor.toARGB32());
  }
  String amountformat = amount;

  double widthamountWidget =
      (amountformat.length * 16) >= maxwidthamountWidget ? maxwidthamountWidget : (amountformat.length * 16);

  debugPrint('contain: ${label.contains(selectedCurrencySymbol)} --- $isHostServiceFee');
  final labelTextAlign = controller.isRTL() ? pw.TextAlign.right : pw.TextAlign.left;
  final amountTextAlign = controller.isRTL() ? pw.TextAlign.left : pw.TextAlign.right;

  final labelWidget = pw.Expanded(
    child: pw.Align(
      alignment: controller.isRTL() ? pw.Alignment.centerRight : pw.Alignment.centerLeft,
      child: pw.ConstrainedBox(
        constraints: pw.BoxConstraints(maxWidth: 480 - widthamountWidget),
        child: pw.Row(
          mainAxisSize: pw.MainAxisSize.min,
          mainAxisAlignment: controller.isRTL() ? pw.MainAxisAlignment.end : pw.MainAxisAlignment.start,
          children: controller.isRTL()
              ? [
                  label.contains(controller.getCurrencySymbol())
                      ? pw.RichText(
                          maxLines: 3,
                          textAlign: labelTextAlign,
                          text: pw.TextSpan(
                              text: '',
                              style: pw.TextStyle(
                                color: textColor,
                                fontWeight: fontWeight,
                                fontFallback: resources['fontfallback'],
                                fontSize: amountFontSize,
                              ),
                              children: toCurrencyTextSpan(
                                controller: controller,
                                symbol: controller.getCurrencySymbol(),
                                resources: resources,
                                text: label,
                                style: pw.TextStyle(
                                  color: textColor,
                                  fontWeight: fontWeight,
                                  fontSize: amountFontSize,
                                ),
                              )),
                        )
                      : pw.Text(
                          label,
                          textAlign: labelTextAlign,
                          textDirection: intl.Bidi.hasAnyRtl(label) ? resources["textDirection"] : pw.TextDirection.ltr,
                          style: pw.TextStyle(
                            color: textColor,
                            font: resources['font'],
                            fontFallback: resources['fontfallback'],
                            fontWeight: fontWeight,
                            fontSize: amountFontSize,
                          ),
                        ),
                  if (showInfoIcon && infoSVG != null) ...[
                    pw.SizedBox(width: 4),
                    pw.SvgImage(
                        svg: infoSVG,
                        width: 10,
                        height: 10,
                        colorFilter: PdfColor.fromInt(appColors.colorCommonLinkColor.toARGB32())),
                  ],
                ]
              : [
                  if (showInfoIcon && infoSVG != null) ...[
                    pw.SvgImage(
                        svg: infoSVG,
                        width: 10,
                        height: 10,
                        colorFilter: PdfColor.fromInt(appColors.colorCommonLinkColor.toARGB32())),
                    pw.SizedBox(width: 4),
                  ],
                  label.contains(controller.getCurrencySymbol())
                      ? pw.RichText(
                          maxLines: 3,
                          textAlign: labelTextAlign,
                          text: pw.TextSpan(
                              text: '',
                              style: pw.TextStyle(
                                color: textColor,
                                fontWeight: fontWeight,
                                fontFallback: resources['fontfallback'],
                                fontSize: amountFontSize,
                              ),
                              children: toCurrencyTextSpan(
                                controller: controller,
                                symbol: controller.getCurrencySymbol(),
                                resources: resources,
                                text: label,
                                style: pw.TextStyle(
                                  color: textColor,
                                  fontWeight: fontWeight,
                                  fontSize: amountFontSize,
                                ),
                              )),
                        )
                      : pw.Expanded(child: pw.Text(
                          label,
                          textAlign: labelTextAlign,
                          textDirection: intl.Bidi.hasAnyRtl(label) ? resources["textDirection"] : pw.TextDirection.ltr,
                          maxLines: 2,
                          style: pw.TextStyle(
                            color: textColor,
                            font: resources['font'],
                            fontFallback: resources['fontfallback'],
                            fontWeight: fontWeight,
                            fontSize: amountFontSize,
                          ),
                        )),
                ],
        ),
      ),
    ),
  );

  final amountWidget = pw.ConstrainedBox(
    constraints: pw.BoxConstraints(
      maxWidth: maxwidthamountWidget,
    ),
    child: pw.RichText(
      textAlign: amountTextAlign,
      text: pw.TextSpan(
          text: '',
          style: pw.TextStyle(
            color: priceColor,
            fontWeight: fontWeight,
            fontFallback: resources['fontfallback'],
            fontSize: amountFontSize,
          ),
          children: toCurrencyTextSpan(
            controller: controller,
            symbol: controller.getCurrencySymbol(),
            resources: resources,
            text: amount,
            style: pw.TextStyle(
              color: priceColor,
              fontWeight: fontWeight,
              fontSize: amountFontSize,
            ),
            additionalText: isDiscount || isHostServiceFee ? '-' : ''
          )
      ),
    ),
  );
  return amountformat.isNotEmpty
      ? pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: controller.isRTL() ? pw.CrossAxisAlignment.end : pw.CrossAxisAlignment.start,
          children: [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: controller.isRTL() ? [amountWidget, labelWidget] : [labelWidget, amountWidget],
            ),
            pw.SizedBox(height: 10),
            if (!(isTotal != null && isTotal) && !(hideDivider ?? false)) getDivider()
          ],
        )
      : pw.SizedBox.shrink() as pw.SpanningWidget;
}

List<pw.TextSpan> toCurrencyTextSpan({
  required BaseController controller,
  required String symbol,
  required String text,
  String? additionalText,
  required pw.TextStyle style,
  required Map<String, dynamic> resources,
}) {
  String safeText = text
      .replaceAll(RegExp(r'[\u200E\u200F\u202A\u202B\u202C\u200C\u200D]'), '')
      .replaceAll('\u00A0', ' ')
      .replaceAll('\u202F', ' ');

  return [
    if ((additionalText != null && additionalText.isNotEmpty) && !controller.isRTL())
      pw.TextSpan(
        text: "$additionalText ",
        style: style.copyWith(font: resources['font'], fontFallback: resources['fontfallback']),
      ),
    pw.TextSpan(
      text: safeText,
      style: style.copyWith(font: resources['font'], fontFallback: resources['fontfallback']),
    ),
    if ((additionalText != null && additionalText.isNotEmpty) && controller.isRTL())
      pw.TextSpan(
        text: " $additionalText",
        style: style.copyWith(font: resources['font'], fontFallback: resources['fontfallback']),
      ),
  ];
}

pw.Column HeaderLabelText(
    {String? HeaderText,
    String? labelText,
    required Map<String, dynamic> resources,
    double? verticalPad,
    required BaseController controller,
    bool isRTLEnable = false}) {
  return pw.Column(
      mainAxisAlignment: pw.MainAxisAlignment.start,
      crossAxisAlignment: controller.isRTL() ? pw.CrossAxisAlignment.end : pw.CrossAxisAlignment.start,
      children: [
        if (HeaderText != null)
          pw.Text(HeaderText,
              textDirection: resources["textDirection"],
              style: pw.TextStyle(
                font: resources['boldfont'],
                fontSize: 16,
                fontFallback: resources['fontfallback'],
                fontWeight: pw.FontWeight.bold,
              )),
        pw.SizedBox(height: verticalPad ?? 10),
        if (labelText != null)
          pw.Text(
            labelText,
            textDirection: isRTLEnable ? resources["textDirection"] : pw.TextDirection.ltr,
            style: pw.TextStyle(
              font: resources['font'],
              fontSize: 14,
              fontFallback: resources['fontfallback'],
              color: PdfColor.fromInt(appColors.pdfplaceholderColor.toARGB32()),
              fontWeight: pw.FontWeight.normal,
            ),
          ),
        pw.SizedBox(height: 16),
      ]);
}

pw.Padding getDivider() {
  return pw.Padding(
      padding: pw.EdgeInsetsDirectional.only(bottom: 10),
      child: pw.Divider(
        height: 1,
        thickness: 1,
        color: PdfColor.fromInt(appColors.filterDividerColor.toARGB32()),
      ));
}