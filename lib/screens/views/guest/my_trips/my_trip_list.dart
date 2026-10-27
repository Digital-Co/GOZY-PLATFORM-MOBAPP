import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/model/tab_bar_item_model.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/resources/app_layout.dart';
import 'package:gozy/screens/views/inspection/inspection_entry.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/screens/views/guest/my_trips/my_trip_list_navigator.dart';
import 'package:gozy/widgets/bottom_sheet/host_and_reviews_info/host_review_bottom_sheet.dart';
import 'package:gozy/widgets/common/custom_container/custom_border_container.dart';
import 'package:gozy/widgets/common/custom_container/custom_counter_container.dart';
import 'package:gozy/widgets/common/custom_container/custom_wishlist_container.dart';
import 'package:gozy/widgets/common/custom_network_image/custom_profile_network_image.dart';
import 'package:gozy/widgets/common/custom_textfield/custom_textfield_area.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/conditional_parent_widget.dart';
import 'package:gozy/widgets/common/custom_button/custom_button.dart';
import 'package:gozy/widgets/custom_empty_view.dart';
import 'package:gozy/widgets/custom_stateful_widget.dart';
import 'package:gozy/widgets/custom_text.dart';
import 'package:gozy/widgets/dotted_border/dotted_border.dart';
import 'package:gozy/widgets/rect_getter.dart';
import 'package:gozy/widgets/shimmer.dart';
import 'package:gozy/widgets/theme4/custom_dash_divider.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

import '../../../../config/client.dart';
import '../../../../widgets/common/custom_dialog/custom_dialog.dart';
import '../../../../widgets/custom_popup_menu.dart';
import '../../home/home_controller.dart';
import 'my_trip_list_controller.dart';

class MyTripsListPage extends CustomStatefulWidget {
  MyTripsListPageState state = MyTripsListPageState();
  bool? isPast;

  MyTripsListPage({super.key, this.isPast});

  @override
  MyTripsListPageState createState() => MyTripsListPageState();
}

class MyTripsListPageState extends CustomStatefulWidgetState<MyTripsListPage> with TickerProviderStateMixin {
  late MyTripListController controller = Get.find();
  FocusNode contactUsFocusNode = FocusNode();
  final List<String> _tabs = [label_upcoming.tr, label_previous.tr];
  int _previousIndex = 0;
  double popupBorderRadius = 0;
  PageStorageKey inprogresskey = PageStorageKey('inprogress: ${Random().nextInt(10000)}'),
      completedKey = PageStorageKey('completed: ${Random().nextInt(10000)}');
  bool _btnDisable = false;
  final String _tripsTitle = getTripTitle();

  @override
  void initState() {
    isShowLoader = false;
    int initialIndex = 0;
    if (widget.isPast != null || (isPastReservationSection != null && isPastReservationSection!)) {
      initialIndex = 1;
      isPastReservationSection = false;
    }

    controller.tabController = TabController(length: _tabs.length, vsync: this, initialIndex: initialIndex);
    _previousIndex = initialIndex;

    controller.tabBaritems = List<TabBarItemModel>.generate(_tabs.length, (index) {
      PageStorageKey pagekey = PageStorageKey('${_tabs[index]}: ${Random().nextInt(10000)}');
      TabBarItemModel tabbarmodal = (
        pageStorageKey: pagekey,
        totalCount: 1,
        tabBarListData: [],
        tabliistScrollController: ScrollController(),
        listCurrentpage: 1.obs,
        isTabLoading: true,
        type: _tabs[index],
        nonFilterTabBarListData: []
      );
      return tabbarmodal;
    });

    controller.tabController.addListener(() {
      Get.forceAppUpdate();
      if (controller.tabController.index != _previousIndex) {
        isShowLoader = false;
        controller.isLoading.value = false;
        var currentTabItem = controller.tabBaritems[controller.tabController.index];

        if (currentTabItem.tabBarListData.isEmpty) {
          controller.tabBaritems[controller.tabController.index] = currentTabItem.copyWith(
            isTabLoading: true,
          );
          controller.isLoading.value = true;
          controller.checkNetwork(controller.getMyTrips);
        } else {
          controller.tabBaritems[controller.tabController.index] = currentTabItem.copyWith(
            isTabLoading: false,
          );
          controller.isLoading.refresh();
        }
        _previousIndex = controller.tabController.index;
      }
    });

    debugPrint("widget.isPast: ${widget.isPast} --- ${isPastReservationSection}");

    controller.isLoading.value = true;
    controller.checkNetwork(controller.getMyTrips);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch(overALLThemeType) {
      case 1:
        popupBorderRadius = 6;
        break;
      case 2:
        popupBorderRadius = 0;
        break;
      case 3:
        popupBorderRadius = 12;
        break;
      default:
        popupBorderRadius = 6;
        break;
    }
    return CustomScaffold(
        controller: controller,
        isShowAppBar: true,
        backIcon: '',
        loader: LottieLoaders.three_dots_loader,
        isShowBGOnLoader: false,
        action: Assets.drawableTripsRefresh
            .toSVG(
              size: 25,
              colour: appColors.secondaryColor,
              onTap: () {
                ScrollController scrollController =
                    controller.tabBaritems[controller.tabController.index].tabliistScrollController;
                if (scrollController.hasClients) scrollController.jumpTo(0.0);
                controller.getMyListData();
              },
            )
            .toPad(end: 20),
        appBartextFontSize: AppDimen.textSize_26,
        appBarTextFontWeight: AppFont.semiBold,
        title: appPreference.isOwner!
            ? _tripsTitle
            : '${_tripsTitle != label_theme2_trips.tr ? label_my.tr : ''} $_tripsTitle',
        body: showBodyContentWidget());
  }

  GetBuilder<MyTripListController> showBodyContentWidget() {
    return GetBuilder<MyTripListController>(builder: (newController) {
      return toTabBarView(
        tabs: _tabs,
        tabBarWidgets:
            List<Widget>.generate(controller.tabBaritems.length, (index) => _showTripListWidget(index)),
        tabController: controller.tabController,
      );
    });
  }

