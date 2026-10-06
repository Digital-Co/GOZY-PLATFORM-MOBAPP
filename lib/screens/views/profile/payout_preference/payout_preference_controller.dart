import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;
import 'package:gozy/app.dart';
import 'package:gozy/graphql/Payout/__generated__/payout.req.gql.dart';
import 'package:gozy/graphql/__generated__/schema.schema.gql.dart';
import 'package:gozy/screens/views/home/home_controller.dart';
import 'package:gozy/screens/views/profile/payout_preference/payout_preference_navigator.dart';
import 'package:gozy/utils/common_api_controller.dart';
import 'package:gozy/utils/mobile_payment_gateway.dart';
import 'package:gozy/utils/text_editing_controller.dart';
import 'package:gozy/widgets/common_extension_functions.dart';

import '../../../../config/client.dart';
import '../../../../constant.dart';
import '../../../../graphql/Payout/__generated__/payout.data.gql.dart';
import '../../../../resources/app_lang.dart';
import '../../../../widgets/paypal_payment_selection_card.dart';
import '../profile_controller.dart';

part 'payout_account_details/payout_account_details_mixin.dart';
part 'payout_address_details/payout_address_details_mixin.dart';
part 'payout_country_search/payout_country_search_mixin.dart';
part 'payout_payment_choose/payout_payment_choose_mixin.dart';
part 'payout_paypal_details/payout_paypal_details_mixin.dart';

