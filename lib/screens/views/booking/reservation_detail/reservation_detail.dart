import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/screens/views/booking/booking_navigator.dart';
import 'package:gozy/screens/views/booking/reservation_detail/reservation_detail_controller.dart';
import 'package:gozy/screens/views/home/home_controller.dart';
import 'package:gozy/widgets/common/custom_container/custom_border_container.dart';
import 'package:gozy/widgets/common/custom_network_image/custom_clip_network_image.dart';
import 'package:gozy/widgets/common/custom_painter/custom_tooltip_painter.dart';
import 'package:gozy/widgets/common/custom_text/custom_showmore_text.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/common/custom_text/custom_user_profile_info_text.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/common/custom_container/custom_container.dart';
import 'package:gozy/widgets/custom_stateful_widget.dart';
import 'package:gozy/widgets/bottom_sheet/customer_receipt/customer_receipt_bottom_sheet.dart';
import 'package:gozy/widgets/dotted_border/dotted_border.dart';
import 'package:gozy/widgets/bottom_sheet/host_and_reviews_info/host_review_bottom_sheet.dart';

import '../../../../app.dart';
import '../../../../config/client.dart';
import '../../../../constant.dart';
import '../../../../resources/app_dimen.dart';

import '../../../../resources/app_lang.dart';
import '../../../../widgets/custom_text.dart';
import '../../../../widgets/custom_tool_tip.dart';
import '../../../../widgets/rect_getter.dart';
import '../../base_controller.dart';
import '../../custom_scaffold.dart';


class ReservationDetail extends CustomStatefulWidget {
   const ReservationDetail({super.key});

  @override
  ReservationDetailState createState() => ReservationDetailState();
}

class ReservationDetailState extends CustomStatefulWidgetState<ReservationDetail> {
  ReservationDetailController controller = Get.find();
  String? symbol;
  String page = 'booking';
  List backNavigationList = ['triplist','appReview'];
  double? imageAndBillingBorderRadius;
  double? containerBorderRadius;
  Color? containerColor;
  Color? billingContainerColor;
  Color? billingBorderColor;
  String? carTypeIcon;

  double? svgSize;
  String? transmissionIcon;
  bool _isDottedBorder = false;

  @override
  void initState() {
    Map<String,dynamic> arguments = Get.arguments;
    controller.itemInfo = arguments['itemInfo'];
    controller.reservationId = arguments['reservationId'];
    controller.reservationResult = controller.getReservationInfo(reservationId: controller.reservationId).$1;
    if (controller.reservationResult?.threadData == null) {
      controller.checkNetwork(controller.getReservation);
    }
    if(arguments['page'] !=null && arguments['page'].toString().isNotEmpty) {
      page = arguments['page'];
    }
    symbol = controller.getCurrencySymbol();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    setItineraryTheme();
    if(overALLThemeType ==4){
      _isDottedBorder = true;
    }

    return CustomScaffold(
      controller: controller,
      isShowAppBar: true,
      isShowBGOnLoader: false,
      loader: LottieLoaders.three_dots_loader,
      resizeToAvoidBottomInset: true,
      backIconWidget:
          getBackIconWidget( themeType: overALLThemeType, onTap: (){
            if(backNavigationList.contains(page)) {
              Get.back();
            } else {
              controller.bookingnavigator.navigateScreen(BookingScreen.guestHome, '');
            }
          }),
      customAppBarFunction: (){
        HomeController homeController = Get.find();
        homeController.isLoading.value = false;
        if(backNavigationList.contains(page)) {
          Get.back();
        } else {
          controller.bookingnavigator.navigateScreen(BookingScreen.guestHome, '');
        }
      },
      body: showContentWidget(),
    );
  }

