import 'package:ferry/ferry.dart' show FetchPolicy;
import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/app.dart';
import 'package:gozy/app_localizations.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/graphql/ListDetail/__generated__/ListingDetails.data.gql.dart';
import 'package:gozy/graphql/ListDetail/__generated__/ListingDetails.req.gql.dart';
import 'package:gozy/graphql/Payout/__generated__/payout.data.gql.dart';
import 'package:gozy/graphql/Payout/__generated__/payout.req.gql.dart';
import 'package:gozy/graphql/UserProfile/__generated__/user_profile.data.gql.dart';
import 'package:gozy/graphql/UserProfile/__generated__/user_profile.req.gql.dart';
import 'package:gozy/graphql/currency/__generated__/currency.data.gql.dart';
import 'package:gozy/graphql/currency/__generated__/currency.req.gql.dart';
import 'package:gozy/graphql/getCountries/__generated__/getcountries.data.gql.dart';
import 'package:gozy/graphql/inbox/__generated__/Inbox.data.gql.dart';
import 'package:gozy/graphql/inbox/__generated__/Inbox.req.gql.dart';
import 'package:gozy/graphql/layoutSettings/__generated__/layout_settings.data.gql.dart';
import 'package:gozy/graphql/layoutSettings/__generated__/layout_settings.req.gql.dart';
import 'package:gozy/graphql/secureSiteSettings/__generated__/secure_site_settings.data.gql.dart';
import 'package:gozy/graphql/secureSiteSettings/__generated__/secure_site_settings.req.gql.dart';
import 'package:gozy/model/reason_guest_model.dart';
import 'package:gozy/resources/app_layout.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/widgets/owner/step_item_model.dart';

import '../constant.dart' as Constants;
import '../graphql/getCountries/__generated__/getcountries.req.gql.dart';
import '../widgets/common_extension_functions.dart';

GgetAllReportTypeData? createReportUserData;
GgetImageBannerData? homeBannerData;

extension CommonApiController on BaseController {
  Future<GgetCurrenciesListData> getCurrencyList({bool isAutoCloseLoader = true, bool isStartLoader = true}) {
    Completer<GgetCurrenciesListData> currencyListCompleter = Completer<GgetCurrenciesListData>();
    final params = GgetCurrenciesListReq((b) => b..vars.build());
    FerryLoggerClient.makeRequest(params, this, getCurrencyList, isAutoCloseLoader: isAutoCloseLoader, isStartLoader: isStartLoader)?.then((res) {
      GgetCurrenciesListData currencyListData = res.data as GgetCurrenciesListData;
      if (isAutoCloseLoader) {
        isLoading.value = false;
      }
      currencyListCompleter.complete(currencyListData);
    });
    return currencyListCompleter.future;
  }

  Future<GgetPaymentMethodsData> getPaymentTypeList({String operation = 'checkout', List<int> supportedPaymentTypes = const [1, 2, 3]}) {
    Completer<GgetPaymentMethodsData> paymentsListCompleter = Completer<GgetPaymentMethodsData>();
    final params = GgetPaymentMethodsReq((b) => b
      ..fetchPolicy = FetchPolicy.NetworkOnly
      ..vars.operation = operation
      ..vars.supportedPaymentTypes.replace(supportedPaymentTypes));
    FerryLoggerClient.makeRequest(params, this, () => getPaymentTypeList(operation: operation, supportedPaymentTypes: supportedPaymentTypes))?.then((res) {
      GgetPaymentMethodsData paymentListData = res.data as GgetPaymentMethodsData;
      isLoading.value = false;
      paymentsListCompleter.complete(paymentListData);
    });
    return paymentsListCompleter.future;
  }

  Future<GgetAllReportTypeData> getReportTypes() {
    Completer<GgetAllReportTypeData> reportTypesCompleter = Completer<GgetAllReportTypeData>();
    final getAllReportTypesReq = GgetAllReportTypeReq((b) => b..vars.build());
    FerryLoggerClient.makeRequest(getAllReportTypesReq, this, getReportTypes)?.then((res) {
      createReportUserData = res.data as GgetAllReportTypeData;
      reportTypesCompleter.complete(createReportUserData);
    });
    return reportTypesCompleter.future;
  }

