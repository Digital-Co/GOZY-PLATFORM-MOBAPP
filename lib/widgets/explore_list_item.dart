import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/resources/app_colors.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/resources/app_layout.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/home/home_navigator.dart';
import 'package:gozy/widgets/common/custom_container/custom_border_container.dart';
import 'package:gozy/widgets/common/custom_container/custom_wishlist_container.dart';
import 'package:gozy/widgets/common/custom_network_image/custom_clip_network_image.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/common/custom_container/custom_container.dart';
import 'package:gozy/widgets/custom_text.dart';
import 'package:gozy/widgets/duration_discount_widgets.dart';
import 'package:gozy/widgets/wishlist_modification_sheet.dart';

import 'explore_listing_item_widgets.dart';

class ListingItem extends GetView {
  final int? id;
  final String? title;
  final String? hostId;
  final String? bookingType;
  late String? coverPhoto;
  int? reviewsCount;
  final int? reviewsStarRating;
  final List<dynamic>? listPhotos;
  final String? basePrice;
  final String? instantBookIcon;
  final bool? isListOwner;
  final bool? wishListStatus;
  final String? roomType;
  final String? listingType;
  final String? currencySymbol;
  final bool? isshimmerview;
  final double? listingWidth;
  final double? listingHeight;
  final int themeType;
  final double borderRadius;

  final String? transmission;
  @override
  final BaseController? controller;
  final double? listingPriceTextSize;
  final dynamic itemInfo;

  final GestureTapCallback? onTaponWishlist;
  late PageController _itemPhotosScrollcontroller;
  static double buttonBorderRadius = appLayoutMap[AppLayout.buttonType]?.borderRadius ?? 0;

  ListingItem(
      {super.key,
      this.id,
      this.title = '',
      this.hostId = '',
      required this.themeType,
      required this.borderRadius,
      required this.instantBookIcon,
      this.bookingType = 'request',
      this.coverPhoto,
      this.reviewsCount = 1,
      this.reviewsStarRating = 0,
      this.listingWidth = 0,
      this.listingHeight,
      this.itemInfo,
      this.transmission,
      this.controller,
      this.onTaponWishlist,
      this.listingPriceTextSize,
      this.listPhotos,
      this.listingType,
      this.basePrice = '0.0',
      this.currencySymbol = '\$',
      this.isListOwner = false,
      this.isshimmerview = false,
      this.wishListStatus = false,
      this.roomType = 'room'});

  @override
  Widget build(BuildContext context) {
    if (reviewsCount == 0) {
      reviewsCount = 1;
    }
    int rating = int.parse((reviewsStarRating! / reviewsCount!).toStringAsFixed(0));
    _setController();
    Widget listingitemWidget = 0.toHeight();
    Color? bgColor;

    switch (themeType) {
      case 1:
        listingitemWidget = [
          _toRecommendedListingImageView().toPad(horizontal: 10, top: 10),
          _showTheme1ListingItem(ratings: rating)
        ].toColumn();
        listingitemWidget = DecoratedBox(
          decoration: BoxDecoration(
            border: !isshimmerview!
                ? Border.all(
              width: 1,
              color: appColors.myTripsDividerColor,
            )
                : null,
            borderRadius: BorderRadiusDirectional.circular(borderRadius),
          ),
          child: listingitemWidget
        );
        break;
      case 3:
        listingitemWidget = [
          _toRecommendedListingImageView(isTopOnly: true),
          _showTheme3ListingItem(ratings: rating)
        ].toColumn();
        break;
      case 2:
        bgColor = appColors.white;
        listingitemWidget = [
          _toRecommendedListingImageView(),
          _showTheme2ListingItem(
            ratings: rating,
          )
        ].toColumn();
        break;
      case 4:
        bgColor = appColors.white;
        listingitemWidget = [
          _toRecommendedListingImageView(rating: rating, isTopOnly: true),
          _showTheme4ListingItem()
        ].toColumn();
        break;
    }

    if (themeType != 4) {
      return listingitemWidget.toResizeWidget(width: listingWidth, color: bgColor);
    } else {
      return CustomBorderContainer(
          borderRadius: borderRadius,
          width: listingWidth,
          color: bgColor,
          body: listingitemWidget);
    }
  }