  void setItineraryTheme() {
    containerColor = appColors.theme4AppBarBg;
    switch(overALLThemeType) {
      case 1:
        imageAndBillingBorderRadius = 6;
        containerBorderRadius = 6;
        billingBorderColor = appColors.myTripsDividerColor;
        carTypeIcon = Assets.viewcarsViewcarCartype;
        svgSize = 15;
        break;
      case 2:
        imageAndBillingBorderRadius = 0;
        containerBorderRadius = 0;
        billingBorderColor = Colors.transparent;
        break;
      case 3:
        imageAndBillingBorderRadius = 18;
        containerBorderRadius = 30;
        containerColor = appColors.myTripsBGColor;
        billingContainerColor = appColors.myTripsBGColor;
        carTypeIcon = Assets.theme3CarType;
        transmissionIcon = Assets.theme3Transmission;
        break;
      case 4:
        imageAndBillingBorderRadius = 12;
        containerBorderRadius = 12;
        billingBorderColor = appColors.myTripsDividerColor;
        carTypeIcon = Assets.theme4ExploreCartype;
        transmissionIcon = Assets.viewcarsViewcarTransmission;
        svgSize = 14;
        break;
      default:
        imageAndBillingBorderRadius = 12;
        containerBorderRadius = 12;
        billingBorderColor = appColors.myTripsDividerColor;
        break;
    }

  }

  Widget showContentWidget() {
    List<Widget> filterwidgets = [];
    filterwidgets.add(_hostListingInfo());
     filterwidgets.add(_billingInfo());
     filterwidgets.add(_billingAddressInfo());
     filterwidgets.add(_hostProfileInfo());
    return toListScroll(WidgetList: filterwidgets,padding: pad(w: AppDimen.startMargin), isFromItinerary: overALLThemeType == 4 ? true : false);
  }


  Widget _hostListingInfo() {
    String photo = imgListingMedium + (controller.itemInfo.listPhotoName?.toString() ?? '');
    String carType = controller.itemInfo.carType?.toString() ?? '';
    String title = controller.itemInfo.title?.toString() ?? '';

    debugPrint("photo: $photo---${controller.reservationResult?.confirmationCode}----${controller.itemInfo.city}");
    return [
      CustomTitleText(
        text: '${label_booking_confirmed.trParams({'field': label_theme4_booking_single.tr.toLowerCase()})}!',
          size: AppDimen.textSize_24
      ),
      10.toHeight(),
      CustomText(
        text: '${label_reservation_code.tr}: #${controller.reservationResult?.confirmationCode}',
        fontWeight:AppFont.regular,
      ),
      toOnTap(
        onTap: (){
          print('controller.itemInfo--> ${controller.itemInfo}');
          controller.bookingnavigator.navigateScreen(BookingScreen.itemDetail, [controller.itemInfo,'reservationdetail' ]);
        },
        child: DottedBorderConditionalWidget(
          borderRadius: imageAndBillingBorderRadius,
          condition: _isDottedBorder,
          child: CustomBorderContainer(
            borderRadius: containerBorderRadius,
            color: containerColor,
            padding: pad(a: 12),
            body: [
              CustomClipNetworkImage(
                imageUrl: photo,
                borderRadius:
                BorderRadius.all(Radius.circular(imageAndBillingBorderRadius?? AppDimen.appBorderRadius)),
                height: 200,
                placeholderURL: photo.replaceAll('x_medium_', 'small_'),
                width: deviceWidth-5,
              ),
              getCarType(carType: carType, transmission: App().getTransmissionContent(transmission: controller.itemInfo.transmission)).toPad(top: 12),
              getTitleWidget(title: title).toPad(top: 5),
              if(controller.itemInfo.reviewsStarRating != null && controller.itemInfo.reviewsCount != null)
                getRatingWidget(rating: (controller.itemInfo.reviewsStarRating/controller.itemInfo.reviewsCount).toStringAsFixed(1)).toPad(top: 5)
            ].toColumn()
          ),
        ).toPad(vertical: 18),
      ),
      CustomTitleText(text: label_trip_details.tr, size: AppDimen.textSize_18, fontWeight: AppFont.medium,),
      12.toHeight(),
      controller.reservationDateInfo(
          checkinDate: controller.reservationResult!.checkIn!,
          checkoutDate: controller.reservationResult!.checkOut!,
          checkinTime: (controller.reservationResult?.startTime ?? controller.itemInfo?.listingData?.checkInStart).toString(),
          checkoutTime: (controller.reservationResult?.endTime ?? controller.itemInfo?.listingData?.checkInEnd).toString(),
          dateColor: appColors.customTextColor,
          timeColor: appColors.customTextColor,
          endCrossAxisAlignment: CrossAxisAlignment.start,
          headerFontSize: AppDimen.textSize_16,
          fontSize: AppDimen.textSize_14,
          isFromCancelTrip: true
      ),
    ].toColumn();
  }