  CustomEmptyView _showEmptyWidget() {
    String emptytitle = _tripsTitle.toLowerCase();
    if (_tripsTitle == label_theme2_trips.tr) {
      emptytitle = tabbar_theme1_trips.tr.toLowerCase();
    }
    List<String> emptystr = [];
    List<String> emptydesc = [];
    emptystr = [
      empty_title_you_dont_have.trParams({'field': emptytitle}),
      empty_title_you_dont_have.trParams({'field': emptytitle}),
    ];

    if (appPreference.isOwner!) {
      emptydesc = [
        empty_label_you_dont_have_any_upcoming_reservations
            .trParams({'field': label_upcoming.tr.toLowerCase()}),
        empty_label_you_dont_have_any_upcoming_reservations
            .trParams({'field': label_previous.tr.toLowerCase()}),
      ];
    } else {
      emptydesc = [
        label_empty_desc_trips.trParams({'field1': _tabs[0].toLowerCase(), 'field2': emptytitle}),
        label_empty_desc_trips.trParams({'field1': _tabs[1].toLowerCase(), 'field2': emptytitle}),
      ];
    }

    return CustomEmptyView(
      emptyImageWidget:
          Assets.drawableDrawableTripsEmptyIcon.toSVG(),
      emptyTitle: emptystr.isEmpty ? '' : emptystr[controller.tabController.index],
      emptyDescription: emptydesc[controller.tabController.index],
      buttonText: appPreference.isOwner! ? '' : label_empty_start_explore.tr.toUpperLowerCase(),
      onTap: () {
        HomeController homeController = Get.find();
        homeController.change(rxVariable: homeController.rxSelectedTab, value: 0);
      },
    );
  }

  Obx _showTripListWidget(int index) {
    return Obx(() {
      TabBarItemModel tabItem = controller.tabBaritems[index];
      debugPrint("tab loading: ${tabItem.tabBarListData.isEmpty}");
      return toReviewList(
        reviewListScrollController: tabItem.tabliistScrollController,
        reviewList: tabItem.tabBarListData,
        reviewsCount: tabItem.totalCount,
        onApiFunction: controller.getMyTrips,
        isEnableSwipeToRefresh: false,
        swipeToRefreshIntialFunction: () {
          TabBarItemModel tabitem = controller.tabBaritems[controller.tabController.index];
          controller.tabBaritems[controller.tabController.index] =
              tabitem.copyWith(isTabLoading: true, tabBarListData: []);
          isShowLoader = false;
        },
        controller: controller,
        currentPage: tabItem.listCurrentpage,
        isDisableLoader: true,
        toShowPaginationLoader: controller.isToShowPaginationLoader.value,
        isEnableListener: true,
        bottomPosition: bottomPadForExtendBody,
        emptyWidget: _showEmptyWidget(),
        isShowEmpty: () {
          return (tabItem.tabBarListData.isEmpty && index == controller.tabController.index);
        },
        listView: _showListView(
            tabItem: tabItem,
            isshimmerloading: (tabItem.tabBarListData.isEmpty ? true : tabItem.isTabLoading)),
      ).toShimmer(controller: controller).toPad(top: 15);
    });
  }

  Widget _showListView({
    required TabBarItemModel tabItem,
    required bool isshimmerloading,
  }) {
    List<dynamic>? propertyList = tabItem.tabBarListData;
    ScrollController scrollController = tabItem.tabliistScrollController;
    PageStorageKey storekey = tabItem.pageStorageKey;
    int itemCount = propertyList.isNotEmpty
        ? propertyList.length
        : isshimmerloading
            ? 5
            : 0;
    return ShimmerLoading(
        isLoading: isshimmerloading,
        widgetType: 'myTripList',
        isDarkMode: controller.isDarkMode(),
        darkModeblend: BlendMode.dstIn,
        child: toListView(
            itemCount: itemCount,
            controller: scrollController,
            key: storekey,
            physics: const AlwaysScrollableScrollPhysics(),
            padding: pad(bottom: 30, top: (overALLThemeType == 4) ? 0 : 10, w: AppDimen.startMargin - 1),
            itemBuilder: (context, index) {
              dynamic item;
              if (propertyList.isNotEmpty) {
                item = propertyList[index];
                item = controller.getReservationInfo(reservationId: item.id).$1 ?? item;
                if (controller.tabController.index == 0 &&
                    tabItem.type == _tabs[0] &&
                    item?.reservationState == 'declined') {
                  return const SizedBox.shrink();
                }
              }
              String listTitle = "",
                  address = '',
                  tripdate = '',
                  phoneno = '',
                  reservationstatus = '',
                  email = '';
              bool toshowContact = true;
              print('test9${item?.listData?.dynamicListTitle}');
              print('test9${item?.listTitle}');

              if (item?.listData != null && item?.listData?.title != null) {
                listTitle = (item?.listTitle?.trim() ?? '').replaceAll("\\s+", " ");
              }
              if (item?.listData != null) {
                address = (item?.listData?.street?.trim() ?? '').replaceAll("\\s+", " ");
                address = '$address, ' + (item?.listData?.city?.trim() ?? '').replaceAll("\\s+", " ");
                address = '$address, ' + (item?.listData?.state?.trim() ?? '').replaceAll("\\s+", " ");
                address = '$address, ' + (item?.listData?.country?.trim() ?? '').replaceAll("\\s+", " ");
                address =
                    '$address, ' + (item?.listData?.zipcode?.trim() ?? '').replaceAll("\\s+", " ") + '.';
              }

              if (item?.checkIn != null && item?.checkOut != null) {
                tripdate =
                    '\u200e${getDateFormat(dateFormat: dobformat, milliSec: item?.checkIn).$1.replaceAll(' ', '')} - ${getDateFormat(dateFormat: dobformat, milliSec: item?.checkOut).$1.replaceAll(' ', '')}\u200e';
              }
              debugPrint("item?.startTime: ${item?.startTime} --- ${item?.endTime}");
              if (item?.startTime != null && item?.endTime != null) {
                tripdate =
                    '$tripdate, ${bookingTimeList?[item?.startTime.toString()]} - ${bookingTimeList?[item?.endTime.toString()]}';
              }

              (Color, String)? bookingstatusColor;

              if (item?.reservationState != null) {
                reservationstatus = item?.reservationState?.toString().toUpperLowerCase() ?? '';
                bookingstatusColor =
                    controller.getReservationStatusColor(reservationstatus: reservationstatus);
              }

              if (item?.listData != null) {
                toshowContact = reservationstatus.isNotEmpty &&
                    (reservationstatus.toLowerCase() == 'approved' ||
                        reservationstatus.toLowerCase() == 'completed') &&
                    !isshimmerloading;
                if (appPreference.isOwner!) {
                  if (toshowContact) {
                    phoneno = item?.guestData?.fullPhoneNumber ?? '';
                    email = item?.guestData?.userData?.email ?? '';
                  }
                } else {
                  if (toshowContact) {
                    phoneno = item?.hostData?.fullPhoneNumber ?? '';
                    email = item?.hostData?.userData?.email ?? '';
                  }
                }
              }
              debugPrint("totalWithoutSecurityFee: ${item?.totalWithoutSecurityFee} --- ${item?.guestServiceFee}");
              String renteramount = '';
              if (!isshimmerloading) {
                renteramount =
                    double.parse((item?.totalWithoutSecurityFee ?? 0 + item?.guestServiceFee ?? 0).toString())
                        .currencyConverted(convertedCurrency: item?.currency ?? defaultCurrency)
                        .toString();
              }
              return (switch (overALLThemeType) {
                1 => _showTheme1TripListItem,
                2 => _showTheme2TripListItem,
                3 => _showTheme3TripListItem,
                _ => _showTheme4TripListItem,
              })(
                  isshimmerloading: isshimmerloading,
                  item: item,
                  index: index,
                  bookingstatusColor: bookingstatusColor,
                  listTitle: listTitle,
                  address: address,
                  tripdate: tripdate,
                  reservationstatus: reservationstatus,
                  phoneno: phoneno,
                  email: email,
                  renteramount: renteramount);
            }));
  }