  Widget _showTheme1ListingItem({int? ratings}) {
    return <Widget>[
      _toCarTypeView(theme3homeCarIcon: Assets.viewcarsViewcarCartype),
      5.toHeight(),
      _toPriceView(),
      5.toHeight(),
      _toDescriptionView(),
      10.toHeight(),
      toTheme1ButtonView(ratings: ratings)
    ].toColumn().toPad(all: 10);
  }

  Widget _showTheme2ListingItem({int? ratings}) {
    return CustomContainer(
      decoration: BoxDecoration(
        color: appColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.3),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      body: <Widget>[
        10.toHeight(),
        _toTheme2CarTypeView(ratings: ratings),
        5.toHeight(),
        _toPriceView().toPad(horizontal: 10),
        5.toHeight(),
        _toDescriptionView().toPad(horizontal: 10),
        10.toHeight(),
        toTheme2ButtonView(),
      ].toColumn(),
    );
  }

  Widget _showTheme3ListingItem({int? ratings}) {
    return CustomContainer(
        decoration: BoxDecoration(
            color: appColors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.3),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1),
              ),
            ],
            borderRadius: const BorderRadiusDirectional.vertical(bottom: Radius.circular(30))),
        body: <Widget>[
          10.toHeight(),
          _toDescriptionView(textColor: appColors.colorCommonLinkColor),
          5.toHeight(),
          _toCarTypeView(
              size: AppDimen.textSize_14,
              reviewFontWeight: AppFont.regular,
              theme3homeCarIcon: Assets.theme3CarType,
              theme3Transmission: Assets.theme3Transmission,
              ratings: ratings),
          18.toHeight(),
          toTheme3ButtonView(ratings: ratings)
        ].toColumn().toPad(horizontal: 12, bottom: 12));
  }

  Widget _showTheme4ListingItem() {
    return CustomContainer(
        decoration: BoxDecoration(
            color: appColors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.3),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1),
              ),
            ],
            borderRadius: const BorderRadiusDirectional.vertical(bottom: Radius.circular(30))),
        body: <Widget>[
          10.toHeight(),
          _toPriceView(instantIconColor: appColors.secondaryColor).toPad(horizontal: 10),
          5.toHeight(),
          _toDescriptionView().toPad(horizontal: 10),
          10.toHeight(),
          toTheme4CarTypeView(),
        ].toColumn());
  }

  Widget _toCarTypeView({String? theme3homeCarIcon, String? theme3Transmission, int? ratings, double? size, FontWeight? reviewFontWeight}) {
    return [
      if (ratings != null && ratings != 0)
        getRatingTextView(
                size: size,
                reviewFontWeight: reviewFontWeight,
                rating: ratings,
                icon: Assets.theme3Star,
                iconColor: appColors.black,
                textColor: appColors.black,
                dotSize: 0)
            .toPad(end: 8),
      if (roomType != null)
        carTypeIconTitleView(
                title: roomType!,
                icon: theme3homeCarIcon ?? Assets.theme3CarType,
                borderRadius: borderRadius,
                isshimmerview: isshimmerview,
                isShowDot: ratings != null && ratings != 0,
                iconSize: 11)
            .toStretch(isExpanded: false),
      5.toWidth(),
      carTypeIconTitleView(
              title: transmission == '1' ? label_automatic.tr : label_manual.tr,
              isShowDot: (isshimmerview ?? false) ? false : true,
              icon: theme3Transmission,
              borderRadius: borderRadius,
              isshimmerview: isshimmerview,
              iconSize: 11)
          .toResizeWidget(width: deviceWidth * 0.25),
    ].toRow(mainAxisAlignment: MainAxisAlignment.start);
  }

  Widget _toTheme2CarTypeView({int? ratings}) {
    String transmissionValue = isshimmerview!
        ? 40.toGenerateEmptyString()
        : transmission == "1"
            ? label_automatic.tr
            : label_manual.tr;
    return [
      [
        10.toWidth(),
        if (roomType != null)
          carTypeIconTitleView(title: roomType!, borderRadius: borderRadius, isshimmerview: isshimmerview)
              .toStretch(isExpanded: false),
        5.toWidth(),
        if (transmissionValue.isNotEmpty)
          carTypeIconTitleView(
              title: transmissionValue,
              isShowDot: (isshimmerview ?? false) ? false : true,
              borderRadius: borderRadius,
              isshimmerview: isshimmerview),
        10.toWidth()
      ].toRow(mainAxisAlignment: MainAxisAlignment.start).toStretch(),
      if (ratings != null && ratings != 0) ...[
        getRatingTextView(
            rating: ratings, textColor: appColors.black, dotSize: 0, icon: Assets.theme2Theme2Ratings),
        10.toWidth(),
      ]
    ].toRow(mainAxisAlignment: MainAxisAlignment.spaceBetween);
  }

  Widget toTheme4CarTypeView() {
    return CustomBorderContainer(
      width: deviceWidth,
      borderRadius: borderRadius,
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withValues(alpha: 0.3),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1),
        ),
      ],
      color: appColors.white,
      padding: pad(a: 6),
      body: [
        if (roomType != null)
          carTypeIconTitleView(
              icon: Assets.theme4ExploreCartype,
              title: roomType!.trim(),
              maxWidth: listingWidth! - ((transmission == "1" ? label_automatic.tr : label_manual.tr).length * 9) - 110,
              isShowAsChip: true,
              borderRadius: borderRadius,
              isshimmerview: isshimmerview,
              fontSize: AppDimen.textSize_14),
        5.toWidth(),
        carTypeIconTitleView(
            icon: Assets.viewcarsViewcarTransmission,
            title: transmission == "1" ? label_automatic.tr : label_manual.tr,
            isShowAsChip: true,
            borderRadius: borderRadius,
            isshimmerview: isshimmerview,
            fontSize: AppDimen.textSize_14),
        const Spacer(),
        CustomWishlistContainer(
          width: 30,
          height: 30,
          body: !isshimmerview!
              ? Assets.theme4BackArrow
                  .toSVG(quarterTurns: controller!.isRTL() ? 0 : 2, colour: AppColors.staticwhite)
              : null,
          padding: pad(a: 8),
          color: !isshimmerview! ? appColors.secondaryColor : appColors.myTripsBGColor,
        )
      ].toRow(),
    );
  }

  Widget toTheme1ButtonView({int? ratings}) {
    return CustomContainer(
      height: 50,
      width: deviceWidth,
      decoration: BoxDecoration(
        color: (isshimmerview ?? false) ? appColors.shimmerplaceholderColor : appColors.black,
        borderRadius: BorderRadiusDirectional.circular(buttonBorderRadius),
      ),
      body: [
        if (ratings != null && ratings > 0) getRatingTextView(rating: ratings, dotSize: 0, theme3IconColor: appColors.white).toPad(end: 15),
        if (ratings != null && ratings > 0)
          VerticalDivider(
            color: appColors.popularLocationtopShimmerColor,
          ),
        [
          CustomText(
            text: label_rentnow.tr,
            size: AppDimen.textSize_16,
            color: (isshimmerview ?? false) ? appColors.shimmerplaceholderColor : appColors.white,
          ),
          if (appLayoutMap[AppLayout.buttonType]?.isButtonArrowShow ?? false)
            (isshimmerview ?? false) ? 0.toHeight() : Assets.drawableRightArrow.toSVG(colour: appColors.white, size: 10).toPad(start: 5, top: 2),
        ].toRow().toStretch(isExpanded: true)
      ].toRow(mainAxisAlignment: MainAxisAlignment.start).toPad(vertical: 8, horizontal: 15),
    );
  }

  Widget toTheme2ButtonView() {
    return [
      filterDivider,
      12.toHeight(),
      CustomText(
        text: label_rentnow.tr,
        color: appColors.secondaryColor,
        isShimmerView: isshimmerview,
      ),
      12.toHeight(),
    ].toColumn(crossAxisAlignment: CrossAxisAlignment.center);
  }

  Widget toTheme3ButtonView({int? ratings}) {
    return CustomContainer(
      height: 50,
      width: deviceWidth,
      decoration: BoxDecoration(
        color: (isshimmerview ?? false) ? appColors.shimmerplaceholderColor : appColors.black,
        borderRadius: BorderRadiusDirectional.circular(buttonBorderRadius),
      ),
      body: [
        if (bookingType != null && bookingType == "instant") ...[
          Assets.theme3InstantBook.toSVG(size: 17),
          5.toWidth(),
        ],
        [
          CustomText(
            color: appColors.white,
            text: double.parse(basePrice.toString()) > 0
                ? (controller?.isRTL() ?? false)
                    ? '\u200E${basePrice.toString()}$currencySymbol\u200E'
                    : basePrice.toString().toNumberFormat(symbol: currencySymbol!)
                : '',
            size: AppDimen.textSize_18,
            fontWeight: AppFont.semiBold,
          ),
          3.toWidth(),
          CustomText(
            text: !isshimmerview! ? '/' : '',
            maxLines: 1,
            size: AppDimen.textSize_18,
            color: appColors.white,
          ),
          3.toWidth(),
          CustomText(
            text: !isshimmerview! ? label_day.tr : '',
            maxLines: 1,
            size: AppDimen.textSize_18,
            color: appColors.white,
          ),
        ].toRow()
      ].toRow(mainAxisAlignment: MainAxisAlignment.center).toPad(vertical: 8, horizontal: 10),
    );
  }

  Widget _toPriceView({Color? instantIconColor}) {
    return [
      bookingType != null && bookingType == "instant"
          ? instantBookIcon!.toSVG(size: 20.0, colour: instantIconColor).toPad(end: (instantBookIcon?.contains("theme_2") ?? false) ? 0 : 5)
          : const SizedBox.shrink(),
      CustomText(
        text: !isshimmerview!
            ? double.parse(basePrice.toString()) > 0
                ? (controller?.isRTL() ?? false)
                    ? '\u200E${basePrice.toString()}$currencySymbol\u200E'
                    : basePrice.toString().toNumberFormat(symbol: currencySymbol!)
                : ''
            : 25.toGenerateEmptyString(),
        size: AppDimen.textSize_20,
        fontWeight: AppFont.semiBold,
        isShimmerView: isshimmerview,
        overflow: TextOverflow.ellipsis,
      ).toStretch(isExpanded: false),
      3.toWidth(),
      CustomText(
        text: !isshimmerview! ? '/' : '',
        maxLines: 1,
        size: AppDimen.textSize_14,
        overflow: TextOverflow.ellipsis,
      ),
      3.toWidth(),
      CustomText(
        text: !isshimmerview! ? label_day.tr : '',
        maxLines: 1,
        size: AppDimen.textSize_14,
        overflow: TextOverflow.ellipsis,
      ),
    ].toRow(mainAxisAlignment: MainAxisAlignment.start).toResizeWidget(width: (listingWidth ?? 0) * 0.8);
  }

  Widget _toDescriptionView({Color? textColor}) {
    return CustomText(
      text: !isshimmerview! ? title! : 70.toGenerateEmptyString(),
      maxLines: 1,
      size: AppDimen.textSize_18,
      color: textColor,
      fontWeight: AppFont.regular,
      overflow: TextOverflow.ellipsis,
      isShimmerView: isshimmerview,
    );
  }

  Widget _toRecommendedListingImageView({bool? isTopOnly, int? rating}) {
    return <Widget>[
      if (listingType != 'search' || isshimmerview!)
        CustomClipNetworkImage(
            imageUrl:coverPhoto!,
          width: listingWidth,
          height: listingHeight ?? 190,
          isShimmerView: isshimmerview ?? false,
          placeholderURL: coverPhoto!.replaceAll('x_medium_', 'small_'),
          borderRadius: (isTopOnly ?? false) ?
          BorderRadiusDirectional.vertical(top: Radius.circular(borderRadius)) :
          BorderRadius.all(Radius.circular(borderRadius)) ,
          shimmerColor: appColors.shimmerplaceholderColor,
        )
      else
        [
          _showListingPhotos(isTopOnly: isTopOnly ?? false),
          scrollingDotWidget(
              controller: _itemPhotosScrollcontroller,
              count: listPhotos != null ? listPhotos!.length : 0,
              height: listingHeight),
        ].toStack(),
      if (!isshimmerview!)
        PositionedDirectional(
          top: 12,
          start: 12,
          child: DurationDiscountBadge(
            weeklyDiscount: itemInfo?.listingData?.weeklyDiscount,
            monthlyDiscount: itemInfo?.listingData?.monthlyDiscount,
          ),
        ),
      if (!isshimmerview!)
        if (controller?.appPreference.userID != hostId)
          CustomWishlistContainer(
                  onTap: onTaponWishlist ??
                      () {
                        if (controller != null) {
                          if (controller!.appPreference.accessToken!.isEmpty) {
                            HomeNavigator().navigateScreen(HomeScreen.signIn);
                          } else {
                            debugPrint("Over all theme value 1 ===> $overALLThemeType");
                            WishlistModificationSheet wishlistSheet = Get.find();
                            wishlistSheet
                              ..init(
                                itemInfo: itemInfo,
                                updateController: controller,
                              )
                              ..show();
                          }
                        }
                      },
                  margin: pad(a: 12),
                  padding: pad(w: 8, bottom: 8, top: 10),
                  body: wishListStatus != null && !wishListStatus!
                      ? Assets.drawableGuestWishlist.toSVG(
                          fit: BoxFit.scaleDown,
                        )
                      : Assets.drawableGuestWishlistChecked.toSVG(
                          fit: BoxFit.scaleDown,
                        ))
              .toPositionedAlign(
            alignment: AlignmentDirectional.topEnd,
          ),
      if (rating != null && rating > 0)
        CustomBorderContainer(
          body: getRatingTextView(rating: rating, dotSize: 0),
          color: appColors.black.withAlpha(200),
          borderRadiusGeometry: BorderRadiusDirectional.only(
            topEnd:  Radius.circular(borderRadius ?? 0),
          ),
          padding: pad(start: 8, h: 3, end: 12),
        ).toPositionedAlign(
          alignment: AlignmentDirectional.bottomStart,
        ),
    ].toStack();
  }

  Widget _showListingPhotos({bool isTopOnly = false}) {
    return toPageView(
      itemCount: listPhotos != null ? listPhotos!.length : 0,
      controller: _itemPhotosScrollcontroller,
      physics: ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        String listphoto = _getPhoto(index);
        return CustomClipNetworkImage(
            imageUrl:listphoto,
          width: listingWidth,
          height: listingHeight ?? 195,
          isShimmerView: isshimmerview ?? false,
          borderRadius: (isTopOnly) ?
          BorderRadiusDirectional.vertical(top: Radius.circular(listingWidth != deviceWidth ?AppDimen.appBorderRadius : 0)) :
          BorderRadius.all(Radius.circular(listingWidth != deviceWidth ?AppDimen.appBorderRadius : 0)),
          placeholderURL: listphoto.replaceAll('x_medium_', 'small_'),
        );
      },
    ).toResizeWidget(height: listingHeight ?? 195);
  }

  String _getPhoto(int index) {
    String photo = '';
    if (listPhotos != null &&
        listPhotos![index] != null &&
        listPhotos![index].name != null &&
        listPhotos![index].name.isNotEmpty) {
      photo = imgListingMedium + listPhotos![index].name;
    }
    return photo;
  }

  void _setController() {
    if (listPhotos != null) {
      for (int index = 0; index < listPhotos!.length; index++) {
        if (listPhotos != null &&
            listPhotos![index] != null &&
            listPhotos![index].name != null &&
            listPhotos![index].name.isNotEmpty &&
            coverPhoto!.contains(listPhotos![index].name)) {
          _itemPhotosScrollcontroller = PageController(initialPage: index, viewportFraction: 1);
        }
      }
    } else {
      _itemPhotosScrollcontroller = PageController(initialPage: 1, viewportFraction: 1);
    }
  }
}