  Widget getRatingWidget({required String rating}) {
    return <Widget>[
      overALLAppLayoutModel?.ratingIcon.toSVG() ?? const SizedBox.shrink(),
      2.toWidth(),
      CustomText(text: rating, size: AppDimen.textSize_14,)
    ].toRow(mainAxisAlignment: MainAxisAlignment.start);
  }

  Widget getTitleWidget({required String title}) {
    return CustomText(text: title, size: AppDimen.textSize_16, fontWeight: AppFont.regular,);
  }

  Widget getCarType({required String carType, required String transmission}) {
    if (overALLThemeType == 4) {
      return [
        CustomContainer(
          constraints: BoxConstraints(
            maxWidth: deviceWidth - ((transmission == "1" ? label_automatic.tr : label_manual.tr).length * 12) - 110
          ),
          decoration: BoxDecoration(
            color: appColors.white,
            borderRadius: BorderRadius.circular(30)
          ),
          padding: pad(w: 5),
          body: [
            (carTypeIcon != null)
                ? carTypeIcon!.toSVG(colour: appColors.black, size: svgSize).toPad(end: 4)
                : const SizedBox.shrink(),
            Flexible(
                child: CustomText(
              text: carType,
              size: AppDimen.textSize_14,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ))
          ].toRow(mainAxisSize: MainAxisSize.min),
        ),
        5.toWidth(),
        Flexible(
          fit: FlexFit.loose,
          child: CustomBorderContainer(
            color: appColors.white,
            borderRadius: 30,
            padding: pad(w: 5),
            body: [
              (transmissionIcon != null)
                  ? transmissionIcon!.toSVG(colour: appColors.black, size: svgSize).toPad(end: 4)
                  : const SizedBox.shrink(),
              Flexible(
                child: CustomText(
                  text: transmission,
                  size: AppDimen.textSize_14,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                )
              )
            ].toRow(mainAxisSize: MainAxisSize.min),
          ),
        ),
      ].toRow(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center);
    }

    return <Widget>[
      (carTypeIcon != null) ? carTypeIcon!.toSVG(colour: appColors.black, size: svgSize).toPad(end: 4) : const SizedBox.shrink(),
      Flexible(child: CustomText(text: carType, size: AppDimen.textSize_14, overflow: TextOverflow.ellipsis,)),
      (overALLThemeType == 4) ? 8.toWidth() :
      CustomContainer(
        height: 4,
        width: 4,
        decoration: BoxDecoration(color: appColors.black, shape: BoxShape.circle),
      ).toPad(horizontal: 4),
      (transmissionIcon != null) ? transmissionIcon!.toSVG(colour: appColors.black, size: svgSize).toPad(end: 4) : const SizedBox.shrink(),
      Flexible(child: CustomText(text: transmission, size: AppDimen.textSize_14, overflow: TextOverflow.ellipsis,)),
    ].toRow(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center);
  }