  Widget _showProfileWidget(
      {dynamic item,
      required bool isshimmerloading,
      String? reservationstatus,
      String? amount,
      String? email,
      String? phoneno,
      double? size,
      Color? textColor,
      bool? hideAmountView,
      bool? isShowMore}) {
    String photo = '';
    String? name;
    if (appPreference.isOwner!) {
      if (item?.guestData != null && (item?.guestData?.picture ?? '').toString().isNotEmpty) {
        photo = (item!.guestData!.picture!);
      }
      name = item?.guestData?.firstName;
    } else {
      if (item?.hostData != null && (item?.hostData?.picture ?? '').toString().isNotEmpty) {
        photo = (item!.hostData!.picture!);
      }
      name = item?.hostData?.firstName;
    }

    return [
        CustomProfileNetworkImage(
          onTap: () {
            dynamic profileData = appPreference.isOwner! ? item?.guestData : item?.hostData;
            HostReviewBottomSheet().showHostInfo(
                hostItem: profileData, profileId: profileData?.profileId, isHost: !appPreference.isOwner!);
          },
            profileImageType: overALLAppLayoutModel?.profileIconType ?? '',
            imageUrl: photo,
            all: size ?? 50,
            isShimmerView: isshimmerloading),
        10.toWidth(),
        if (phoneno != null || email != null)
          [
            CustomText(
              text: isshimmerloading ? 20.toGenerateEmptyString() : name ?? '',
              isShimmerView: isshimmerloading,
              fontWeight: AppFont.medium,
              maxLines: 2,
              onTap: () {
                dynamic profileData = appPreference.isOwner! ? item?.guestData : item?.hostData;
                HostReviewBottomSheet().showHostInfo(
                    hostItem: profileData, profileId: profileData?.profileId, isHost: !appPreference.isOwner!);
              },
              overflow: TextOverflow.ellipsis,
              size: AppDimen.textSize_16,
            ),
            if ((email != null && email.isNotEmpty) || isshimmerloading) _showHostEmailWidget(email: isshimmerloading ? 20.toGenerateEmptyString() : (email ?? ""), isShimmerLoading: isshimmerloading, topPadding: isshimmerloading ? null : 0),
            if ((phoneno != null && phoneno.isNotEmpty)) _showHostPhoneNoWidget(phoneno: isshimmerloading ? 20.toGenerateEmptyString() : (phoneno ?? ""), isShimmerLoading: isshimmerloading),
          ].toColumn(crossAxisAlignment: CrossAxisAlignment.start).toStretch(isExpanded: true)
        else
          [
            CustomText(
              text: isshimmerloading ? 20.toGenerateEmptyString() : name ?? '',
              isShimmerView: isshimmerloading,
              color: textColor,
              onTap: () {
                dynamic profileData = appPreference.isOwner! ? item?.guestData : item?.hostData;
                HostReviewBottomSheet().showHostInfo(
                    hostItem: profileData, profileId: profileData?.profileId, isHost: !appPreference.isOwner!);
              },
              maxLines: 2,
              fontWeight: AppFont.medium,
              overflow: TextOverflow.ellipsis,
              size: AppDimen.textSize_16,
            )
          ].toColumn(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center).toStretch(isExpanded: true),
        10.toWidth(),
        (isShowMore ?? false)
            ? _getMoreAndContactSupportWidget(
                item: item,
                reservationstatus: reservationstatus ?? '',
                isshimmerloading: isshimmerloading,
                quaterTurns: 3)
            : hideAmountView ?? false
                ? const SizedBox.shrink()
                : _getAmountView(isshimmerloading: isshimmerloading, amount: amount),
      ].toRow();
  }

