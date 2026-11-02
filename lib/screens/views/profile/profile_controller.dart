import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/graphql/UserAuth/__generated__/user_auth.req.gql.dart';
import 'package:gozy/graphql/UserProfile/__generated__/user_profile.req.gql.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/home/home_controller.dart';
import 'package:gozy/screens/views/profile/profile_navigator.dart';

import '../../../constant.dart';
import '../../../resources/app_lang.dart';
import '../../../utils/owner_reporting_i18n.dart';
import '../../../utils/common_api_controller.dart';
import '../../../widgets/common_extension_functions.dart';

class ProfileController extends BaseController {
  ProfileNavigator? profileNavigator;
  String profileImage = '';
  bool isShowMoreOnServicePlan = false;
  String firstName = '';
  String fieldName = '';
  String fieldValue = '';
  Map<String, List<Map<String, dynamic>>> profileItems = {};
  Map<String, List<Map<String, dynamic>>> theme3ProfileItems = {};
  Map<String, Map<String, dynamic>> subMenuListItems = {};

  @override
  onReady() {
    profileNavigator = ProfileNavigator();
    if (appPreference.accessToken!.isNotEmpty) {
      refreshProfileData().then((value) {
        firstName = appPreference.firstName ?? "";
        profileImage = appPreference.profileImage ?? "";
        update(['ProfileUpdate']);
      });
    }
    super.onReady();
  }

  List<Map<String, dynamic>> _getAccountSettingsProfileSubList(
      {bool? isEditProfileNeeded,
      required Map<String, String> iconsData,
      required bool isGrouping,
      int? themeType}) {
    List<Map<String, dynamic>> itemList = [];
    Map<String, Map<String, dynamic>> orderedSubMenuListItems = {};
    if (themeType == 2) {
      orderedSubMenuListItems['edit_profile'] = subMenuListItems['edit_profile'] ?? {};
      if(isServicePlanEnabled) {
        orderedSubMenuListItems['service_plan'] = subMenuListItems['service_plan'] ?? {};
        orderedSubMenuListItems['service_plan_history'] = subMenuListItems['service_plan_history'] ?? {};
      }
      orderedSubMenuListItems['manage_your_account'] = subMenuListItems['manage_your_account'] ?? {};
      orderedSubMenuListItems['reviews'] = subMenuListItems['reviews'] ?? {};
      orderedSubMenuListItems['settings'] = subMenuListItems['settings'] ?? {};

      if (appPreference.isOwner!) {
        orderedSubMenuListItems['payout'] = subMenuListItems['payout'] ?? {};
        orderedSubMenuListItems['owner_dashboard'] = subMenuListItems['owner_dashboard'] ?? {};
        orderedSubMenuListItems['owner_earnings'] = subMenuListItems['owner_earnings'] ?? {};
        orderedSubMenuListItems['transaction_history'] = subMenuListItems['transaction_history'] ?? {};
      }
      orderedSubMenuListItems['settings'] = subMenuListItems['settings'] ?? {};
      orderedSubMenuListItems['manage_your_account'] = subMenuListItems['manage_your_account'] ?? {};
      orderedSubMenuListItems['privacy'] = subMenuListItems['privacy'] ?? {};
      orderedSubMenuListItems['about'] = subMenuListItems['about'] ?? {};
    } else {
      if (isEditProfileNeeded ?? false) {
        orderedSubMenuListItems['edit_profile'] = subMenuListItems['edit_profile'] ?? {};
      }
      if (isGrouping) {
        orderedSubMenuListItems['settings'] = subMenuListItems['settings'] ?? {};
      }
      if(isServicePlanEnabled) {
        orderedSubMenuListItems['service_plan'] = subMenuListItems['service_plan'] ?? {};
        orderedSubMenuListItems['service_plan_history'] = subMenuListItems['service_plan_history'] ?? {};
      }
      if (themeType == 4) {
        orderedSubMenuListItems['manage_your_account'] = subMenuListItems['manage_your_account'] ?? {};
      }
      orderedSubMenuListItems['reviews'] = subMenuListItems['reviews'] ?? {};

      if (((isEditProfileNeeded ?? false) || (iconsData.keys.contains('edit_profile'))) && themeType != 4) {
        orderedSubMenuListItems['manage_your_account'] = subMenuListItems['manage_your_account'] ?? {};
      }

      if (appPreference.isOwner!) {
        orderedSubMenuListItems['payout'] = subMenuListItems['payout'] ?? {};
        orderedSubMenuListItems['owner_dashboard'] = subMenuListItems['owner_dashboard'] ?? {};
        orderedSubMenuListItems['owner_earnings'] = subMenuListItems['owner_earnings'] ?? {};
        orderedSubMenuListItems['transaction_history'] = subMenuListItems['transaction_history'] ?? {};
      }
      if (!isGrouping) {
        orderedSubMenuListItems['settings'] = subMenuListItems['settings'] ?? {};
      }
      if (!(isEditProfileNeeded ?? false) && !iconsData.keys.contains('edit_profile') && themeType != 4) {
        orderedSubMenuListItems['manage_your_account'] = subMenuListItems['manage_your_account'] ?? {};
      }
      if (themeType == 1 || themeType == 4) {
        orderedSubMenuListItems['privacy'] = subMenuListItems['privacy'] ?? {};
        orderedSubMenuListItems['about'] = subMenuListItems['about'] ?? {};
      } else {
        orderedSubMenuListItems['about'] = subMenuListItems['about'] ?? {};
        orderedSubMenuListItems['privacy'] = subMenuListItems['privacy'] ?? {};
      }
    }

    for (var element in orderedSubMenuListItems.values) {
      debugPrint("elementname: ${element['name']} --- ${element['icon']}");
      _addSubItemToList(itemList, icon: element['icon'], name: element['name'], onTap: element['onTap']);
    }
    return itemList;
  }