  Future<bool> getSecureSiteSettings() {
    Completer<bool> secureSiteSettingsCompleter = Completer<bool>();
    final params = GgetSecureSiteSettingsReq((b) => b
      ..vars.securityKey = securityKey
      ..vars.appType = "flutter_app"
      ..vars.isFormDropDown = true
      ..vars.build());
    print("sec1 --> $securityKey");
    FerryLoggerClient.makeRequest(
      params,
      this,
      getSecureSiteSettings,
      isViewLoader: isShowLoader,
    )?.then((res) async {
      GgetSecureSiteSettingsData secureSiteSettingsData = res.data as GgetSecureSiteSettingsData;
      secureSiteSettingsData.getSecureSiteSettings?.results?.forEach((sitesetting) {
        print("names>>>>>>>>${sitesetting?.name}");
        switch (sitesetting?.name) {
          case 'showBrand':
            appPreference.showBrand = sitesetting?.value == "true";

          case 'stripePublishableKey':
            stripeKey = sitesetting?.value ?? '';

          case 'listingApproval':
            listingApproval = int.parse(sitesetting?.value ?? '0');

          case 'androidAppMapAPIkey':
            if (Platform.isAndroid) {
              _updateMapKey(sitesetting?.value);
            }

          case 'iosAppMapAPIkey':
            if (Platform.isIOS) {
              _updateMapKey(sitesetting?.value);
            }
          case 'maxUploadSize':
            maximumImageUpload = int.parse(sitesetting?.value ?? '20');

          case 'aiTextGeneration':
            aiTextGeneration = sitesetting?.value == "true";

          case 'renterContactMessage':
            guestContactMessage = sitesetting?.value == "true";

          case 'renterBookingRequest':
            guestBookingRequest = sitesetting?.value == "true";

          case 'aiAccessCarTitleDescription':
            aiAccessTitleDescription = sitesetting?.value == "true";

          case 'aiAccessCarMarketPricing':
            aiAccessMarketPricing = sitesetting?.value == "true";

          case 'aiOwnerAccess':
            aiOwnerAccess = sitesetting?.value == "true";

          case 'isServicePlanEnabled':
            isServicePlanEnabled = sitesetting?.value == "true";

        }
      });
      GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage? mobilelang =
          secureSiteSettingsData.getSecureSiteSettings?.mobileLanguage?[0];
      LocalizationService.languageModelList.clear();
      bool isChangeLang = false;
      secureSiteSettingsData.getSecureSiteSettings?.mobileLanguage?.forEach((element) {
        print("Elements${element?.isEnable ?? false}");
        if((appPreference.preferredLanguage == element?.languageCode) && !(element?.isEnable ?? false)) {
          isChangeLang = true;
        }
        if (element?.isEnable ?? false) {
          StepItemModel stepItemModel = StepItemModel(
              itemValue: element?.languageCode,
              itemName: element?.language,
              itemReference: element?.jsonFile);
          debugPrint("stepItemModel: $element");
          allLanguages.addIf(true, element?.languageCode ?? '', element?.language ?? "");
          LocalizationService.languageModelList.add(stepItemModel);
          App().localizationService.languageList[element!.languageCode ?? Constants.defaultLanguage] =
              element.language ?? defaultLanguageName;
        }
      });

      if (mobilelang?.isActive == true && appPreference.accessToken!.isEmpty) {
        if (mobilelang?.languageCode != null) {
          defaultLanguage = mobilelang!.languageCode!;
        }
        appPreference.preferredLanguage ??= defaultLanguage;
        appPreference.defaultLanguages ??= defaultLanguage;
        await LocalizationService.readJson(language: appPreference.preferredLanguage ?? defaultLanguage, isUpdate: true);
        changeLanguage();
      } else {
        if(isChangeLang) {
          appPreference.preferredLanguage = mobilelang?.languageCode;
        }
        await LocalizationService.readJson(language: appPreference.preferredLanguage ?? defaultLanguage, isUpdate: true);
        changeLanguage();
        saveUserLanguage();
      }
      if (secureSiteSettingsData.getSecureSiteSettings != null &&
          secureSiteSettingsData.getSecureSiteSettings?.travelReasons != null) {

        reasonForBooking = secureSiteSettingsData.getSecureSiteSettings!.travelReasons!.asMap().entries.map((entry) {
          final index = entry.key;
          final e = entry.value;
          return ReasonGuestsModel(
            id: e?.id ?? 0,
            itemValue: index < App().getReasonBooking().length
                ? App().getReasonBooking()[index]
                : (e?.label ?? ""),
            label: index < App().getReasonBooking().length
                ? App().getReasonBooking()[index]
                : (e?.label ?? ""),
            itemName: index < App().getReasonBooking().length
                ? App().getReasonBooking()[index]
                : (e?.label ?? ""),
          );
        }).toList();
      }

      if (secureSiteSettingsData.getSecureSiteSettings != null &&
          secureSiteSettingsData.getSecureSiteSettings?.targetedGuests != null) {

        targetGuest = secureSiteSettingsData.getSecureSiteSettings!.targetedGuests!.asMap().entries.map((entry) {
          final index = entry.key;
          final e = entry.value;
          return ReasonGuestsModel(
            id: e?.id ?? 0,
            itemValue: index < App().getTargetedGuestLabels().length
                ? App().getTargetedGuestLabels()[index]
                : (e?.label ?? ""),
            label: index < App().getTargetedGuestLabels().length
                ? App().getTargetedGuestLabels()[index]
                : (e?.label ?? ""),
            itemName: index < App().getTargetedGuestLabels().length
                ? App().getTargetedGuestLabels()[index]
                : (e?.label ?? ""),
          );
        }).toList();
      }
      print("Target Guestss::: ${targetGuest}");
      isLoading.value = false;
      debugPrint("stripeKey: $stripeKey");
      secureSiteSettingsCompleter.complete(true);
    });
    return secureSiteSettingsCompleter.future;
  }