  Widget _billingInfo() {
    log('reservationResult --> ${controller.reservationResult?.promoCode}');
    int days = (controller.reservationResult?.days) ?? 1;
    String promoCode = controller.reservationResult?.promoCode ?? label_coupon_code.tr;
    String billingAmountForOneDay = (controller.reservationResult?.isSpecialPriceAssigned ?? false) ?  double.parse((controller.reservationResult?.isSpecialPriceAverage)?.toString() ?? '0').currencyConverted(convertedCurrency: controller.reservationResult?.currency ?? defaultCurrency).toNumberFormat(symbol:symbol!) : double.parse((controller.reservationResult?.basePrice)?.toString() ?? '0').currencyConverted(convertedCurrency: controller.reservationResult?.currency ?? defaultCurrency).toNumberFormat(symbol:symbol!);
    String billingAmount = (controller.reservationResult?.isSpecialPriceAssigned ?? false) ?  double.parse((((controller.reservationResult?.isSpecialPriceAverage ?? 0) * days)).toString() ?? '0').currencyConverted(convertedCurrency: controller.reservationResult?.currency ?? defaultCurrency).toNumberFormat(symbol:symbol!) : double.parse(((controller.reservationResult?.basePrice ?? 0) * days).toString() ?? '0').currencyConverted(convertedCurrency: controller.reservationResult?.currency ?? defaultCurrency).toNumberFormat(symbol:symbol!);
    String securityDeposit = double.parse((controller.reservationResult?.securityDeposit ?? 0 ).toString()).currencyConverted(convertedCurrency: controller.reservationResult?.currency ?? defaultCurrency).toNumberFormat(symbol:symbol!);
    String deliveryFee = double.parse((controller.reservationResult?.delivery ?? 0).toString()).currencyConverted(convertedCurrency: controller.reservationResult?.currency ?? defaultCurrency).toNumberFormat(symbol:symbol!);
    String serviceFee = double.parse(((appPreference.isOwner! ? controller.reservationResult?.hostServiceFee : controller.reservationResult?.guestServiceFee) ?? 0).toString()).currencyConverted(convertedCurrency: controller.reservationResult?.currency ?? defaultCurrency).toNumberFormat(symbol:symbol!);
    String weeklyDiscount = double.parse((controller.reservationResult?.discount ?? 0).toString()).currencyConverted(convertedCurrency: controller.reservationResult?.currency ?? defaultCurrency).toNumberFormat(symbol:symbol!);
    String couponDiscount = double.parse((controller.reservationResult?.promoDiscount ?? 0).toString()).currencyConverted(convertedCurrency: controller.reservationResult?.currency ?? defaultCurrency).toNumberFormat(symbol:symbol!);
    String totalPaid = double.parse(((appPreference.isOwner! ? controller.reservationResult?.total : (controller.reservationResult?.totalWithGuestServiceFee ?? controller.reservationResult?.total))).toString()).currencyConverted(convertedCurrency: controller.reservationResult?.currency ?? defaultCurrency).toNumberFormat(symbol:symbol!);

    return [
      _headerText(billing.tr).toPad(bottom: 12),
      CustomBorderContainer(
        borderRadius: imageAndBillingBorderRadius,
        borderColor: billingBorderColor,
        color: billingContainerColor,
        padding: pad(
            w: (overALLThemeType == 1 ||
                overALLThemeType == 2 ||
                overALLThemeType == 3)
                ? 0
                : 16,
            h: overALLThemeType == 2 ? 0 : 16),
        body: [
          commonNavigationWidget(
            isRTL: controller.isRTL(),
            toolTipContent: (controller.reservationResult?.isSpecialPriceAssigned ?? false) ? "label_average_rate_per_day".tr : null,
            title: controller.isRTL()
                ? '$billingAmountForOneDay x ${label_day.trPlural(dayPlural.tr, days)} $days'
                : '$billingAmountForOneDay x $days ${label_day.trPlural(dayPlural.tr, days)}',
            value: billingAmount
          )
              .toPad(
                  horizontal: (overALLThemeType == 1 || overALLThemeType == 3)
                      ? 16
                      : 0),
          if ((controller.reservationResult?.discount ?? 0) > 0)
            FutureBuilder<String>(
                future: controller.getMultilangContent(content: controller.reservationResult?.discountType ?? ''),
                builder: (context, snapshot) {
                  String title = snapshot.data ?? label_discounts.tr;
                  return commonNavigationWidget(
                      title: title, value: weeklyDiscount, isDiscount: true)
                      .toPad(
                      top: 12,
                      horizontal: (overALLThemeType == 1 || overALLThemeType == 3)
                          ? 16
                          : 0);
                }
            ),
          if ((controller.reservationResult?.promoDiscount ?? 0) > 0)
            commonNavigationWidget(
              toolTipContent: controller.reservationResult?.promoCodeDescription,
                title: promoCode, value: couponDiscount, isDiscount: true)
                .toPad(
                top: 12,
                horizontal: (overALLThemeType == 1 || overALLThemeType == 3)
                    ? 16
                    : 0),
          if ((controller.reservationResult?.delivery ?? 0) > 0)
            commonNavigationWidget(title: delivery_fee.tr, value: deliveryFee)
                .toPad(
                    top: 12,
                    horizontal: (overALLThemeType == 1 || overALLThemeType == 3)
                        ? 16
                        : 0),
          if (((appPreference.isOwner!
                      ? controller.reservationResult?.hostServiceFee
                      : controller.reservationResult?.guestServiceFee) ??
                  0) >
              0)
            commonNavigationWidget(
                    title: label_service_fee.tr, value: serviceFee)
                .toPad(
                    top: 12,
                    horizontal: (overALLThemeType == 1 || overALLThemeType == 3)
                        ? 16
                        : 0),
          if ((controller.reservationResult?.securityDeposit ?? 0) > 0)
            commonNavigationWidget(
                title: label_security_deposit.tr, value: securityDeposit)
                .toPad(
                top: 12,
                horizontal: (overALLThemeType == 1 || overALLThemeType == 3)
                    ? 16
                    : 0),
          (overALLThemeType == 4)
              ? filterDivider.toFitToDeviceWidth(width: deviceWidth - 48).toResizeWidget(height: 1).toPad(vertical: 12)
              : filterDivider.toPad(vertical: 12),
          commonNavigationWidget(
                  title: label_total_paid.tr,
                  value: totalPaid,
                  titleFontWeight: AppFont.medium,
                  valueFontWeight: AppFont.medium)
              .toPad(
                  horizontal:
                      (overALLThemeType == 1 || overALLThemeType == 3) ? 16 : 0)
        ].toColumn(),
      ).toPad(bottom: 12),
      CustomShowMoreText(
        color: appColors.secondaryColor,
        text: label_view_receipt.tr,
        size: AppDimen.textSize_14,
        fontWeight: AppFont.regular,
        showMoreIconTopPadding: 0,
        showMoreIcon: Assets.viewcarsLeftArrow,
        onTap: () async{
          String discountlabel =  await controller.getMultilangContent( content: controller.reservationResult?.discountType ?? '');
          CustomerReceiptBottomSheet(receiptItem: controller.reservationResult!,controller: controller,discountLabel: discountlabel);
        },
      )
    ].toColumn();
  }