class PayoutPreferenceController extends ProfileController
    with
        PayoutCountrySearchMixin,
        PayoutAddressDetailsMixin,
        PayoutPaymentChooseMixin,
        PayoutPaypalDetailsMixin,
        PayoutAccountDetailsMixin {
  PayoutPreferenceNavigator? payoutPreferenceNavigator;
  RxMap payoutResultMap = {}.obs;
  RxBool isPayoutLoading = false.obs;
  RxBool isNextButtonLoading = false.obs;
  RxBool isVerifyButtonLoading = false.obs;
  final TextEditingController pawaPayPhoneController = TextEditingController();
  List<GgetPawaPayOptionsData_getPawaPayOptions_countries?> pawaPayPayoutCountries = [];
  String? pawaPayPayoutCountry;
  String? pawaPayPayoutCurrency;
  String? pawaPayPayoutProvider;

  Future<void> loadPawaPayPayoutOptions() async {
    final completer = Completer<void>();
    final params = GgetPawaPayOptionsReq((b) => b.vars.operation = GPawaPayOperation.PAYOUT);
    FerryLoggerClient.makeRequest(params, this, loadPawaPayPayoutOptions, isToGet400Message: true)?.then((response) {
      final data = response.data as GgetPawaPayOptionsData;
      pawaPayPayoutCountries = data.getPawaPayOptions?.countries?.toList() ?? [];
      final recommended = data.getPawaPayOptions?.recommendedCountry;
      final country = pawaPayPayoutCountries.whereType<GgetPawaPayOptionsData_getPawaPayOptions_countries>()
          .where((item) => item.country == recommended).firstOrNull
        ?? pawaPayPayoutCountries.whereType<GgetPawaPayOptionsData_getPawaPayOptions_countries>().firstOrNull;
      selectPawaPayPayoutCountry(country?.country);
      update();
      completer.complete();
    });
    return completer.future;
  }

  void selectPawaPayPayoutCountry(String? value) {
    pawaPayPayoutCountry = value;
    final country = pawaPayPayoutCountries.whereType<GgetPawaPayOptionsData_getPawaPayOptions_countries>()
        .where((item) => item.country == value).firstOrNull;
    pawaPayPayoutCurrency = country?.currencies?.firstOrNull?.currency;
    pawaPayPayoutProvider = country?.currencies?.firstOrNull?.providers?.firstOrNull?.provider;
    update();
  }

  void selectPawaPayPayoutCurrency(String? value) {
    pawaPayPayoutCurrency = value;
    final country = pawaPayPayoutCountries.whereType<GgetPawaPayOptionsData_getPawaPayOptions_countries>()
        .where((item) => item.country == pawaPayPayoutCountry).firstOrNull;
    final currency = country?.currencies?.whereType<GgetPawaPayOptionsData_getPawaPayOptions_countries_currencies>()
        .where((item) => item.currency == value).firstOrNull;
    pawaPayPayoutProvider = currency?.providers?.firstOrNull?.provider;
    update();
  }

  Future<void> addPawaPayPayoutAccount() async {
    if (pawaPayPhoneController.text.trim().isEmpty || pawaPayPayoutCountry == null || pawaPayPayoutCurrency == null || pawaPayPayoutProvider == null) {
      showSnackBar(pawapay_required_fields.tr);
      return;
    }
    final params = GaddPawaPayPayoutAccountReq((b) => b.vars
      ..phoneNumber = pawaPayPhoneController.text.trim()
      ..country = pawaPayPayoutCountry
      ..currency = pawaPayPayoutCurrency
      ..provider = pawaPayPayoutProvider);
    FerryLoggerClient.makeRequest(params, this, addPawaPayPayoutAccount, isToGet400Message: true)?.then((response) async {
      final data = response.data as GaddPawaPayPayoutAccountData;
      if (data.addPawaPayPayoutAccount?.status == 200) {
        Get.back();
        getPayouts();
      } else {
        showSnackBar(data.addPawaPayPayoutAccount?.errorMessage ?? pawapay_payment_failed.tr);
      }
    });
  }

  @override
  onReady() {
    payoutPreferenceNavigator = PayoutPreferenceNavigator();

    super.onReady();
  }

  void initAddPayout(int paymentID) {
    debugPrint('initAddPayout -- stripeKey: $stripeKey');
    Map<String, String> map = <String, String>{
      "methodId": paymentID.toString(),
      "pay_email": _getPayoutEmail(paymentID),
      "currency": _getPayoutCurrency(paymentID),
      "line1": getPayoutAddressFieldValue(fieldEnum: AddressDetailsEnum.addressLineOne),
      "line2": getPayoutAddressFieldValue(fieldEnum: AddressDetailsEnum.addressLineTwo),
      "city": getPayoutAddressFieldValue(fieldEnum: AddressDetailsEnum.city),
      "state": getPayoutAddressFieldValue(fieldEnum: AddressDetailsEnum.stateOrProvince),
      "country": selectedCountryCode,
      "postal_code": getPayoutAddressFieldValue(fieldEnum: AddressDetailsEnum.zipCodeOrPostalCode),
      "firstName": _getFirstName(),
      "lastName": getPayoutAccountFieldValue(fieldEnum: PayoutAccountDetailsEnum.lastName),
      "accountNumber": _getAccountNumber(),
      "routingNumber": _getRoutingNumber(),
      "businessType":
          getPayoutAccountFieldValue(fieldEnum: PayoutAccountDetailsEnum.accountType) == label_payout_type_individual.tr ? "individual" : "company",
      "stripePublishableKey": stripeKey
    };
    addPayout(map);
  }

  void addPayout(Map<String, String> accountTokenMap) {
    isNextButtonLoading.value = true;
    int paymentMethodId = int.parse(accountTokenMap["methodId"].toString());
    final params = GaddPayoutReq((b) {
      b.vars.methodId = paymentMethodId;
      b.vars.payEmail = accountTokenMap["pay_email"];
      b.vars.currency = accountTokenMap["currency"];
      b.vars.address1 = accountTokenMap["line1"];
      b.vars.address2 = accountTokenMap["line2"];
      b.vars.city = accountTokenMap["city"];
      b.vars.state = accountTokenMap["state"];
      b.vars.country = accountTokenMap["country"];
      b.vars.zipcode = accountTokenMap["postal_code"];
      if (int.parse(accountTokenMap["methodId"].toString()) == 2) {
        b.vars.firstname = accountTokenMap["firstName"];
        b.vars.lastname = accountTokenMap["lastName"];
        b.vars.accountNumber = accountTokenMap["accountNumber"];
        b.vars.routingNumber = accountTokenMap["routingNumber"];
        b.vars.businessType = accountTokenMap["businessType"];
        b.vars.accountToken = accountTokenMap["accountToken"];
        if (accountTokenMap["personToken"].toString().isNotEmpty) {
          b.vars.personToken = accountTokenMap["personToken"];
        }
      }
      b.vars.build();
    });

    FerryLoggerClient.makeRequest(params, this, addPayout, isBottomSheetOpen: false, isViewLoader: false, isToGet400Message: true)?.then((res) async {
      isLoading.value = false;
      isNextButtonLoading.value = false;
      GaddPayoutData response = res.data as GaddPayoutData;
      if(response.addPayout?.status == 200) {
        if (paymentMethodId == 2) {
          navigateToWebView(
              stripeConnectUrl: response.addPayout?.connectUrl ?? '',
              stripeAccountId: response.addPayout?.stripeAccountId ?? '');
        } else {
          countryController.clear();
          payoutPreferenceNavigator?.navigateScreen(PayoutPreferenceScreen.payoutPreference);
          getPayouts();
        }
      }
    });
  }

  void confirmPayout(String stripeAccountId) {
    final params = GconfirmPayoutReq((b) => b
      ..vars.currentAccountId = stripeAccountId
      ..vars.build());
    FerryLoggerClient.makeRequest(params, this, confirmPayout, isBottomSheetOpen: false)?.then((res) async {
      countryController.clear();
      payoutPreferenceNavigator?.navigateScreen(PayoutPreferenceScreen.payoutPreference);
      getPayouts();
    });
  }

  void verifyPayout(String stripeAccount) {
    isVerifyButtonLoading.value = true;
    final params = GverifyPayoutReq((b) => b
      ..vars.stripeAccount = stripeAccount
      ..vars.build());
    FerryLoggerClient.makeRequest(params, this, verifyPayout, isBottomSheetOpen: false,isViewLoader: false,isStartLoader: false)?.then((res) {
      isShowLoader = true;
      GverifyPayoutData response = res.data as GverifyPayoutData;
      navigateToWebView(
          stripeConnectUrl: response.verifyPayout?.connectUrl ?? '',
          stripeAccountId: response.verifyPayout?.stripeAccountId ?? '');
    }).whenComplete(() {
      Future.delayed(const Duration(milliseconds: 500)).then((value) {
      isVerifyButtonLoading.value = false;
    });
    });
  }

  void getPayouts() {
    print('Auth--> ${appPreference.accessToken}');
    final params = GgetPayoutsReq((b) => b..vars.build());
    FerryLoggerClient.makeRequest(params, this, getPayouts, isBottomSheetOpen: false)?.then((res) async {
      GgetPayoutsData? getPayoutsResponse = res.data as GgetPayoutsData;
      payoutResultMap.value["results"] = getPayoutsResponse.getPayouts?.results;
      payoutResultMap.refresh();
      isLoading.value = false;
      isLoading.refresh();
      isPayoutLoading.value = false;
      HomeController homeController = Get.find();
      homeController.isLoading.value = false;
    });
  }

  void setDefaultPayout({required int id, required PayoutButtonType payoutButtonType}) {
    isPayoutLoading.value = true;
    final params = GsetDefaultPayoutReq((b) => b
      ..vars.id = id
      ..vars.type = payoutButtonType == PayoutButtonType.setDefaultButton ? "set" : "remove"
      ..vars.build());
    FerryLoggerClient.makeRequest(params, this, setDefaultPayout, isBottomSheetOpen: false)?.then((res) {
      isLoading.value = false;
      getPayouts();
    });
  }

  String _getPayoutCurrency(int paymentID) {
    return paymentID == 2
        ? paymentlist.firstWhere((element) => element?.id == 1)?.currency ?? ''
        : getPayPalFieldValue(fieldEnum: PayoutPaypalDetailsEnum.payPalCurrency);
  }

  String _getPayoutEmail(int paymentID) {
    return paymentID == 2
        ? appPreference.email ?? ''
        : getPayPalFieldValue(fieldEnum: PayoutPaypalDetailsEnum.payPalEmail);
  }

  String _getRoutingNumber() {
    return sortNumberList.contains(selectedCountryCode)
        ? getPayoutAccountFieldValue(fieldEnum: PayoutAccountDetailsEnum.sortNumber)
        : getPayoutAccountFieldValue(fieldEnum: PayoutAccountDetailsEnum.routingNumber);
  }

  String _getAccountNumber() {
    return europeCountriesList.contains(selectedCountryCode)
        ? getPayoutAccountFieldValue(fieldEnum: PayoutAccountDetailsEnum.iBANNumber)
        : getPayoutAccountFieldValue(fieldEnum: PayoutAccountDetailsEnum.accountNumber);
  }

  String _getFirstName() {
    String selectedTypes =
        getPayoutAccountFieldValue(fieldEnum: PayoutAccountDetailsEnum.accountType).toLowerCase();
    return selectedTypes == "company"
        ? getPayoutAccountFieldValue(fieldEnum: PayoutAccountDetailsEnum.companyName)
        : getPayoutAccountFieldValue(fieldEnum: PayoutAccountDetailsEnum.firstName);
  }


  String getPaymentImageIcon(String imageurl) {
    String assetUrl = '${App().appDocumentsDir}/${imageurl.split('/').last}';
    debugPrint("getPaymentImageIcon: $assetUrl");
    return assetUrl;
  }

  void navigateToWebView({required stripeConnectUrl, required String stripeAccountId}) {
    payoutPreferenceNavigator?.navigateScreen(PayoutPreferenceScreen.payoutWebView,
        {"stripeConnectUrl": stripeConnectUrl, "stripeAccountId": stripeAccountId});
  }
}