  void saveUserLanguage() {
    String languageCode = appPreference.preferredLanguage ?? Constants.defaultLanguage;
    appPreference.preferredLanguage = languageCode;
    final params = GuserUpdateReq((b) => b
      ..vars.userId = appPreference.userID
      ..vars.fieldName = "preferredLanguage"
      ..vars.fieldValue = languageCode
      ..vars.deviceType = Platform.isAndroid ? 'android' : 'ios'
      ..vars.deviceId = appPreference.deviceID
      ..vars.build());
    FerryLoggerClient.makeRequest(params, this, saveUserLanguage, isViewErrorMessage: false)?.then((res) async {
      isLoading.value = false;
      if (Get.isBottomSheetOpen ?? false) {
        onBack();
      }
    });
  }

  void _updateMapKey(String? value) {
    SECURE_MAP_KEY = value ?? '';
    App().setMapKey();
  }

  Future<GgetCurrencyData> getCurrencyRates() {
    Completer<GgetCurrencyData> currencyrateCompleter = Completer<GgetCurrencyData>();
    final params = GgetCurrencyReq((b) => b..vars.build());
    FerryLoggerClient.makeRequest(params, this, getCurrencyRates, isViewLoader: isShowLoader)?.then((res) {
      GgetCurrencyData currencyData = res.data as GgetCurrencyData;
      debugPrint("currencyRates: $currencyData");
      defaultCurrency = currencyData.Currency?.result?.base ?? defaultCurrency;
      currencyRates = currencyData.Currency?.result?.rates;
      if (appPreference.accessToken!.isEmpty) {
        appPreference.preferredCurrency = defaultCurrency;
      }

      isLoading.value = false;
      currencyrateCompleter.complete(currencyData);
    });
    return currencyrateCompleter.future;
  }

  Future<GgetCountriesData> getCountries() {
    Completer<GgetCountriesData> currencyrateCompleter = Completer<GgetCountriesData>();
    final params = GgetCountriesReq((b) => b..vars.build());
    FerryLoggerClient.makeRequest(params, this, getCountries, isViewLoader: isShowLoader)?.then((res) {
      countriesData = res.data as GgetCountriesData;
      currencyrateCompleter.complete(countriesData);
    });
    return currencyrateCompleter.future;
  }

  Future<GgetImageBannerData> getHomePageBannerData() {
    Completer<GgetImageBannerData> currencyrateCompleter = Completer<GgetImageBannerData>();
    final params = GgetImageBannerReq((b) => b..vars.build());
    FerryLoggerClient.makeRequest(params, this, getHomePageBannerData, isViewLoader: isShowLoader)
        ?.then((res) async {
      homeBannerData = res.data as GgetImageBannerData;
      if (Constants.appLayoutMap.isEmpty) getLayoutSettings();
      currencyrateCompleter.complete(homeBannerData);
    });
    return currencyrateCompleter.future;
  }