  Widget _hostProfileInfo() {
    return [
      _headerText(label_owner.tr),
      12.toHeight(),
      CustomUserProfileInfoText(
          profileIconType: overALLAppLayoutModel?.profileIconType ?? '',
        userImage: controller.itemInfo.user?.profile?.picture ?? '',
        userName: '${label_owned_by.tr} ${controller.itemInfo.user?.profile?.firstName}',
        userNameTextColor: appColors.customTextColor,
        userNameTextSize: AppDimen.textSize_18,
        userNameFontWeight: AppFont.medium,
        linkTextColor: appColors.customTextColor,
        linkTextFontSize: AppDimen.textSize_16,
        linkText: '${label_joined_in.tr} ${getDateFormat(dateFormat: userProfileCreateFormat, milliSec:controller.itemInfo.user?.profile?.createdAt).$1.replaceAll(' ', '')}',
        onProfileTap: () {
          HostReviewBottomSheet().showHostInfo(
              hostItem: controller.itemInfo.user,
              profileId: controller.itemInfo.user?.profile?.profileId,
              isHost: true
          );
        },
      ),
      CustomShowMoreText(
        showMoreIconTopPadding: 0,
        text: '${label_message.tr} ${label_owner.tr}',
        size: AppDimen.textSize_14,
        fontWeight: AppFont.regular,
        color: appColors.secondaryColor,
        onTap: () {
          debugPrint("controller.reservationResult: ${controller.reservationResult}");
          controller.bookingnavigator.navigateScreen(BookingScreen.viewMessage, {
            'threadId': (controller.reservationResult?.threadData?.threadId ??
                    controller.reservationId)
                .toString()
          });
        },
        showMoreIcon: Assets.viewcarsLeftArrow,
      ).toPad(vertical: 12),
      20.toHeight(),
    ].toColumn(  mainAxisSize: MainAxisSize.min);
  }