  Widget _showHostPhoneNoWidget(
      {required String phoneno, bool isShowIcon = false, bool isshowTitle = false, required bool isShimmerLoading, double? topPadding}) {
    return toOnTap(
      onTap: () {
        if (!_btnDisable) {
          _btnDisable = true;
          String telphone = "tel://$phoneno";
          UrlLauncher.launchUrl(Uri.parse(telphone));
          Future.delayed(const Duration(seconds: 2), () {
            _btnDisable = false;
          });
        }
      },
      child: [
        if (isShowIcon && !isShimmerLoading)
          Assets.drawableTripsPhoneIcon.toSVG(colour: appColors.secondaryColor, size: 15, fit: BoxFit.scaleDown)
        else if (isshowTitle)
          CustomText(
            text: '${label_call.tr}:',
            size: AppDimen.textSize_14,
            isShimmerView: isShimmerLoading,
            color: appColors.secondaryColor,
            textDirection: TextDirection.ltr,
            fontWeight: AppFont.regular,
          ),
        if (isShowIcon || isshowTitle) 4.toWidth(),
        Flexible(
          child: CustomText(
            text: phoneno,
            size: AppDimen.textSize_14,
            isShimmerView: isShimmerLoading,
            color: appColors.secondaryColor,
            textDirection: TextDirection.ltr,
            fontWeight: AppFont.regular,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ].toRow(mainAxisAlignment: MainAxisAlignment.start, mainAxisSize: MainAxisSize.min).toPad(top: topPadding ?? 8),
    );
  }

  Widget _showHostEmailWidget({required String email, bool isShowIcon = false, bool isshowTitle = false, required bool isShimmerLoading, double? topPadding}) {
    return toOnTap(
      onTap: () {
        UrlLauncher.launchUrl(Uri.parse("mailto:$email"));
      },
      child: [
        if (isShowIcon && !isShimmerLoading)
          Assets.drawableTripsEmailIcon.toSVG(colour: appColors.secondaryColor, size: 12, fit: BoxFit.scaleDown).toPad(end: 2)
        else if (isshowTitle)
          CustomText(
            text: '${label_login_email.tr}:',
            isShimmerView: isShimmerLoading,
            size: AppDimen.textSize_14,
            color: appColors.secondaryColor,
            fontWeight: AppFont.regular,
          ),
        if (isShowIcon || isshowTitle) 2.toWidth(),
        Flexible(
          child: CustomText(
            text: email,
            isShimmerView: isShimmerLoading,
            size: AppDimen.textSize_14,
            color: appColors.secondaryColor,
            fontWeight: AppFont.regular,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ].toRow(mainAxisAlignment: MainAxisAlignment.start, mainAxisSize: MainAxisSize.min).toPad(top: topPadding ?? 8),
    );
  }

  void toShowContactDialog(dynamic item) {
    showAlertDialog(
      cancelButtonContent: label_cancel.tr,
      content: [
        Scrollbar(
          child: CustomTextfieldArea(
            focusNode: contactUsFocusNode,
            hintText: write_message.tr,
            controller: controller.contactUsMessageController,
            minLines: 6,
            borderTextfieldPadding: appLayoutMap[AppLayout.inputType]?.themeType == 4 ? pad(top: 0, w: 4) : pad(top: 12, w: 18),
            maxLines: 6,
          ),
        ),
        Obx(
          () => controller.isLoading.value
              ? dotCenter120HeightLoader!.toPad(vertical: 10)
              : const SizedBox.shrink(),
        )
      ].toStack(),
      onOkPressed: () {
        controller.isToShowPaginationLoader.value = false;
        bool isvalidate = controller.validateCredentials();
        if (isvalidate && controller.isClickEnable) {
          controller.isClickEnable = false;
          controller.reservationId = item?.id ?? 1;
          controller.selectedlistId = item?.listId ?? 1;
          controller.checkNetwork(controller.sendContactSupport);
        }
      },
      okButtonContent: label_dialog_btn_send.tr,
      title: label_dialog_title_contact_us.tr,
    );
  }

  Widget _showTheme1TripListItem(
      {required bool isshimmerloading,
      (Color, String)? bookingstatusColor,
      required dynamic item,
      int? index,
      required String listTitle,
      required String address,
      required String tripdate,
      String? phoneno,
      required String reservationstatus,
      String? email,
      String? renteramount}) {
    var estimatedEarnings = appPreference.isOwner!
        ? (item?.totalWithoutSecurityFee ?? 0) - (item?.hostServiceFee ?? 0)
        : (item?.totalWithoutSecurityFee ?? 0) + (item?.guestServiceFee ?? 0);
    return CustomBorderContainer(
      color: appColors.myTripsBGColor,
      borderRadius: AppDimen.appBorderRadius,
      margin: pad(bottom: 20),
      borderColor: appColors.myTripsDividerColor,
      body: [
        if (item?.listData != null || isshimmerloading)
          _showProfileWidget(
                  item: item,
                  isshimmerloading: isshimmerloading,
                  amount: renteramount,
                  hideAmountView: appPreference.isOwner!)
              .toPad(all: 13),
        if (item?.listData == null && !isshimmerloading)
          _getNolistingFoundView(isshimmerloading: isshimmerloading).toPad(horizontal: 13, top: 12),
        if (item?.listData != null || isshimmerloading)
          _getlistTitleView(isshimmerloading: isshimmerloading, listTitle: listTitle, item: item)
              .toPad(horizontal: 13),
        _getTripdateView(isshimmerloading: isshimmerloading, tripdate: tripdate, item: item)
            .toPad(horizontal: 13),
        _getAddressView(isshimmerloading: isshimmerloading, address: address).toPad(horizontal: 13),
        if (appPreference.isOwner! && item?.listData != null)
          _getEstimatedEarning(
              isshimmerloading: isshimmerloading,
              estimatedEarn: estimatedEarnings.toString(),
              isCompleted: bookingstatusColor?.$2.toLowerCase() == "completed",
              currency: item?.currency ?? defaultCurrency
          ).toPad(horizontal: 13),
        if (appPreference.isOwner! &&
            bookingstatusColor?.$2.toLowerCase() != tab_completed.tr.toLowerCase() &&
            bookingstatusColor?.$2.toLowerCase() != label_booking_status_pending.tr.toLowerCase() &&
            bookingstatusColor?.$2.toLowerCase() != label_booking_status_approved.tr.toLowerCase() && item?.listData != null)
          _getActualEarning(
            isshimmerloading: isshimmerloading,
            actualEarnings: (item?.cancellationDetails?.payoutToHost ?? 0).toString(),
            currency: item?.currency ?? defaultCurrency
          ).toPad(horizontal: 13),
        if ((email != null && email.isNotEmpty) || isshimmerloading)
          _showHostEmailWidget(email: isshimmerloading ? 20.toGenerateEmptyString() : (email ?? ""), isShowIcon: true, isShimmerLoading: isshimmerloading).toPad(horizontal: 13),
        if ((phoneno != null && phoneno.isNotEmpty) || isshimmerloading)
          _showHostPhoneNoWidget(phoneno: isshimmerloading ? 20.toGenerateEmptyString() : (phoneno ?? ""), isShowIcon: true, isShimmerLoading: isshimmerloading).toPad(horizontal: 13),
        12.toHeight(),
        myTripsDivider,
        12.toHeight(),
        _showReservationStatusMoreWidget(item, bookingstatusColor, reservationstatus, true,
                isshimmerloading: isshimmerloading,
                moreIcon: Assets.theme1More,
                isShowBorder: true,
                fillColor: appColors.approvedStatusColor,
                borderRadius: 30,
                textColor: appColors.white,
                statusFontSize: AppDimen.textSize_14,
                isShowDotForReservationStatus: false)
            .toPad(horizontal: 13),
      ].toColumn(),
    );
  }

  Widget _showTheme2TripListItem(
      {required bool isshimmerloading,
      (Color, String)? bookingstatusColor,
      required dynamic item,
      int? index,
      required String listTitle,
      required String address,
      required String tripdate,
      String? phoneno,
      required String reservationstatus,
      String? email,
      String? renteramount}) {
    var estimatedEarnings = appPreference.isOwner!
        ? (item?.totalWithoutSecurityFee ?? 0) - (item?.hostServiceFee ?? 0)
        : (item?.totalWithoutSecurityFee ?? 0) + (item?.guestServiceFee ?? 0);
    return CustomBorderContainer(
      borderRadius: AppDimen.appBorderRadius,
      padding: pad(top: 12),
      margin: pad(bottom: 20),
      body: [
        if (item?.listData != null || isshimmerloading)
          _showReservationStatusMoreWidget(item, bookingstatusColor, reservationstatus, false,
              isshimmerloading: isshimmerloading,
              isShowDotForReservationStatus: false,
              amountWidget: !(appPreference.isOwner ?? false) ? _getAmountView(
                  isshimmerloading: isshimmerloading,
                  amount: renteramount.toString()
              ) : const SizedBox.shrink()
          ).toPad(horizontal: 12),
        (item?.listData != null || isshimmerloading)
            ? filterDivider.toPad(bottom: 13)
            : const SizedBox.shrink(),
        if (item?.listData == null && !isshimmerloading)
          _getNolistingFoundView(isshimmerloading: isshimmerloading).toPad(horizontal: 12),
        if (item?.listData != null || isshimmerloading)
          _getlistTitleView(isshimmerloading: isshimmerloading, listTitle: listTitle, item: item)
              .toPad(horizontal: 12),
        _getTripdateView(isshimmerloading: isshimmerloading, tripdate: tripdate, item: item)
            .toPad(horizontal: 12),
        _getAddressView(isshimmerloading: isshimmerloading, address: address).toPad(horizontal: 12),
        if (appPreference.isOwner! && item?.listData != null)
          _getEstimatedEarning(
              isshimmerloading: isshimmerloading, estimatedEarn: estimatedEarnings.toString(), isCompleted: bookingstatusColor?.$2.toLowerCase() == "completed", currency: item?.currency ?? defaultCurrency)
              .toPad(horizontal: 12),
        if (appPreference.isOwner! &&
            bookingstatusColor?.$2.toLowerCase() != tab_completed.tr.toLowerCase() &&
            bookingstatusColor?.$2.toLowerCase() != label_booking_status_pending.tr.toLowerCase() &&
            bookingstatusColor?.$2.toLowerCase() != label_booking_status_approved.tr.toLowerCase() && item?.listData != null)
          _getActualEarning(
              isshimmerloading: isshimmerloading,
              actualEarnings: (item?.cancellationDetails?.payoutToHost ?? 0).toString(),
              currency: item?.currency ?? defaultCurrency)
              .toPad(horizontal: 12),
        if ((email != null && email.isNotEmpty) || isshimmerloading)
          _showHostEmailWidget(email: isshimmerloading ? 20.toGenerateEmptyString() : (email ?? ""), isshowTitle: true, isShimmerLoading: isshimmerloading).toPad(horizontal: 12),
        if ((phoneno != null && phoneno.isNotEmpty) || isshimmerloading)
          _showHostPhoneNoWidget(phoneno: isshimmerloading ? 20.toGenerateEmptyString() : (phoneno ?? ""), isshowTitle: true, isShimmerLoading: isshimmerloading).toPad(horizontal: 12),
        12.toHeight(),
        _showProfileWidget(
                item: item,
                reservationstatus: reservationstatus,
                isshimmerloading: isshimmerloading,
                amount: !appPreference.isOwner! ? renteramount : item?.actualEarnings.toString(),
                isShowMore: true)
            .toPad(horizontal: 12)
            .toResizeWidget(color: appColors.theme4AppBarBg, height: 80)
      ].toColumn(),
    );
  }

  Widget _showTheme3TripListItem(
      {required bool isshimmerloading,
      (Color, String)? bookingstatusColor,
      required dynamic item,
      int? index,
      required String listTitle,
      required String address,
      required String tripdate,
      String? phoneno,
      required String reservationstatus,
      String? email,
      String? renteramount}) {
    var estimatedEarnings = appPreference.isOwner!
        ? (item?.totalWithoutSecurityFee ?? 0) - (item?.hostServiceFee ?? 0)
        : (item?.totalWithoutSecurityFee ?? 0) + (item?.guestServiceFee ?? 0);
    return CustomBorderContainer(
      color: appColors.white,
      borderColor: appColors.myTripsDividerColor,
      borderRadius: AppDimen.appBorderRadius,
      padding: pad(top: 13, bottom: 4),
      margin: pad(bottom: 20),
      body: [
        if (item?.listData != null || isshimmerloading)
          CustomBorderContainer(
                  padding: pad(a: 5),
                  borderRadius: AppDimen.appBorderRadius,
                  color: appColors.myTripsBGColor,
                  body: [
                    _showProfileWidget(
                            item: item,
                            isshimmerloading: isshimmerloading,
                            amount: !appPreference.isOwner!
                                ? item?.totalWithGuestServiceFee.toString()
                                : item?.actualEarnings.toString(),
                            textColor: appColors.black,
                            hideAmountView: true)
                        .toStretch(),
                    _getMoreAndContactSupportWidget(
                        item: item,
                        reservationstatus: reservationstatus,
                        isshimmerloading: isshimmerloading,
                        isshowMoreText: false,
                        isShowMoreIconBorder: true),
                  ].toRow()).toPad(horizontal: 13),
        if((item?.listData == null && !isshimmerloading))
          CustomBorderContainer(
              padding: pad(a: 5),
              borderRadius: AppDimen.appBorderRadius,
              color: appColors.myTripsBGColor,
              body: [
                Assets.drawableTheme3User.toSVG(size: 50),
                Spacer(),
                _getMoreAndContactSupportWidget(
                    item: item,
                    reservationstatus: reservationstatus,
                    isshimmerloading: isshimmerloading,
                    isshowMoreText: false,
                    isShowMoreIconBorder: true),
              ].toRow()).toPad(horizontal: 13),
        12.toHeight(),
        if (item?.listData == null && !isshimmerloading)
          _getNolistingFoundView(isshimmerloading: isshimmerloading).toPad(horizontal: 13, top: 12),
        if (item?.listData != null || isshimmerloading)
          _getlistTitleView(isshimmerloading: isshimmerloading, listTitle: listTitle, item: item)
              .toPad(horizontal: 13),
        _getAddressView(isshimmerloading: isshimmerloading, address: address).toPad(horizontal: 13),
        _getTripdateView(isshimmerloading: isshimmerloading, tripdate: tripdate, item: item)
            .toPad(horizontal: 13),
        if (appPreference.isOwner! && item?.listData != null)...[
          myTripsDivider.toPad(top: 12, bottom: 4),
          _getEstimatedEarning(
            isshimmerloading: isshimmerloading,
            estimatedEarn: estimatedEarnings.toString(),
            isCompleted: bookingstatusColor?.$2.toLowerCase() == "completed",
              currency: item?.currency ?? defaultCurrency
          ).toPad(horizontal: 12)
        ],
        if (appPreference.isOwner! &&
            bookingstatusColor?.$2.toLowerCase() != tab_completed.tr.toLowerCase() &&
            bookingstatusColor?.$2.toLowerCase() != label_booking_status_pending.tr.toLowerCase() &&
            bookingstatusColor?.$2.toLowerCase() != label_booking_status_approved.tr.toLowerCase() && item?.listData != null)
          _getActualEarning(
              isshimmerloading: isshimmerloading,
              currency: item?.currency ?? defaultCurrency,
              actualEarnings: (item?.cancellationDetails?.payoutToHost ?? 0).toString())
              .toPad(horizontal: 12),
        if ((email != null && email.isNotEmpty) || isshimmerloading) ...[
          myTripsDivider.toPad(vertical: 12),
          _showHostEmailWidget(email: isshimmerloading ? 20.toGenerateEmptyString() : (email ?? ""), isShimmerLoading: isshimmerloading, topPadding: 0).toPad(horizontal: 13)
        ],
        if ((phoneno != null && phoneno.isNotEmpty) || isshimmerloading)
          _showHostPhoneNoWidget(phoneno: isshimmerloading ? 20.toGenerateEmptyString() : (phoneno ?? ""), isShimmerLoading: isshimmerloading).toPad(horizontal: 13),
        12.toHeight(),
        myTripsDivider,
        12.toHeight(),
        _showReservationStatusMoreWidget(item, bookingstatusColor, reservationstatus, false,
          isshimmerloading: isshimmerloading,
          amountWidget: !(appPreference.isOwner ?? false) ? _getAmountView(
            isshimmerloading: isshimmerloading,
            amount: renteramount.toString()
          ) : const SizedBox.shrink()
        ).toPad(horizontal: 13)
      ].toColumn(),
    );
  }

  Widget _showTheme4TripListItem(
      {required bool isshimmerloading,
      (Color, String)? bookingstatusColor,
      required dynamic item,
      int? index,
      required String listTitle,
      required String address,
      required String tripdate,
      String? phoneno,
      required String reservationstatus,
      String? email,
      String? renteramount}) {
    debugPrint("reservation start time: ${item?.startTime} ---- ${item?.endTime}");
    var estimatedEarnings = appPreference.isOwner!
        ? (item?.totalWithoutSecurityFee ?? 0) - (item?.hostServiceFee ?? 0)
        : (item?.totalWithoutSecurityFee ?? 0) + (item?.guestServiceFee ?? 0);
    return [
      index == 0 ? 10.toHeight() : 20.toHeight(),
      _getReservationStatusWidget(
          isshimmerloading: isshimmerloading, bookingStatusColor: bookingstatusColor, isShowAsDot: true),
      10.toHeight(),
      DottedBorderView(
        child: [
          if (item?.listData == null && !isshimmerloading)
            _getNolistingFoundView(isshimmerloading: isshimmerloading),
          if (item?.listData != null || isshimmerloading)
            _getlistTitleView(isshimmerloading: isshimmerloading, listTitle: listTitle, item: item),
          if (item?.listData != null || isshimmerloading)
            _getAddressView(isshimmerloading: isshimmerloading, address: address),
          _getTripdateView(isshimmerloading: isshimmerloading, tripdate: tripdate, item: item),
          6.toHeight(),
          IntrinsicHeight(child: fullWidthDashDivider().toFitToDeviceWidth(width: deviceWidth - 50)),
          if (((appPreference.isOwner ?? false) && item?.listData != null) || isshimmerloading) ...[
            _getEstimatedEarning(
                currency: item?.currency ?? defaultCurrency,
                isshimmerloading: isshimmerloading, estimatedEarn: estimatedEarnings.toString(), isCompleted: bookingstatusColor?.$2.toLowerCase() == "completed"),
            if (appPreference.isOwner! &&
                bookingstatusColor?.$2.toLowerCase() != tab_completed.tr.toLowerCase() &&
                bookingstatusColor?.$2.toLowerCase() != label_booking_status_pending.tr.toLowerCase() &&
                bookingstatusColor?.$2.toLowerCase() != label_booking_status_approved.tr.toLowerCase() && item?.listData != null)
                _getActualEarning(
                    currency: item?.currency ?? defaultCurrency,
                    isshimmerloading: isshimmerloading,
                    actualEarnings: (item?.cancellationDetails?.payoutToHost ?? 0).toString()),
            12.toHeight(),
            IntrinsicHeight(child: fullWidthDashDivider().toFitToDeviceWidth(width: deviceWidth - 50)),
          ],
          if(item?.listData != null || isshimmerloading) ...[
            _showProfileWidget(
              isShowMore: false,
              hideAmountView: true,
              item: item,
              isshimmerloading: isshimmerloading,
              email: email,
              phoneno: phoneno,
              size: 60
            ).toPad(top: 10),
            12.toHeight(),
            IntrinsicHeight(child: fullWidthDashDivider().toFitToDeviceWidth(width: deviceWidth - 50)),
          ],
          12.toHeight(),
          if (!isshimmerloading && item != null)
            InspectionEntryRow(item: item, isOwner: appPreference.isOwner ?? false),
          [
            !(appPreference.isOwner ?? false)
                ? _getAmountView(
                    isshimmerloading: isshimmerloading,
                    amount:
                        !appPreference.isOwner! ? renteramount.toString() : item?.actualEarnings.toString())
                : 0.toHeight(),
            Spacer(),
            _getMoreAndContactSupportWidget(
                item: item,
                reservationstatus: reservationstatus,
                isshimmerloading: isshimmerloading,
                moreIcon: Assets.drawableWishlistAdd,
                isShowMoreIconBorder: true,
                isDashDivider: true),
          ].toRow()
        ].toColumn().toPad(all: 12),
      )
    ].toColumn(crossAxisAlignment: CrossAxisAlignment.start);
  }

  Widget _showReservationStatusMoreWidget(
      dynamic item, (Color, String)? bookingStatusColor, String reservationstatus, bool? isShowMore,
      {required bool isshimmerloading,
      Widget? amountWidget,
      bool? isShowDotForReservationStatus,
      int? quarterTurns,
      String? moreIcon,
      Color? fillColor,
      bool? isShowBorder,
      double? borderRadius,
      double? statusFontSize,
      Color? textColor}) {
    final statusRow = ((bookingStatusColor != null && bookingStatusColor.$2.isNotEmpty) || isshimmerloading)
        ? [
            _getReservationStatusWidget(
                fillColor: fillColor ?? appColors.myTripsBGColor,
                isshimmerloading: isshimmerloading,
                bookingStatusColor: bookingStatusColor,
                isShowAsDot: isShowDotForReservationStatus ?? true,
                isShowBorder: isShowBorder,
                borderRadius: borderRadius,
                textColor: textColor,
                statusFontSize: statusFontSize),
            Spacer(),
            if (isShowMore ?? false) ...[
              _getMoreAndContactSupportWidget(
                  item: item,
                  reservationstatus: reservationstatus,
                  isshimmerloading: isshimmerloading,
                  quaterTurns: quarterTurns,
                  moreIcon: moreIcon),
            ] else ...[
              if (amountWidget != null) amountWidget
            ]
          ].toRow(crossAxisAlignment: CrossAxisAlignment.center).toPad(bottom: 10)
        : 0.toHeight();
    // Check-in / check-out entry points (hidden for unconfirmed reservations).
    if (isshimmerloading || item == null) return statusRow;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        statusRow,
        InspectionEntryRow(item: item, isOwner: appPreference.isOwner ?? false),
      ],
    );
  }

  Widget _getAddressView({required bool isshimmerloading, String? address}) {
    if (isshimmerloading || (address != null && address.isNotEmpty)) {
      return CustomText(
              text: isshimmerloading ? 30.toGenerateEmptyString() : address!,
              size: AppDimen.textSize_14,
              fontWeight: AppFont.regular,
              isShimmerView: isshimmerloading)
          .toPad(top: 8);
    }
    return 0.toHeight();
  }

  Widget _getEstimatedEarning({required bool isshimmerloading, String? estimatedEarn, required bool isCompleted, required String currency}) {
    if (isshimmerloading || (estimatedEarn != null && estimatedEarn.isNotEmpty)) {
      return [
        CustomText(
            text: isshimmerloading ? 30.toGenerateEmptyString() : isCompleted ? "${label_earnings.tr}: " : "${label_estimated_earnings.tr}: ",
            size: AppDimen.textSize_14,
            fontWeight: AppFont.regular,
            isShimmerView: isshimmerloading),
        CustomText(
          text: double.parse(estimatedEarn!).currencyConverted(convertedCurrency: currency).toNumberFormat(symbol: controller.getCurrencySymbol()),
          size: AppDimen.textSize_14,
          fontWeight: AppFont.bold,
          isShimmerView: isshimmerloading
        ),
      ].toRow(mainAxisAlignment: MainAxisAlignment.start).toPad(top: 8);
    }
    return 0.toHeight();
  }

  Widget _getActualEarning({required bool isshimmerloading, String? actualEarnings, required String currency}) {
    if (isshimmerloading || (actualEarnings != null && actualEarnings.isNotEmpty)) {
      return [
        CustomText(
            text: isshimmerloading ? 30.toGenerateEmptyString() : "${label_actual_earnings.tr}: ",
            size: AppDimen.textSize_14,
            fontWeight: AppFont.regular,
            isShimmerView: isshimmerloading),
        CustomText(
          text: isshimmerloading
              ? 10.toGenerateEmptyString()
              : double.parse(actualEarnings!).currencyConverted(convertedCurrency: currency).toNumberFormat(symbol: controller.getCurrencySymbol()),
          size: AppDimen.textSize_14,
          fontWeight: AppFont.bold,
          isShimmerView: isshimmerloading,
        ),
      ].toRow(mainAxisAlignment: MainAxisAlignment.start).toPad(top: 8);
    }
    return 0.toHeight();
  }

  Widget _getTripdateView({required bool isshimmerloading, String? tripdate, dynamic item}) {
    if (tripdate != null || isshimmerloading) {
      return CustomText(
              text: isshimmerloading ? 40.toGenerateEmptyString() : tripdate!,
              size: AppDimen.textSize_14,
              fontWeight: AppFont.regular,
              isShimmerView: isshimmerloading)
          .toPad(top: 8);
    }
    return 0.toHeight();
  }

  Widget _getlistTitleView({required bool isshimmerloading, String? listTitle, dynamic item}) {
    if (listTitle != null || isshimmerloading) {
      return CustomText(
        text: isshimmerloading ? 40.toGenerateEmptyString() : listTitle!,
        color: appColors.secondaryColor,
        size: AppDimen.textSize_14,
        fontWeight: AppFont.medium,
        isShimmerView: isshimmerloading,
        onTap: () {
          print("item?.listData--> ${item?.listData}");
          if (!isshimmerloading) {
            controller.myTripListNavigator
                .navigateScreen(MyTripListScreen.propertyDetail, param: [item?.listData, "propertydetail"]);
          }
        },
      );
    }
    return 0.toHeight();
  }

  Widget _getNolistingFoundView({required bool isshimmerloading}) {
    return CustomText(
      text: empty_label_no_found.trParams({'field': label_listing_single.tr.toLowerCase()}),
      color: appColors.errorRed,
      size: AppDimen.textSize_14,
      isShimmerView: isshimmerloading,
      fontWeight: AppFont.medium,
    );
  }

  Widget _getReservationStatusWidget(
      {required bool isshimmerloading,
      (Color, String)? bookingStatusColor,
      bool? isShowAsDot,
      Color? fillColor,
      bool? isShowBorder,
      double? borderRadius,
      double? statusFontSize,
      Color? textColor}) {
    if (isshimmerloading) {
      return CustomText(
          text: 30.toGenerateEmptyString(), size: AppDimen.textSize_16, isShimmerView: isshimmerloading);
    }

    if ((isShowAsDot ?? false) && bookingStatusColor != null && bookingStatusColor.$2.isNotEmpty) {
      return CustomBorderContainer(
        color: fillColor ?? Colors.transparent,
        padding: fillColor != null ? pad(a: 5) : null,
        borderRadius: borderRadius ?? AppDimen.appBorderRadius,
        body: [
          if (!(isShowBorder ?? false)) ...[
            CustomWishlistContainer(
              width: 12,
              height: 12,
              color: bookingStatusColor.$1,
            ),
            5.toWidth(),
          ],
          CustomText(
            text: bookingStatusColor.$2,
            color: textColor,
            size: statusFontSize,
          )
        ].toRow(mainAxisSize: MainAxisSize.min).toPad(horizontal: 5),
      );
    } else {
      return (bookingStatusColor != null && bookingStatusColor.$2.isNotEmpty)
          ? CancelButton(
              isArrowNeeded: false,
              borderRadius: borderRadius,
              buttonText: bookingStatusColor.$2,
              color: bookingStatusColor.$1,
              fillcolor: bookingStatusColor.$1,
              isExpand: false,
              onTap: () {},
              height: 28,
              textSize: AppDimen.textSize_12,
              textColor: appColors.buttonTextColor)
          : 0.toHeight();
    }
  }

  Widget _getMoreAndContactSupportWidget(
      {required bool isshimmerloading,
      dynamic item,
      required String reservationstatus,
      String? moreIcon,
      bool isShowMoreIconBorder = false,
      int? quaterTurns,
      bool isshowMoreText = true,
      bool isDashDivider = false}) {
    if (isshimmerloading) {
      return CustomText(
          text: 30.toGenerateEmptyString(), size: AppDimen.textSize_16, isShimmerView: isshimmerloading);
    }

    var overlayIconKey = RectGetter.createGlobalKey();
    return item?.listData == null
        ? toOnTap(
            onTap: () {
              controller.contactUsMessageController.clear();
              toShowContactDialog(item);
            },
            child: [
              (overALLThemeType == 4 ? Assets.theme4TabbarInbox : Assets.drawableTripsContactSupport).toSVG(
                size: 12,
                colour: appColors.secondaryColor,
              ),
              5.toWidth(),
              CustomText(
                text: '${label_contact.tr} ${support.tr.toLowerCase()}',
                color: appColors.secondaryColor,
                size: AppDimen.textSize_14,
                fontWeight: AppFont.medium,
              ),
            ].toRow(),
          ).toPad(start: 10, end: 7)
        : toOnTap(
            onTapUp: (details) {
              isClaimMenuAdded = false;
              Rect? overlayrect = RectGetter.getRectFromKey(overlayIconKey);
              CustomPopupMenu(
                borderRadius: popupBorderRadius,
                controller: controller,
                endOffset: 35,
                isPadNeedForDivider: overALLThemeType == 2 || overALLThemeType == 4,
                PopupMenuItems: controller.getReservationmenulist(
                  reservationstatus: reservationstatus,
                  reservationItem: item
                ),
                offset: Offset(
                  (overlayrect?.left ?? details.globalPosition.dx),
                  (overlayrect?.top ?? details.globalPosition.dy) + 10
                )
              );
            },
            child: RectGetter(
              key: overlayIconKey,
              child: [
                !isshowMoreText
                    ? ConditionalParentWidget(
                      condition: isShowMoreIconBorder,
                      parentBuilder: (child) => CustomCounterContainer(
                        borderColor: Colors.transparent,
                        color: appColors.white,
                        height: 24,
                        width: 24,
                        borderWidth: 1,
                        body: child,
                      ),
                      child: (moreIcon ?? Assets.drawableViewdetailShareMore)
                          .toSVG(size: 10, colour: appColors.black, quarterTurns: quaterTurns).toPad(all: 3),
                    ) : ConditionalParentWidget(
                        condition: isShowMoreIconBorder,
                        parentBuilder: (child) => CustomCounterContainer(
                          borderColor: appColors.secondaryColor,
                          borderWidth: 1,
                          body: child,
                        ),
                        child: (moreIcon ?? Assets.drawableViewdetailShareMore)
                            .toSVG(size: 13, colour: appColors.secondaryColor, quarterTurns: quaterTurns),
                      ).toPad(end: overALLThemeType == 2 ? 0 : 6),

                isshowMoreText ? CustomText(
                  text: label_share_listing_more.tr,
                  color: appColors.secondaryColor,
                  size: AppDimen.textSize_14,
                  fontWeight: AppFont.medium,
                ) : const SizedBox.shrink(),
              ].toRow(mainAxisAlignment: MainAxisAlignment.center),
            ),
          ).toPad(start: 10, end: 7);
  }

  Widget _getAmountView({required bool isshimmerloading, dynamic amount}) {
    if (amount != null || isshimmerloading) {
      return CustomText(
          symbol: controller.getCurrencySymbol(),
          text: isshimmerloading
              ? 20.toGenerateEmptyString()
              : double.parse(amount.toString()).toNumberFormat(symbol: controller.getCurrencySymbol()),
          isShimmerView: isshimmerloading,
          size: AppDimen.textSize_14);
    }
    return 0.toHeight();
  }
}