  List<Map<String, dynamic>> _getSupportProfileSubList({Map<String, String>? iconsData, int? themeType}) {
    List<Map<String, dynamic>> itemList = [];
    List<Map<String, dynamic>> subListItems = [
      if (themeType == 2) ...[
        subMenuListItems['feedback'] ?? {},
        subMenuListItems['get_help'] ?? {},
      ] else ...[
        subMenuListItems['get_help'] ?? {},
        subMenuListItems['feedback'] ?? {},
      ]
    ];
    for (var element in subListItems) {
      _addSubItemToList(itemList, icon: element['icon'], name: element['name'], onTap: element['onTap']);
    }
    return itemList;
  }

  void _addSubItemToList(List<Map<String, dynamic>> itemList,
      {required String icon, required String name, required GestureTapCallback onTap}) {
    Map<String, dynamic> subListItemMap = {};
    subListItemMap["icon"] = icon;
    subListItemMap["name"] = name;
    subListItemMap["onTap"] = onTap;
    itemList.add(subListItemMap);
  }

  void setLogout() {
    final params = GLogoutReq((b) => b
      ..vars.deviceType = Platform.isAndroid ? 'android' : 'ios'
      ..vars.deviceId = appPreference.deviceID
      ..vars.build());
    FerryLoggerClient.makeRequest(params, this, setLogout, isViewLoader: false)?.then((res) async {
      clearLoginSession();
    });
  }

  void userUpdate() {
    debugPrint('userUpdate called');
    final params = GuserUpdateReq((b) => b
      ..vars.userId = appPreference.userID
      ..vars.fieldName = fieldName
      ..vars.fieldValue = fieldValue
      ..vars.deviceType = Platform.isAndroid ? 'android' : 'ios'
      ..vars.deviceId = appPreference.deviceID
      ..vars.build());
    FerryLoggerClient.makeRequest(params, this, userUpdate)?.then((res) async {
      isLoading.value = false;
      HomeController homeController = Get.find();
      homeController.isLoading.value = false;
      if(fieldName == "preferredCurrency") {
        appPreference.preferredCurrency = fieldValue;
        selectedCurrencySymbol = getCurrencySymbol();
        update();
      } else if(fieldName == "preferredLanguage") {
        appPreference.preferredLanguage = fieldValue;
        changeLanguage();
      }
      if (Get.isBottomSheetOpen ?? false) {
        onBack();
      }
    });
  }

  void getprofileNavigationData(
      {bool? showEditOnAccount, Map<String, String>? iconsData, required bool isGrouping, int? themeType}) {
    firstName = appPreference.firstName ?? "";
    profileImage = appPreference.profileImage ?? "";
    theme3ProfileItems[label_account.tr] = _getAccountSettingsProfileSubList(
        isEditProfileNeeded: showEditOnAccount,
        iconsData: iconsData ?? {},
        isGrouping: isGrouping,
        themeType: themeType);
    theme3ProfileItems[support.tr] = _getSupportProfileSubList(iconsData: iconsData, themeType: themeType);
    profileItems[label_account.tr] = _getAccountSettingsProfileSubList(
        isEditProfileNeeded: showEditOnAccount,
        iconsData: iconsData ?? {},
        isGrouping: isGrouping,
        themeType: themeType);
    profileItems[support.tr] = _getSupportProfileSubList(iconsData: iconsData, themeType: themeType);
  }

