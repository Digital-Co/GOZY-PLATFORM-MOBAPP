import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stripe/flutter_stripe.dart' hide Card;
import 'package:get/get.dart';
import 'package:gozy/app.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/resources/app_colors.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/resources/app_layout.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/screens/views/guest/guest_explore/guest_explore.dart';
import 'package:gozy/screens/views/guest/inbox/inbox.dart';
import 'package:gozy/screens/views/guest/my_trips/my_trip_list.dart';
import 'package:gozy/screens/views/guest/searched/searched_listings.dart';
import 'package:gozy/screens/views/guest/wishlist/guest_wishlist.dart';
import 'package:gozy/screens/views/home/home_controller.dart';
import 'package:gozy/screens/views/home/home_navigator.dart';
import 'package:gozy/screens/views/owner/owner_property_list/owner_property_list.dart';
import 'package:gozy/screens/views/owner/property_calendar/property_calendar.dart';
import 'package:gozy/screens/views/profile/profile.dart';
import 'package:gozy/widgets/common/custom_container/custom_bottom_item_shadow_container.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/custom_stateful_widget.dart';
import 'package:gozy/widgets/custom_text.dart';

import '../../../../constant.dart';
import '../../../widgets/my_border_shape.dart';

class HomePage extends CustomStatefulWidget {
  HomePageState state = HomePageState();

  HomePage({super.key});

  @override
  HomePageState createState() => state;
}

class HomePageState extends CustomStatefulWidgetState<HomePage> {
  Widget? _propertyListPage, _exploreScreen;
  HomeController controller = Get.find<HomeController>();
  Map<int, List<String>> bottomNavigationItems = {};

  bool isshowBorderOnBottomBar = false;