  Future<void> getLayoutSettings() async {
    try {
      final params = GgetLayoutSettingsReq(
        (b) => b..vars.build(),
      );

      final res = await FerryLoggerClient.makeRequest(
        params,
        this,
        getLayoutSettings,
        isViewLoader: isShowLoader,
      );

      if (res?.data == null) return;

      final GgetLayoutSettingsData layoutSettingsData = res!.data as GgetLayoutSettingsData;

      for (final layout in AppLayout.values) {
        layoutSettingsData.getLayoutSettings?.result?.theme?.forEach((element) {
          updateAppLayout(layout: layout, element: element);
        });

        layoutSettingsData.getLayoutSettings?.result?.explore?.forEach((element) {
          updateAppLayout(layout: layout, element: element);
        });
      }

      debugPrint("Constants.appLayoutMap: ${Constants.appLayoutMap}");
    } catch (e, stackTrace) {
      debugPrint("getLayoutSettings error: $e");
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  Future<GuserAccountData> getuserProfileData() {
    final point = StackTrace.current.toString().split('\n')[1];
    print('getuserProfileData --- test9 $point');
    Completer<GuserAccountData> userprofileCompleter = Completer<GuserAccountData>();
    final params = GuserAccountReq((b) => b..vars.build());
    FerryLoggerClient.makeRequest(params, this, getuserProfileData,
            isViewLoader: isShowLoader, isViewErrorMessage: false, isAutoCloseLoader: false)
        ?.then((res) async {
      GuserAccountData userprofiledata = res.data as GuserAccountData;
      ownerServicePlanAIFeatureStatus = userprofiledata.userAccount?.result?.ownerServicePlanAIFeatureStatus ?? false;
      renterServicePlanAIFeatureStatus = userprofiledata.userAccount?.result?.renterServicePlanAIFeatureStatus ?? false;
      userprofileCompleter.complete(userprofiledata);
    });
    return userprofileCompleter.future;
  }

  Future<void> saveUserdataFromApiToLocalStorage(GuserAccountData? result) async {
    Map<String, dynamic> map = {};
    map['isPhoneVerified'] = (result?.userAccount?.result?.verification?.isPhoneVerified) ?? false;
    map['isEmailConfirmed'] = (result?.userAccount?.result?.verification?.isEmailConfirmed) ?? false;
    map['isGoogleConnected'] = (result?.userAccount?.result?.verification?.isGoogleConnected) ?? false;
    map['isIdVerification'] = (result?.userAccount?.result?.verification?.isIdVerification) ?? false;

    appPreference
      ..userID = result?.userAccount?.result?.userId
      ..firstName = result?.userAccount?.result?.firstName
      ..lastName = result?.userAccount?.result?.lastName
      ..description = result?.userAccount?.result?.info
      ..gender = result?.userAccount?.result?.gender
      ..birthDate = result?.userAccount?.result?.dateOfBirth
      ..location = result?.userAccount?.result?.location
      ..profileImage = result?.userAccount?.result?.picture
      ..phoneNumber = result?.userAccount?.result?.phoneNumber
      ..countryCode = result?.userAccount?.result?.countryCode
      ..email = result?.userAccount?.result?.email
      ..type = result?.userAccount?.result?.userData?.type
      ..preferredLanguage = result?.userAccount?.result?.preferredLanguage
      ..isUserVerified = map;
  }

  void getUnreadCount({ isViewLoader= true}) {
    final params = GgetUnReadCountReq((b) => b..vars.build());
    FerryLoggerClient.makeRequest(params, this, getUnreadCount, isStartLoader: false, isViewLoader: isViewLoader)?.then((res) async {
      GgetUnReadCountData unReadCountData = res.data as GgetUnReadCountData;

      if (Get.currentRoute == '/ViewMessagePage' ||
          (Get.currentRoute == '/guestHomePage' && isSocketConnected.value == 4)) {
        final results = unReadCountData.getUnReadCount?.results;
        final bool isOwner = appPreference.isOwner ?? false;

        final bool hostChanged = rxhostUnreadCount.value != results?.ownerCount;
        final bool guestChanged = rxguestUnreadCount.value != results?.renterCount;

        isSocketConnected.value = switch ((isOwner, hostChanged, guestChanged)) {
          (true, true, _) || (false, _, true) => (isSocketConnected.value == 4) ? 5 : 2,
          (_, false, false) => 1,
          _ => 1,
        };

        isLoading.value = false;
      }
      debugPrint("isSocketConnected.value : api ${isSocketConnected.value} --- ${Get.currentRoute}");

      change(rxVariable: rxhostUnreadCount, value: unReadCountData.getUnReadCount?.results?.ownerCount ?? 0);

      change(
          rxVariable: rxguestUnreadCount, value: unReadCountData.getUnReadCount?.results?.renterCount ?? 0);

    });
  }

  Future<void> refreshProfileData() async {
    getuserProfileData().then((profiledata) async {
      await saveUserdataFromApiToLocalStorage(profiledata);
      isLoading.value = false;
    });
  }
}