  void createProfileIconMap(
      {required Map<String, String> iconsData, required Function logoutfn, required String switchingText}) {
    subMenuListItems['edit_profile'] = {
      "icon": iconsData['edit_profile'],
      "name": label_edit_your_profile.tr,
      "onTap": () {
        profileNavigator?.navigateScreen(ProfileScreen.editProfileScreen, () {
          Future.delayed(const Duration(seconds: 1)).then((v) {
            isLoading.value = false;
            profileImage = appPreference.profileImage ?? "";
            update(['ProfileUpdate']);
          });
        });
      }
    };

    if(isServicePlanEnabled) {
      subMenuListItems['service_plan'] = {
        "icon": iconsData['service_plan'] ?? '',
        "name": label_service_plan.tr,
        "onTap": () {
          isShowMoreOnServicePlan = true;
          profileNavigator?.navigateScreen(ProfileScreen.servicePlan);
        }
      };

      subMenuListItems['service_plan_history'] = {
        "icon": iconsData['service_plan_history'] ?? '',
        "name": label_service_plan_history.tr,
        "onTap": () {
          isShowMoreOnServicePlan = true;
          profileNavigator?.navigateScreen(ProfileScreen.servicePlanHistory);
        }
      };
    }

    subMenuListItems['manage_your_account'] = {
      "icon": iconsData['manage_your_account'] ?? '',
      "name": manage_your_account.tr,
      "onTap": () {
        profileNavigator?.navigateScreen(ProfileScreen.manageYourAccount);
      }
    };
    subMenuListItems['settings'] = {
      "icon": iconsData['settings'] ?? '',
      "name": settings.tr,
      "onTap": () {
        profileNavigator?.navigateScreen(ProfileScreen.settings);
      }
    };
    subMenuListItems['owner'] = {
      "icon": iconsData['owner'] ?? '',
      "name": switchingText,
      "onTap": () {
        debugPrint("subMenuListItems: ${appPreference.isOwner}");
        appPreference.isOwner = !appPreference.isOwner!;
        profileNavigator?.navigateScreen(ProfileScreen.userRoleChanger);
      }
    };

    subMenuListItems['reviews'] = {
      "icon": iconsData['reviews'] ?? '',
      "name": reviewPlural.tr,
      "onTap": () {
        profileNavigator?.navigateScreen(ProfileScreen.reviews);
      }
    };

    subMenuListItems['payout'] = {
      "icon": iconsData['payout'] ?? '',
      "name": payout_preference.tr,
      "onTap": () {
        profileNavigator?.navigateScreen(ProfileScreen.payoutPreference);
      }
    };
    subMenuListItems['owner_dashboard'] = {
      "icon": iconsData['owner_dashboard'] ?? '',
      "name": orpText('orp_menu_dashboard'),
      "onTap": () {
        profileNavigator?.navigateScreen(ProfileScreen.ownerDashboard);
      }
    };
    subMenuListItems['owner_earnings'] = {
      "icon": iconsData['owner_earnings'] ?? '',
      "name": orpText('orp_earnings_title'),
      "onTap": () {
        profileNavigator?.navigateScreen(ProfileScreen.ownerEarnings);
      }
    };
    subMenuListItems['transaction_history'] = {
      "icon": iconsData['transaction_history'] ?? '',
      "name": transaction_history.tr,
      "onTap": () {
        profileNavigator?.navigateScreen(ProfileScreen.transactionHistory);
      }
    };
    subMenuListItems['privacy'] = {
      "icon": iconsData['privacy'] ?? '',
      "name": privacy_policy.tr.toUpperLowerCase(),
      "onTap": () {
        profileNavigator?.navigateScreen(ProfileScreen.staticPage, "4");
      }
    };

    subMenuListItems['about'] = {
      "icon": iconsData['about'] ?? '',
      "name": about.tr,
      "onTap": () {
        profileNavigator?.navigateScreen(ProfileScreen.aboutYourPage);
      }
    };
    subMenuListItems['get_help'] = {
      "icon": iconsData['get_help'] ?? '',
      "name": get_help.tr,
      "onTap": () {
        profileNavigator?.navigateScreen(ProfileScreen.staticPage, "5");
      }
    };
    subMenuListItems['feedback'] = {
      "icon": iconsData['feedback'] ?? '',
      "name": give_feedback.tr,
      "onTap": () {
        profileNavigator?.navigateScreen(ProfileScreen.feedback);
      }
    };
    subMenuListItems['logout'] = {
      "icon": iconsData['logout'] ?? '',
      "name": label_title_log_out.tr,
      "onTap": () {
        logoutfn();
      }
    };
  }
}