  @override
  void initState() {
    super.initState();
    bookingTimeList = App.generateTimeList(locale: appPreference.preferredLanguage ?? defaultLanguage);
    debugPrint("bookingTimeList: $bookingTimeList");

    controller.passingArg = Get.arguments;
    debugPrint("sleecec:${controller.passingArg} --- ${Get.isPopGestureEnable}");

    App().getNotificationPermission();
    Stripe.publishableKey = stripeKey;
    Stripe.instance.applySettings();
    debugPrint("passingArg --- initState called:${controller.passingArg}");
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.change(rxVariable: controller.rxSelectedTab, value: 0);
      if (controller.passingArg != null &&
          controller.passingArg!.isNotEmpty &&
          controller.passingArg!['isFromProfile'] != null &&
          controller.passingArg!['isFromProfile']) {
        controller.change(rxVariable: controller.rxSelectedTab, value: 4);
        controller.passingArg!.clear();
      }
      if (controller.passingArg != null &&
          controller.passingArg!.isNotEmpty &&
          controller.passingArg!['isFromauthRefresh'] != null &&
          controller.passingArg!['isFromauthRefresh']) {
        controller.popularLocationsResponse = null;
        controller.getExploreListingsData = null;
        if (controller.isSearchSelected.value) {
          controller.isSearchSelected.value = false;
        }
        controller.isToUpdateExplore.value = true;
      }

      debugPrint("sleecec:${controller.passingArg?['selectedTab'] ?? ""}");
      if (controller.passingArg != null &&
          controller.passingArg!.isNotEmpty &&
          controller.passingArg!['selectedTab'] != null) {
      //  controller.showToast("homepageselectedtab: ${ controller.passingArg!['selectedTab']}");
        controller.change(rxVariable: controller.rxSelectedTab, value: controller.passingArg!['selectedTab']);
        if (controller.passingArg!['threadId'] != null) {
          Map messageMap = {'threadId': controller.passingArg!['threadId']};
          Future.delayed(const Duration(seconds: 1)).then((value) {
            controller.homeNavigator?.navigateScreen(HomeScreen.viewMessage, param: messageMap);
          });
        }
        controller.passingArg!.clear();
      }
      didChangePlatformBrightness();

      if (appPreference.isOwner!) {
        controller.isSearchSelected.value = false;
      }
    });

    if (appPreference.userID != null && appPreference.userID!.isNotEmpty) {
      App().viewMessageSocketListener(appPreference.userID ?? '');
      App().userLogoutSocketListener(appPreference.userID ?? '');
    }
    selectedCurrencySymbol = controller.getCurrencySymbol();
    debugPrint(
        "viewMessageSocketListener: appPreference.userID: ${appPreference.userID} -- ${BaseController.socketIO.connected}");
  }

  @override
  Widget build(BuildContext context) {
    print("appP1: ${appPreference.showBrand} -- ${Get.currentRoute}");
    bottomNavigationItems.clear();
    getBottomNavigationitems();
    _propertyListPage ??= OwnerPropertyListPage();
    _exploreScreen ??= GuestExploreScreen();
    return CustomScaffold(
      controller: controller,
      body: showBodyContent(context),
      extendBody: true,
      isShowAppBar: false,
      customAppBarFunction: () {
        if (!controller.isSearchSelected.value) {
          if (Platform.isAndroid) {
            SystemNavigator.pop();
          } else if (Platform.isIOS) {
            exit(0);
          }
        }
      },
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: overALLThemeType == 1
          ? FloatingActionButton(
              onPressed: () {
                if (appPreference.accessToken!.isNotEmpty) {
                  controller.change(rxVariable: controller.rxSelectedTab, value: 2);
                } else {
                  controller.homeNavigator?.navigateScreen(HomeScreen.signIn);
                }
              },
              elevation: 0,
              backgroundColor: overALLThemeType == 3 ? appColors.myTripsBGColor : appColors.primaryColor,
              shape: const CircleBorder(),
              child: Card(
                  color: AppColors.staticwhite,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  child: Assets.drawableGuestTrips.toSVG(size: 36).toPad(all: 5)),
            ).toResizeWidget(all: 45)
          : 0.toHeight(),
      bottomNavigationBar: CustomBottomItemShadowContainer(
        height: 68,
        decoration: _getShapeDecoration(),
        alignment: AlignmentDirectional.center,
        padding: EdgeInsets.zero,
        body: GetBuilder(
            id: controller.rxSelectedTab.id,
            init: controller,
            builder: (context) {
              debugPrint("showdot: hostUnreadCount:  ${rxhostUnreadCount.value}");
              return Center(
                child: IntrinsicHeight(
                  child: [
                    getBottomNavigationItemWidget(1),
                    getBottomNavigationItemWidget(2),
                    overALLThemeType == 1
                        ? InkResponse(
                            highlightColor: Colors.grey,
                            onTap: () {
                              if (appPreference.accessToken!.isNotEmpty) {
                                controller.change(rxVariable: controller.rxSelectedTab, value: 2);
                              } else {
                                controller.homeNavigator?.navigateScreen(HomeScreen.signIn);
                              }
                            },
                            child: [
                              Spacer(),
                              CustomText(
                                text: bottomNavigationItems[3]!.first,
                                size: AppDimen.textSize_12,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                color: controller.rxSelectedTab.value == 2
                                    ? appColors.secondaryColor
                                    : appColors.customTextColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ]
                                .toColumn(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center)
                                .toResizeWidget(
                                  width: deviceWidth / 5,
                                ),
                          )
                        : getBottomNavigationItemWidget(3),
                    GetBuilder(
                        init: controller,
                        id: appPreference.isOwner! ? rxhostUnreadCount.id : rxguestUnreadCount.id,
                        builder: (context) {
                          debugPrint(
                              "imc called from read count ${rxhostUnreadCount.value} --- ${(appPreference.isOwner! && rxhostUnreadCount.value > 0)} --- ${rxguestUnreadCount.value} --- ${(!appPreference.isOwner! && rxguestUnreadCount.value > 0)}");
                          return getBottomNavigationItemWidget(
                            4,
                            isShowDot: (appPreference.isOwner! && rxhostUnreadCount.value > 0) ||
                                (!appPreference.isOwner! && rxguestUnreadCount.value > 0),
                          );
                        }),
                    getBottomNavigationItemWidget(5),
                  ].toRow(
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                ),
              );
            }),
      ),
    ).toAnnotatedRegion(controller: controller);
  }

  Widget showBodyContent(context) {
    return Obx(() {
      debugPrint(
          "controller.selectedTab.value: ${controller.rxSelectedTab.value} --- ${controller.isSearchSelected.value}");
      return GetBuilder(
          id: controller.rxSelectedTab.id,
          init: controller,
          builder: (context) => _selectedTab(controller.rxSelectedTab.value));
    });
  }

  Widget _selectedTab(int selectedTab) {
    if (!controller.isSearchSelected.value) {
      controller.selectedPopularLocation = '';
    }
    bool? isPast = controller.passingArg?["isPast"];
    debugPrint(
        "isPast value ----> ${controller.passingArg?["isPast"]} ---- $isPast---- ${controller.hashCode}");
    debugPrint("isSearchSelected--> ${controller.isSearchSelected.value}");
    Map<int, Widget> currentSelectedTab = {
      0: appPreference.isOwner!
          ? _propertyListPage!
          : controller.isSearchSelected.value
              ? SearchedListingsScreen(controller: controller)
              : _exploreScreen!,
      1: appPreference.isOwner! ? PropertyCalendarPage() : GuestWishlistScreen(),
      2: MyTripsListPage(isPast: isPast),
      3: InboxPage(),
      4: ProfilePage(),
    };
    return currentSelectedTab[selectedTab] ?? const SizedBox.shrink();
  }

  void getBottomNavigationitems() {
    if (overALLThemeType == 1 || overALLThemeType == 2) {
      controller.bottomNavigationBGColor = appColors.theme4AppBarBg;
    } else if (overALLThemeType == 3)
      controller.bottomNavigationBGColor = appColors.famousLocationBGColor;
    else
      controller.bottomNavigationBGColor = appColors.white;
    if (controller.isDarkMode()) {
      controller.bottomNavigationBGColor = appColors.white;
    }

    bottomNavigationItems[1] = getExploreBottomBarItem();
    bottomNavigationItems[2] = getWishlistBottomBarItem();
    bottomNavigationItems[3] = getTripsBottomBarItem();
    bottomNavigationItems[4] = getInboxBottomBarItem();
    bottomNavigationItems[5] = getProfileBottomBarItem();
  }

  List<String> getExploreBottomBarItem() {
    switch (overALLThemeType) {
      case 1:
        return appPreference.isOwner!
            ? [Assets.drawableAboutHost, tabbar_listings.tr]
            : [Assets.homeTabbarHome, tabbar_theme1_home.tr];
      case 2:
        return [
          Assets.theme2TabbarHome,
          appPreference.isOwner! ? label_tabbar_cars.tr : label_theme2_home.tr
        ];
      case 3:
        isshowBorderOnBottomBar = true;
        return appPreference.isOwner!
            ? [Assets.theme3TabbarListings, tabbar_listings.tr]
            : [Assets.drawableSearch, label_search.tr];
      default:
        return appPreference.isOwner!
            ? [Assets.theme4TabbarHostHome, label_tabbar_cars.tr]
            : [Assets.theme4TabbarHome, label_theme4_explore.tr];
    }
  }

  List<String> getWishlistBottomBarItem() {
    if (appPreference.isOwner!) {
      return [overALLAppLayoutModel?.calendarIcon ?? '', tabbar_calendar.tr];
    }
    switch (overALLThemeType) {
      case 1:
        return [Assets.drawableGuestWishlist, tabbar_theme1_wishlists.tr];
      case 2:
        return [Assets.drawableGuestWishlist, tabbar_theme1_wishlists.tr];
      case 3:
        return [Assets.drawableGuestWishlist, tabbar_theme1_wishlists.tr];
      default:
        return [Assets.theme4TabbarWishlist, tabbar_theme1_wishlists.tr];
    }
  }

  List<String> getTripsBottomBarItem() {
    String tripsTitle = getTripTitle();
    switch (overALLThemeType) {
      case 1:
        return [tripsTitle];
      case 2:
        return [
          Assets.theme2TabbarTrips,
          tripsTitle,
        ];
      case 3:
        return [Assets.theme3Rides, tripsTitle];
      default:
        return [Assets.theme4TabbarTrips, tripsTitle];
    }
  }

  List<String> getInboxBottomBarItem() {
    String messageTitle = getMessageTitle();
    switch (overALLThemeType) {
      case 1:
        return [Assets.homeTabbarInbox, messageTitle];
      case 2:
        return [Assets.theme2TabbarInbox, messageTitle];
      case 3:
        return [Assets.theme3Chat, messageTitle];
      default:
        return [Assets.theme4TabbarInbox, messageTitle];
    }
  }

  List<String> getProfileBottomBarItem() {
    switch (overALLThemeType) {
      case 1:
        return [Assets.homeTabbarProfile, tabbar_theme1_profile.tr];
      case 2:
        return [Assets.drawableGuestProfile, label_theme2_profile.tr];
      case 3:
        return [Assets.theme3Profile, tabbar_theme1_profile.tr];
      default:
        return [Assets.theme4TabbarProfile, label_theme2_profile.tr];
    }
  }

  Widget getBottomNavigationItemWidget(int index, {bool? isShowDot}) {
    return bottomNavigationItems[index]!.toBottomTabBar(
      isshowBorderOnBottomBar: isshowBorderOnBottomBar,
      isShowDot: isShowDot ?? false,
      isSelectIcon: overALLThemeType != 1,
      isSelected: controller.rxSelectedTab.value == (index - 1),
      onTap: () {
        if (index == 1) {
          controller.change(rxVariable: controller.rxSelectedTab, value: (index - 1));
        } else {
          if (appPreference.accessToken!.isNotEmpty) {
            controller.change(rxVariable: controller.rxSelectedTab, value: (index - 1));
          } else {
            controller.homeNavigator?.navigateScreen(HomeScreen.signIn);
          }
        }
      },
    );
  }

  ShapeDecoration _getShapeDecoration() {
    return ShapeDecoration(
      color: controller.bottomNavigationBGColor,
      shape: overALLThemeType == 1 ? CustomBorderShape() : const Border(),
      shadows: overALLThemeType == 4 ? getBottomBoxShadows() : null,
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}