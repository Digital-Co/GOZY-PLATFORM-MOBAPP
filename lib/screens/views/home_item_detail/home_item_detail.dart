library home_item_detail;

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart' as intl;
import 'package:gozy/app.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/resources/app_colors.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/screens/binding/booking_binding.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/booking/about_license_trip/about_license.dart';
import 'package:gozy/screens/views/booking/about_license_trip/about_trip.dart';
import 'package:gozy/screens/views/booking/confirm_pay/confirm_pay_page.dart';
import 'package:gozy/screens/views/booking/generate_with_ai/generate_with_ai.dart';
import 'package:gozy/screens/views/booking/payment_type/payment_type.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/screens/views/guest/filter/filter_calendar.dart';
import 'package:gozy/screens/views/home_item_detail/home_item_detail_controller.dart';
import 'package:gozy/screens/views/home_item_detail/home_item_detail_navigator.dart';
import 'package:gozy/widgets/bottom_sheet/bottom_sheet_refresh_controller.dart';
import 'package:gozy/widgets/cancellation_policy_view.dart';
import 'package:gozy/widgets/common/custom_bottomsheet/custom_bottomsheet.dart';
import 'package:gozy/widgets/common/custom_button/primary_button.dart';
import 'package:gozy/widgets/common/custom_container/custom_border_container.dart';
import 'package:gozy/widgets/common/custom_container/custom_bottom_item_shadow_container.dart';
import 'package:gozy/widgets/common/custom_container/custom_counter_container.dart';
import 'package:gozy/widgets/common/custom_container/custom_underline_container.dart';
import 'package:gozy/widgets/common/custom_network_image/custom_cached_network_image.dart';
import 'package:gozy/widgets/common/custom_network_image/custom_clip_network_image.dart';
import 'package:gozy/widgets/common/custom_network_image/custom_profile_network_image.dart';
import 'package:gozy/widgets/common/custom_text/custom_overflow_function_text.dart';
import 'package:gozy/widgets/common/custom_text/custom_showmore_text.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/conditional_parent_widget.dart';
import 'package:gozy/widgets/common/custom_container/custom_container.dart';
import 'package:gozy/widgets/custom_list_item.dart';
import 'package:gozy/widgets/custom_stateful_widget.dart';
import 'package:gozy/widgets/custom_text.dart';
import 'package:gozy/widgets/dialog/homeitem_share_dialog.dart';
import 'package:gozy/widgets/dotted_border/dotted_border.dart';
import 'package:gozy/widgets/duration_discount_widgets.dart';
import 'package:gozy/widgets/explore_listing_item_widgets.dart';
import 'package:gozy/widgets/rect_getter.dart';
import 'package:gozy/widgets/report_user_view.dart';
import 'package:gozy/widgets/show_google_map.dart';
import 'package:gozy/widgets/wishlist_modification_sheet.dart';

import '../../../constant.dart';
import '../../../resources/app_layout.dart';
import '../booking/upload_profile_photo/upload_profile_photo.dart';
import '../home/home_controller.dart';
import '../home/home_navigator.dart';

part 'home_item_detail_part2.dart';
part 'home_item_detail_part3.dart';

class HomeItemDetailView extends CustomStatefulWidget {
  dynamic itemDetail;

  HomeItemDetailView({super.key, this.itemDetail});

  @override
  HomeItemDetailState createState() => HomeItemDetailState();
}