  dynamic _getToolTipWidget(content, globalKey, Color colors) {
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
      overlayWidget: Assets.drawableInfoToolTip.toSVG(fit: BoxFit.scaleDown,colour: colors),
    ).toPad(end: 4);
  }

  Widget commonNavigationWidget({required String title, required String value, FontWeight? titleFontWeight, FontWeight? valueFontWeight, bool isDiscount = false, String? toolTipContent, bool? isRTL}) {
    Color valueColor = isDiscount ? appColors.discountAmountColor : appColors.customTextColor;
    return <Widget>[
      <Widget>[
        toolTipContent != null ? _getToolTipWidget(
          toolTipContent,
          RectGetter.createGlobalKey(),
          appColors.secondaryColor
        ) : 0.toHeight(),
        CustomText(
          textAlign: (isRTL ?? false) ? TextAlign.end : TextAlign.start,
          textDirection: (isRTL ?? false) ? TextDirection.ltr : null,
          text: title,
          size: AppDimen.textSize_14,
          fontWeight: titleFontWeight ?? AppFont.regular,
          color: isDiscount ? appColors.discountAmountColor : appColors.customTextColor,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
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
          fontWeight:valueFontWeight ?? AppFont.regular,
          symbol: symbol,
        ),
      ].toRow(mainAxisSize: MainAxisSize.min).toPad(start: 10),
    ].toRow(crossAxisAlignment: CrossAxisAlignment.center);
  }

  Widget _reservationCard(
      {required String header,
      required String subHeader,
      required String navigatorText,
      String? billingAmount,
      required GestureTapCallback onTap,}) {
    return [
      [
        _headerText(header),
        12.toHeight(),
        CustomText(
          text:subHeader,
          size: AppDimen.textSize_14,
          fontWeight:AppFont.regular,
          color: appColors.customTextColor,
        ),
        8.toHeight(),
        CustomShowMoreText(
          showMoreIconTopPadding: 0,
          text: navigatorText,
          color: appColors.secondaryColor,
          size: AppDimen.textSize_14,
          fontWeight:AppFont.regular,
          onTap: onTap,
          showMoreIcon: Assets.viewcarsLeftArrow,
        )
      ].toColumn().toStretch(),
      if (billingAmount != null)
        CustomText(
          text: billingAmount,
          size: AppDimen.textSize_14,
          color: appColors.customTextColor,
          fontWeight:AppFont.regular,
          symbol: symbol,
        ),
    ].toRow(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center);
  }



  Widget _headerText(String header) {
    return CustomText(
      text: header,
      size: AppDimen.textSize_18,
      fontWeight: AppFont.medium,
    );
  }


  Widget _billingAddressInfo() {
    return  _reservationCard(
        header: address.tr,
        subHeader: controller.getAddressText(itemInfo: controller.itemInfo, isAfterBooking: true),
        navigatorText: "label_view_location_on_map".tr,
        onTap: () {
          controller.openMap(controller.itemInfo?.lat, controller.itemInfo?.lng);
        },

    );
  }
}