class HomeItemDetailState extends CustomStatefulWidgetState<HomeItemDetailView>
    with TickerProviderStateMixin
    implements HomeItemDetailNavigator {
  late HomeItemDetailController controller = Get.find();
  late PageController _itemPhotosScrollcontroller;
  final ScrollController _nestedScrollController = ScrollController();
  final PageController _pageController = PageController();
  final List<TransformationController> _transformationController = [];
  late GlobalKey<RectGetterState> _itemKey, _overlayKey;
  var rxIsOverlayAdded = ReactiveVariable("rxIsOverlayAdded", false);
  final double _listImgHeight = 250;
  int _drawnIndex = -1;

  static int? _onViewCarThemeType = appLayoutMap[AppLayout.viewCar]?.themeType;
  static final String? _onViewCarBackIcon = appLayoutMap[AppLayout.viewCar]?.backIcon;
  static final String? _onViewCarProfileIconType = appLayoutMap[AppLayout.viewCar]?.profileIconType;
  static final String? _onViewCarShareIcon = appLayoutMap[AppLayout.viewCar]?.shareIcon;
  static final String? _onViewCarInstantBookIcon = appLayoutMap[AppLayout.viewCar]?.instantBookIcon;
  static final String? _onViewCarRatingIcon = appLayoutMap[AppLayout.viewCar]?.ratingIcon;
  static final double? _onViewCarBorderRadius = appLayoutMap[AppLayout.viewCar]?.borderRadius;
  static final String? _onProfileBackIcon = appLayoutMap[AppLayout.profile]?.backIcon;

  String? showMoreText;
  bool isShowIcon = true;
  bool isShowIconOnCancellationPolicy = false;
  Color? containerColor;
  Color? ownerNameColor;
  bool? isShowDot;
  bool isShowContainerOnCancellationPolicy = false;
  String? carFeatureItemIcon;
  late String carFeatureTitle;
  var rateandreview;

  Color? mapLocationCircleColor;
  String? _itemAddress;

  Widget _showDurationDiscounts() => DurationDiscountOffersPanel(
        weeklyDiscount: controller.itemInfo?.listingData?.weeklyDiscount,
        monthlyDiscount: controller.itemInfo?.listingData?.monthlyDiscount,
      ).toPad(top: 12, bottom: 16);

  Color? _shareView_IconBGColor;
  double? _insideImageBorderRadius;
  Color? _shareView_BottomSectionBGColor;
  Color? _shareView_TopSectionBGColor;
  bool? _shareView_isBottomSectionRounded;
  bool? _shareView_isShowDivider;

  @override
  void initState() {
    controller.homeItemDetailNavigator = this;
    HomeItemDetailController.carfeatureIconsList = appLayoutMap[AppLayout.viewCar]?.carFeatureIcons;
    isShowLoader = true;
    if (Get.currentRoute.toLowerCase().contains('itemdetail')) {
      contactHostBookingType = '';
      controller.isLoading.value = true;
      _itemKey = RectGetter.createGlobalKey();
      _overlayKey = RectGetter.createGlobalKey();
      controller.itemInfo =
          Get.arguments != null && Get.arguments.isNotEmpty ? Get.arguments[0] : widget.itemDetail;
      controller.isPreview = Get.arguments != null &&
          Get.arguments.isNotEmpty &&
          (Get.arguments is! Map) &&
          (Get.arguments[1] == "stepfinal");
      WidgetsBinding.instance.addPostFrameCallback((_) {
        controller.selectedDates.value =
            Get.arguments != null && (Get.arguments is! Map) && Get.arguments.length > 2
                ? Get.arguments[2]
                : [];

        controller.change(
            rxVariable: controller.rxUpdatedGuestCount,
            value: Get.arguments != null && Get.arguments.length > 3 ? Get.arguments[3] : 1);
      });
      updateitemPhotos();
      controller.checkNetwork(controller.gethomeItemDetail);
    }

    _pageController.addListener(() {
      controller.change(rxVariable: controller.rxPagerIndex, value: _pageController.page!.round());
    });
    App().setMapKey();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isShowEndActions = true;
    carFeatureTitle = label_features.tr;
    debugPrint("homeitemdetail color changes: ${appThemeChanged.value}");
    switch (_onViewCarThemeType) {
      case 1:
        ownerNameColor = appColors.colorCommonLinkColor;
        showMoreText = label_readmore.tr;
        carFeatureItemIcon = Assets.viewcarsFeatureItemIndicator;
        isShowIconOnCancellationPolicy = true;
        carFeatureTitle = label_car_features.tr;
        mapLocationCircleColor = appColors.primaryColor;
        break;
      case 2:
        isShowIcon = false;
        isShowIconOnCancellationPolicy = true;
        showMoreText = label_readmore.tr;
        _shareView_BottomSectionBGColor = appColors.theme4AppBarBg;
        carFeatureItemIcon = Assets.theme2FeatureItemIndicator;
        break;
      case 3:
        _insideImageBorderRadius = _onViewCarBorderRadius! - 10;
        showMoreText = label_readmore.tr;
        isShowContainerOnCancellationPolicy = true;
        mapLocationCircleColor = appColors.primaryColor;
        _shareView_BottomSectionBGColor = appColors.white;
        _shareView_IconBGColor = appColors.myTripsBGColor;
        _shareView_TopSectionBGColor = appColors.myTripsBGColor;
        _shareView_isBottomSectionRounded = true;
        break;
      case 4:
        carFeatureItemIcon = 'dotindicator';
        isShowIcon = false;
        showMoreText = label_readmore.tr;
        containerColor = appColors.theme4AppBarBg;
        isShowDot = true;
        isShowEndActions = false;
        isShowContainerOnCancellationPolicy = true;
        _shareView_BottomSectionBGColor = appColors.white;
        _shareView_IconBGColor = appColors.myTripsBGColor;
        _shareView_isShowDivider = true;
    }

    return CustomScaffold(
      controller: controller,
      loader: LottieLoaders.three_dots_loader,
      loaderSize: 120,
      isShowBGOnLoader: false,
      customAppBarFunction: () {
        isShowLoader = false;
        HomeController homeController = Get.find();
        controller.isLoading.value = false;
        homeController.isLoading.value = false;
        if (rxIsOverlayAdded.value) {
          _clearOverlayTransition();
        } else {
          controller.itemInfo = null;
          Get.back();
        }
      },
      body: GetBuilder<HomeItemDetailController>(builder: (newController) {
        int id;
        rateandreview = controller.getRating();
        if (!controller.isLoading.value) {
          _itemAddress =
              (controller.itemInfo.city?.trim().isNotEmpty == true ? controller.itemInfo.city!.trim() : '') +
                  (controller.itemInfo.state?.trim().isNotEmpty == true
                      ? ', ' + controller.itemInfo.state!.trim()
                      : '') +
                  (controller.itemInfo.country?.trim().isNotEmpty == true
                      ? ', ' + controller.itemInfo.country!.trim()
                      : '');
        }

        if (controller.itemInfo is Map<String, dynamic>) {
          id = controller.itemInfo['id'];
        } else {
          id = controller.itemInfo?.id;
        }

        controller.setItemInfo(id);
        return [
          [
            [
              _showListingPhotos(),
              scrollingDotWidget(
                  controller: _itemPhotosScrollcontroller,
                  count: controller.itemInfo.listPhotos != null ? controller.itemInfo.listPhotos.length : 1,
                  height: _listImgHeight),
            ].toStack(),
            controller.isLoading.value
                ? const SizedBox.shrink()
                : switch (_onViewCarThemeType) {
                    1 => _showTheme1BodyContent(),
                    2 => _showTheme2BodyContent(),
                    3 => _showTheme3BodyContent(),
                    4 => _showTheme4BodyContent(),
                    _ => const SizedBox.shrink(),
                  }
          ].toNestedScroll(scrollController: _nestedScrollController, toolbarHeight: 70),
          _showBottomCheckAvailability().toPositionedAlign(alignment: AlignmentDirectional.bottomCenter),
          controller.buildWhiteCurtain(bgColor: Colors.black),
          _showPhotosOverlayContent(),
          controller
              .buildWhiteCurtain(
                  CustomWidget: _showAppBarContent(isShowEndActions: isShowEndActions), isReverse: true)
              .toPad(bottom: 10),
        ].toStack();
      }),
      isShowAppBar: false,
      resizeToAvoidBottomInset: false,
    );
  }

  Widget _showTheme1BodyContent() {
    List<Widget> ListItemWidgets = [];
    Widget headerWidget = _showListingHeaderInfo();
    Widget carGridInfoWidget = _showCarFeatureGrid();
    Widget overallCarRatingWidget = _showOverallCarRatingWidget();
    Widget hostInfo = _showHostDetailsInfo().toPad(bottom: 20);
    Widget mixMaxWidget = _showMinMaxDaysInfo();
    controller.itemInfo?.carRules.length;
    ListItemWidgets.add(headerWidget);
    ListItemWidgets.add(hostInfo);
    ListItemWidgets.add(carGridInfoWidget);
    ListItemWidgets.add(_showAboutCarInfo(title: label_about_the_car.tr));
    ListItemWidgets.add(_showCarFeaturesInfo());
    ListItemWidgets.add(mixMaxWidget);
    ListItemWidgets.add(overallCarRatingWidget);
    ListItemWidgets.add(_showCarReviewsInfo(count: rateandreview.$2));
    ListItemWidgets.add(_showLocationInfo());
    ListItemWidgets.add(_showCarRulesInfo(iconView: 1, isIconSize: true));
    ListItemWidgets.add(_showCancellationPolicyInfo(iconView: 1, isIconSize: true));
    ListItemWidgets.add(_showAvailabilityInfo(iconView: 1, isIconSize: true));
    ListItemWidgets.add(_showContactHostInfo(iconView: 1, isIconSize: true));
    ListItemWidgets.add(_showSimilarList());

    List<Widget> ListItemWidgetsWithDivider = ListItemsWithDivider(
      WidgetList: ListItemWidgets,
      noSpaceIndices: {
        1,
        (controller.itemInfo?.carFeatures?.isEmpty) ? 4 : -1,
        controller.minMaxDaysList.isEmpty ? 5 : -1,
        !(rateandreview.$1 != null && rateandreview.$2 != 0) ? 7 : -1,
        controller.itemInfo?.carRules?.isEmpty ? 9 : -1,
        !(controller.itemInfo?.userId != controller.appPreference.userID) ? 11 : -1,
        !(controller.itemInfo?.userId != controller.appPreference.userID) ? 12 : -1
      },
      noDividerIndices: {
        1,
        6,
        (controller.itemInfo?.carFeatures?.isEmpty) ? 4 : -1,
        controller.minMaxDaysList.isEmpty ? 5 : -1,
        !(rateandreview.$1 != null && rateandreview.$2 != 0) ? 7 : -1,
        controller.itemInfo?.carRules?.isEmpty ? 9 : -1,
        !(controller.itemInfo?.userId != controller.appPreference.userID) ? 11 : -1,
        !(controller.itemInfo?.userId != controller.appPreference.userID) ? 12 : -1
      },
    );
    return [_showDurationDiscounts(), ListItemWidgetsWithDivider.toColumn()]
        .toColumn()
        .toPad(horizontal: AppDimen.startMargin);
  }

  Widget _showTheme2BodyContent() {
    List<Widget> listItemWidgets = [];
    Widget headerWidget = _showListingHeaderInfo();
    Widget carlistInfoWidget = _showCarFeatureList();
    Widget overallCarRatingWidget = _showOverallCarRatingWidget();
    Widget hostInfo = _showHostDetailsInfo(indicatorColor: appColors.primaryColor).toPad(bottom: 20);

    listItemWidgets.add(headerWidget);
    listItemWidgets.add(carlistInfoWidget);
    listItemWidgets.add(hostInfo);
    listItemWidgets.add(_showAboutCarInfo(title: title_description.tr.toUpperLowerCase()));
    listItemWidgets.add(_showCarFeaturesInfo());
    listItemWidgets.add(_showMinMaxDaysInfo());
    listItemWidgets.add(overallCarRatingWidget);
    listItemWidgets.add(_showCarReviewsInfo(count: rateandreview.$2));
    listItemWidgets.add(_showLocationInfo());
    listItemWidgets.add(_showCarRulesInfo(iconView: 2));
    listItemWidgets.add(_showCancellationPolicyInfo(iconView: 2));
    listItemWidgets.add(_showAvailabilityInfo(iconView: 2));
    listItemWidgets.add(_showContactHostInfo(iconView: 2));
    listItemWidgets.add(_showSimilarList());

    List<Widget> listItemWidgetsWithDivider = ListItemsWithDivider(
      WidgetList: listItemWidgets,
      noSpaceIndices: {
        2,
        (controller.itemInfo?.carFeatures?.isEmpty) ? 4 : -1,
        controller.minMaxDaysList.isEmpty ? 5 : -1,
        !(rateandreview.$1 != null && rateandreview.$2 != 0) ? 7 : -1,
        controller.itemInfo?.carRules?.isEmpty ? 9 : -1,
        !(controller.itemInfo?.userId != controller.appPreference.userID) ? 11 : -1,
        !(controller.itemInfo?.userId != controller.appPreference.userID) ? 12 : -1
      },
      noDividerIndices: {
        0,
        2,
        6,
        (controller.itemInfo?.carFeatures?.isEmpty) ? 4 : -1,
        controller.minMaxDaysList.isEmpty ? 5 : -1,
        !(rateandreview.$1 != null && rateandreview.$2 != 0) ? 7 : -1,
        controller.itemInfo?.carRules?.isEmpty ? 9 : -1,
        !(controller.itemInfo?.userId != controller.appPreference.userID) ? 11 : -1,
        !(controller.itemInfo?.userId != controller.appPreference.userID) ? 12 : -1
      },
    );
    return [_showDurationDiscounts(), listItemWidgetsWithDivider.toColumn()]
        .toColumn()
        .toPad(horizontal: AppDimen.startMargin);
  }

  Widget _showTheme3BodyContent() {
    List<Widget> ListItemWidgets = [];
    Widget headerWidget = _showListingHeaderInfo(isAddBackground: true, iconColor: appColors.black);
    Widget aboutCarWidget = _showAboutCarInfo(title: title_description.tr.toUpperLowerCase())
        .toPad(vertical: AppDimen.startMargin);
    Widget carlistInfoWidget = _showCarFeatureList(
        iconColor: appColors.black,
        iconFillColor: appColors.myTripsBGColor,
        direction: Axis.horizontal,
        fillColor: Colors.transparent);
    Widget overallCarRatingWidget = _showOverallCarRatingWidget(iconColor: appColors.black);
    Widget hostInfo = _showHostDetailsInfo(
            borderColor: appColors.secondaryColor,
            fillColor: appColors.theme4AppBarBg,
            ownerName: controller.itemInfo.user?.profile?.firstName,
            imageSize: 40)
        .toPad(bottom: 12);

    Widget locationInfoWidget = _showLocationInfo();
    List<Widget> bottomgroupwidgets = [
      0.toHeight(),
      _showCarRulesInfo(),
      _showCancellationPolicyInfo(iconView: 2, isRemoveDivider: false),
      _showAvailabilityInfo(),
      _showContactHostInfo(),
      0.toHeight()
    ];
    List<Widget> ListbottomgroupwidgetsWithDivider = ListItemsWithDivider(
        isPadForDivider: true,
        dividerWidth: deviceWidth - (AppDimen.startMargin * 2),
        WidgetList: bottomgroupwidgets,
        noDividerIndices: {
          0,
          4,
          controller.itemInfo?.carRules?.isEmpty ? 1 : -1,
          !(controller.itemInfo?.userId != controller.appPreference.userID) ? 3 : -1,
          !(controller.itemInfo?.userId != controller.appPreference.userID) ? 2 : -1,
        },
        noSpaceIndices: {
          controller.isPreview ? 0 : -1,
          controller.isPreview ? 2 : -1,
          controller.itemInfo?.carRules?.isEmpty ? 1 : -1,
          !(controller.itemInfo?.userId != controller.appPreference.userID) ? 3 : -1,
          !(controller.itemInfo?.userId != controller.appPreference.userID) ? 4 : -1,
        });

    Widget borderBottomWidgets = CustomBorderContainer(
      borderRadius: _onViewCarBorderRadius,
      padding: pad(w: AppDimen.startMargin),
      body: ListbottomgroupwidgetsWithDivider.toColumn(),
    );
    ListItemWidgets.add(headerWidget);
    ListItemWidgets.add(aboutCarWidget);
    ListItemWidgets.add(hostInfo);
    ListItemWidgets.add(carlistInfoWidget);
    ListItemWidgets.add(_showCarFeaturesInfo(title: label_features.tr));
    ListItemWidgets.add(_showMinMaxDaysInfo());
    ListItemWidgets.add(overallCarRatingWidget);
    ListItemWidgets.add(_showCarReviewsInfo(count: rateandreview.$2, iconColor: appColors.black));
    ListItemWidgets.add(locationInfoWidget);
    ListItemWidgets.add(borderBottomWidgets);
    ListItemWidgets.add(_showSimilarList());

    List<Widget> ListItemWidgetsWithDivider = ListItemsWithDivider(
      WidgetList: ListItemWidgets,
      noSpaceIndices: {
        0,
        1,
        2,
        (controller.itemInfo?.carFeatures?.isEmpty) ? 4 : -1,
        controller.minMaxDaysList.isEmpty ? 5 : -1,
        !(rateandreview.$1 != null && rateandreview.$2 != 0) ? 7 : -1,
      },
      noDividerIndices: {
        0,
        1,
        2,
        (controller.itemInfo?.carFeatures?.isEmpty) ? 4 : -1,
        controller.minMaxDaysList.isEmpty ? 5 : -1,
        6,
        8,
        9,
        !(rateandreview.$1 != null && rateandreview.$2 != 0) ? 7 : -1,
      },
    );
    return [_showDurationDiscounts(), ListItemWidgetsWithDivider.toColumn()]
        .toColumn()
        .toPad(horizontal: AppDimen.startMargin);
  }

  Widget _showTheme4BodyContent() {
    List<Widget> ListItemWidgets = [];
    Widget headerWidget =
        _showListingHeaderInfo(isDisableBottomPad: true).toPad(vertical: AppDimen.startMargin);
    Widget carGridInfoWidget = _showCarFeatureGrid(
        isEnableDottedBorder: true, itemFillColor: appColors.theme4AppBarBg, isShowicon: false);
    Widget overallCarRatingWidget = _showOverallCarRatingWidget();
    Widget hostInfo = _showHostDetailsInfo(
        isAddBackground: true, titleSectionBGColor: appColors.theme4AppBarBg, imageSize: 45);

    ListItemWidgets.add(hostInfo);
    ListItemWidgets.add(headerWidget);
    ListItemWidgets.add(carGridInfoWidget);
    ListItemWidgets.add(_showAboutCarInfo(title: title_description.tr.toUpperLowerCase()));
    ListItemWidgets.add(_showMinMaxDaysInfo());
    ListItemWidgets.add(_showCarFeaturesInfo(title: label_features.tr));
    ListItemWidgets.add(overallCarRatingWidget);
    ListItemWidgets.add(_showCarReviewsInfo(count: rateandreview.$2));
    ListItemWidgets.add(_showLocationInfo());
    ListItemWidgets.add(_showCarRulesInfo());
    ListItemWidgets.add(_showCancellationPolicyInfo(iconView: 2));
    ListItemWidgets.add(_showAvailabilityInfo());
    ListItemWidgets.add(_showContactHostInfo(iconView: 2, linkText: label_theme4_inbox.tr));
    ListItemWidgets.add(_showSimilarList());

    List<Widget> ListItemWidgetsWithDivider = ListItemsWithDivider(
      isPadForDivider: true,
      WidgetList: ListItemWidgets,
      noSpaceIndices: {
        0,
        1,
        (controller.itemInfo?.carFeatures?.isEmpty) ? 5 : -1,
        controller.minMaxDaysList.isEmpty ? 4 : -1,
        !(rateandreview.$1 != null && rateandreview.$2 != 0) ? 6 : -1,
        !(rateandreview.$1 != null && rateandreview.$2 != 0) ? 7 : -1,
        controller.itemInfo?.carRules?.isEmpty ? 9 : -1,
        !(controller.itemInfo?.userId != controller.appPreference.userID) ? 11 : -1,
        !(controller.itemInfo?.userId != controller.appPreference.userID) ? 12 : -1
      },
      noDividerIndices: {
        0,
        1,
        6,
        8,
        (controller.itemInfo?.carFeatures?.isEmpty) ? 5 : -1,
        controller.minMaxDaysList.isEmpty ? 4 : -1,
        7,
        controller.itemInfo?.carRules?.isEmpty ? 9 : -1,
        !(controller.itemInfo?.userId != controller.appPreference.userID) ? 11 : -1,
        !(controller.itemInfo?.userId != controller.appPreference.userID) ? 12 : -1
      },
    );
    return [_showDurationDiscounts(), ListItemWidgetsWithDivider.toColumn()]
        .toColumn()
        .toPad(horizontal: AppDimen.startMargin);
  }

  Widget _showCarFeatureList({Color? fillColor, Color? iconFillColor, Color? iconColor, Axis? direction}) {
    return List.generate(controller.hostListInfo.length, (index) {
      return CustomBorderContainer(
        margin: pad(bottom: index == controller.hostListInfo.length - 1 ? 0 : 12),
        borderColor: appColors.myTripsDividerColor,
        borderWidth: 1,
        borderRadius: _onViewCarBorderRadius,
        color: fillColor ?? appColors.theme4AppBarBg,
        padding: pad(a: 12),
        body: [
          controller.hostListInfo[index]['placeholder']
              .toString()
              .toSVG(size: 18, colour: iconColor ?? appColors.white)
              .toCircle(color: iconFillColor ?? appColors.secondaryColor, padding: 8),
          if (direction == Axis.horizontal)
            RichText(
              textAlign: TextAlign.start,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              text: TextSpan(
                children: getTextSpans(
                    highlightWords: [controller.hostListInfo[index]['itemName']],
                    primaryText:
                        '${controller.hostListInfo[index]['title']}: ${controller.hostListInfo[index]['itemName']}',
                    highlightColor: appColors.customTextColor,
                    fontWeight: AppFont.regular),
                style: TextStyle(
                  fontFamily: AppFont.font,
                  color: appColors.customTextColor,
                  fontWeight: AppFont.semiBold,
                  fontSize: AppDimen.textSize_14,
                ),
              ),
            ).toStretch()
          else
            [
              CustomText(
                text: controller.hostListInfo[index]['title'],
                fontWeight: AppFont.semiBold,
                size: AppDimen.textSize_14,
              ),
              CustomText(
                text: controller.hostListInfo[index]['itemName'],
                fontWeight: AppFont.regular,
                size: AppDimen.textSize_14,
                overflow: TextOverflow.ellipsis,
              ),
            ].toColumn().toStretch()
        ].toRow(mainAxisAlignment: MainAxisAlignment.start),
      );
    }).toColumn();
  }



  @override
  updateitemPhotos() {
    for (int index = 0; index < controller.itemInfo?.listPhotos?.length; index++) {
      var item = controller.itemInfo?.listPhotos[index];
      if (item != null &&
          item.name != null &&
          controller.itemInfo.listPhotoName != null &&
          item.name == controller.itemInfo.listPhotoName) {
        _itemPhotosScrollcontroller = PageController(initialPage: index, viewportFraction: 1);
      }
      _transformationController.add(TransformationController());
    }
    controller.createOverlay(this,
        startkey: _itemKey,
        endkey: _overlayKey,
        context: context,
        baseController: controller,
        isOverlayAdded: rxIsOverlayAdded);
    _pageController.addListener(() {
      controller.change(rxVariable: rxIsOverlayAdded, value: rxIsOverlayAdded.value);
    });
  }

  Widget _showAboutCarInfo({String? title}) {
    Widget text = _getDescriptionText(
        maxLines: 2,
        onTextOverflowed: (isoverflow) {
          controller.change(rxVariable: controller.rxAboutPlaceShowMore, value: isoverflow);
        });
    return controller.itemInfo.description != null && controller.itemInfo.description.isNotEmpty
        ? [
            CustomTitleText(
              text: title ?? title_description.tr.toUpperLowerCase(),
              size: AppDimen.textSize_18,
              fontWeight: AppFont.medium,
            ).toPad(
              bottom: 13,
            ),
            text,
            10.toHeight(),
            GetBuilder(
                id: controller.rxAboutPlaceShowMore.id,
                init: controller,
                builder: (context) => controller.rxAboutPlaceShowMore.value
                    ? getShowMoreWidget(onTap: () {
                        showCustomBottomSheet(
                            backButtonWidget: getBackIconWidget(
                              backIcon: Assets.drawableSignupClose,
                              clickableSize: 50,
                              margin: pad(w:AppDimen.startMargin,h: 18,),
                            ),
                            contentWidget: GetBuilder<BottomSheetController>(
                                builder: (newController) =>
                                    ColoredBox(
                                      color: appColors.white,
                                    child: _getDescriptionText()
                                        .toScroll()
                                        .toPad(
                                            bottom: Platform.isIOS ? AppDimen.startMargin : 5,
                                            horizontal: AppDimen.startMargin,
                                            top: 15))),
                            title: title ?? title_description.tr.toUpperLowerCase());
                      })
                    : 0.toHeight()),
          ].toColumn()
        : 0.toHeight();
  }

  Widget _showCarFeaturesInfo({String? title}) {
    List<Map<String, dynamic>> propertyInfoList = [];

    controller.itemInfo?.carFeatures.forEach((value) {
      Map<String, dynamic> propertyInfo = {};
      propertyInfo['itemPropertyText'] = value?.itemName ?? '';
      propertyInfo['iconWidget'] = _getCarItemIndicatorWidget();
      propertyInfoList.add(propertyInfo);
    });

    return itemDetailSpecificationList(
        textColor: appColors.customTextColor,
        title: title ?? label_car_features.tr,
        propertyInfoList: propertyInfoList,
        indicatorIcon: carFeatureItemIcon,
        showMoreWidget: getShowMoreWidget(onTap: () {
          showCustomBottomSheet(
            backButtonWidget: getBackIconWidget(
              backIcon: Assets.drawableSignupClose,
              clickableSize: 50,
              margin: pad(
                w: AppDimen.startMargin,
                h: 18,
              ),
            ),
            contentWidget: GetBuilder<BottomSheetController>(builder: (newController) {
              return toListView(
                  key: const PageStorageKey<String>('carFeatures'),
                  itemCount: propertyInfoList.length,
                  itemBuilder: (context, index) {
                    return <Widget>[
                      [
                        carFeatureItemIcon == "dotindicator"
                            ? CustomCounterContainer(
                                height: 10,
                                width: 10,
                                margin: pad(top: 3, end: 5),
                                color: appColors.customTextColor,
                              )
                            : (propertyInfoList[index]['iconWidget'] is String)
                                ? propertyInfoList[index]['iconWidget'].toString().toSVG(
                                    colour: appColors.black,
                                    isReverseRotation: intl.Bidi.isRtlLanguage(Get.locale?.languageCode))
                                : propertyInfoList[index]['iconWidget'] != null &&
                                        (propertyInfoList[index]['iconWidget'] is Widget)
                                    ? (propertyInfoList[index]['iconWidget'] as Widget)
                                    : const SizedBox.shrink(),
                        propertyInfoList[index]['iconWidget'] != null ? 6.toWidth() : const SizedBox.shrink(),
                        CustomText(text: propertyInfoList[index]["itemPropertyText"]),
                      ].toRow(mainAxisAlignment: MainAxisAlignment.start).toPad(bottom: 18)
                    ].toScroll().toPad(horizontal: AppDimen.startMargin);
                  });
            }),
            title: title ?? label_car_features.tr,
          );
        }),
        controller: controller);
  }

  Widget _showMinMaxDaysInfo() {
    int minnight = controller.itemInfo?.listingData?.minDay ?? 0;
    int maxnight = controller.itemInfo?.listingData?.maxDay ?? 0;
    String minNightLabel = controller.itemInfo?.listingData?.minDayItemLabel ?? "";
    String minNightOtherLabel = controller.itemInfo?.listingData?.minDayOtherItemLabel ?? "";
    String maxNightLabel = controller.itemInfo?.listingData?.maxDayItemLabel ?? "";
    String maxNightOtherLabel = controller.itemInfo?.listingData?.maxDayOtherItemLabel ?? "";
    controller.minMaxDaysList.clear();
    if (minnight > 0) {
      Map<String, dynamic> propertyInfo = {};
      propertyInfo["itemPropertyText"] = '$minnight ${minnight <= 1 ? minNightLabel : minNightOtherLabel}';
      propertyInfo['iconWidget'] = _getCarItemIndicatorWidget();
      controller.minMaxDaysList.add(propertyInfo);
    }
    if (maxnight > 0) {
      Map<String, dynamic> propertyInfo2 = {};
      propertyInfo2["itemPropertyText"] = '$maxnight ${maxnight <= 1 ? maxNightLabel : maxNightOtherLabel}';
      propertyInfo2['iconWidget'] = _getCarItemIndicatorWidget();
      controller.minMaxDaysList.add(propertyInfo2);
    }
    return controller.minMaxDaysList.isNotEmpty
        ? itemDetailSpecificationList(
            textColor: appColors.customTextColor,
            indicatorIconPadding: 2,
            title: '${label_min.tr.capitalizeFirst} / ${label_max.tr.toUpperLowerCase()} ${dayPlural.tr}',
            propertyInfoList: controller.minMaxDaysList,
            indicatorIcon: carFeatureItemIcon,
            controller: controller)
        : 0.toHeight();
  }

  Widget getShowMoreWidget({GestureTapCallback? onTap, String? showAllText}) {
    return isShowIcon
        ? CustomShowMoreText(
            text: showAllText ?? showMoreText!,
            fontWeight: AppFont.regular,
            size: AppDimen.textSize_16,
            color: appColors.secondaryColor,
            isReverseRotation: true,
            showMoreIconTopPadding: 0,
            showMoreIcon: _onViewCarBackIcon,
            onTap: () {
              if (onTap != null) {
                onTap();
              }
            },
          )
        : CustomText(
            text: showAllText ?? showMoreText!,
            color: appColors.secondaryColor,
            fontWeight: AppFont.regular,
            size: AppDimen.textSize_16,
            onTap: () {
              if (onTap != null) {
                onTap();
              }
            },
          );
  }

  @override
  void dispose() {
    if (cameraController != null) {
      cameraController?.dispose();
      cameraController = null;
    }
    super.dispose();
  }

  @override
  navigateScreen(HomeItemDetailScreen screen, dynamic param, {baseController}) {
    switch (screen) {
      case HomeItemDetailScreen.Calendar:
        int minnight = controller.itemInfo?.listingData?.minDay ?? 1;
        int maxnight = controller.itemInfo?.listingData?.maxDay ?? 1;
        Map<String, dynamic> minMaxNights = {};
        minMaxNights['minnight'] = minnight;
        minMaxNights['maxnight'] = maxnight;
        minMaxNights['maxDaysNotice'] = controller.itemInfo?.listingData?.maxDaysNotice;

        if (param == 'hide' &&
            controller.contactHostDates.isNotEmpty &&
            controller.selectedDates.isNotEmpty &&
            controller.contactHostDates.first == controller.selectedDates.first &&
            controller.contactHostDates.last == controller.selectedDates.last) {
          controller.selectedDates.clear();
        }
        RxList<DateTime> tempSelectedDates = RxList<DateTime>.from(controller.selectedDates);
        RxString tempSelectedStartTime = controller.selectedStartTime.value.obs;
        RxString tempSelectedEndTime = controller.selectedEndTime.value.obs;
        Get.to(
                FilterCalendar(
                    controller: baseController ?? controller,
                    selectedDates: tempSelectedDates,
                    selectedStartTime: tempSelectedStartTime,
                    selectedEndTime: tempSelectedEndTime,
                    contactHostDates: param == 'hide' ? controller.contactHostDates : null,
                    blockedDates: controller.getBlockedDates(),
                    minMaxNights: minMaxNights,
                    calendarType: 'availability',
                    initialDateTime: DateTime.now(),
                    isBlockedDateStrikeOut: true),
                transition: Transition.downToUp)
            ?.then((list) {
          if (list != null && list.isNotEmpty) {
            controller.selectedDates.assignAll(list["selectedDate"]);
            controller.selectedStartTime.value = list["selectedStartTime"].value;
            controller.selectedEndTime.value = list["selectedEndTime"].value;
          }
        });
      case HomeItemDetailScreen.itemDetail:
        Get.delete<HomeItemDetailController>();
        Get.lazyPut<HomeItemDetailController>(() => HomeItemDetailController(), fenix: true);
        Get.to(() => HomeItemDetailView(), arguments: param, routeName: '/itemdetail${photoUploadSizeInMb--}')
            ?.then((value) {});
      case HomeItemDetailScreen.aboutLicencePage:
        Get.to(AboutLicense(), binding: BookingBinding());
      case HomeItemDetailScreen.aboutTrip:
        Get.to(AboutTrip(), binding: BookingBinding());

      case HomeItemDetailScreen.ConfirmAndPay:
        Map<String, dynamic> map = {};
        map['billingCalcuationData'] = controller.billingCalcuationData.value;
        map['itemInfo'] = controller.itemInfo;
        map['updatedGuestCount'] = controller.rxUpdatedGuestCount.value;
        map['selectedDates'] = controller.selectedDates;
        map['selectedStartTime'] = controller.selectedStartTime;
        map['selectedEndTime'] = controller.selectedEndTime;
        map['pageType'] = 'pay';
        Get.to(
          () => ConfirmAndPayPage(controller: controller),
          binding: BookingBinding(),
          arguments: map,
        )?.then((value) {
          if (value != null && value.isNotEmpty) {
            debugPrint("ContactHospayt back: ${controller.selectedDates}--- ${value['selectedDates']}");
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (controller.selectedDates.first != value['selectedDates'].first ||
                  controller.selectedDates.last != value['selectedDates'].last) {
                controller.selectedDates.value = value['selectedDates'];
                controller.itemInfo = value['itemInfo'];
                controller.change(
                    rxVariable: controller.rxUpdatedGuestCount, value: value['updatedGuestCount']);
                controller.update();
              }
            });
          }
        });

      case HomeItemDetailScreen.ContactHost:
        Map<String, dynamic> map = {};
        debugPrint(" backpress contacthost dates navigation : ${controller.contactHostDates}");
        map['billingCalcuationData'] = controller.billingCalcuationData.value;
        map['itemInfo'] = controller.itemInfo;
        map['updatedGuestCount'] = controller.rxUpdatedGuestCount.value;
        map['selectedDates'] = controller.selectedDates;
        map['contactHostDates'] = controller.contactHostDates;
        map['selectedStartTime'] = controller.selectedStartTime;
        map['selectedEndTime'] = controller.selectedEndTime;
        map['pageType'] = 'contacthost';
        Get.to(
          () => ConfirmAndPayPage(controller: controller),
          binding: BookingBinding(),
          arguments: map,
        )?.then((value) {
          if (value != null && value.isNotEmpty) {
            debugPrint("ContactHost back: ${value['contactHostDates']}");
            debugPrint("startTime back: ${value['selectedStartTime']}");
            debugPrint("endTime back: ${value['selectedEndTime']}");
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (value['selectedDates'] != null &&
                  (controller.selectedDates.first != value['selectedDates'].first ||
                      controller.selectedDates.last != value['selectedDates'].last)) {
                controller.selectedDates.value = value['selectedDates'];
                controller.itemInfo = value['itemInfo'];
                controller.rxUpdatedGuestCount = value['updatedGuestCount'];
                controller.contactHostDates = value['contactHostDates'];
                controller.update();
              } else if (value['contactHostDates'] != null) {
                controller.contactHostDates = value['contactHostDates'];
              }
            });
          }
        });

      case HomeItemDetailScreen.PaymentType:
        Map<String, dynamic> map = {};
        map['billingCalcuationData'] = controller.billingCalcuationData.value;
        map['itemInfo'] = controller.itemInfo;
        map['message'] = controller.confirmpayMessageController.Ttext;
        map['threadId'] = controller.threadId;
        map['isDeliveryCheck'] = controller.isDeliveryCheck.value;
        map['startTime'] = controller.startTime24Four;
        map['endTime'] = controller.endTime24Four;
        map['licenceNumber'] = controller.licenceNoController.Ttext;
        map['firstName'] = controller.firstNameController.Ttext;
        map['lastName'] = controller.lastNameController.Ttext;
        map['dateOfBirth'] = controller.dateOfBirthController.Ttext;
        map['country'] = controller.countryController.Ttext;
        map['couponCode'] = controller.couponCodeController.Ttext;
        map['isPromoApplied'] = controller.isPromoApplied.value;
        Get.to(
          () => PaymentTypePage(),
          binding: BookingBinding(),
          arguments: map,
        );
      case HomeItemDetailScreen.uploadProfile:
        Get.to(
          () => UploadProfilePhoto(),
          binding: BookingBinding(),
          arguments: param,
        );
    }
  }

  @override
  navigateSigninScreen() {
    HomeController homeController = Get.find();
    homeController.homeNavigator?.navigateScreen(HomeScreen.signIn);
  }
}
