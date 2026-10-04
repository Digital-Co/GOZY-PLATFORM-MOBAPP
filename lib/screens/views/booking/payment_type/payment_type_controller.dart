import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/graphql/Payout/__generated__/payout.data.gql.dart';
import 'package:gozy/graphql/booking/confirmReservation/__generated__/confirm_reservation.data.gql.dart';
import 'package:gozy/graphql/booking/confirmReservation/__generated__/confirm_reservation.req.gql.dart';
import 'package:gozy/graphql/booking/createReservation/__generated__/create_reservation.data.gql.dart';
import 'package:gozy/graphql/booking/createReservation/__generated__/create_reservation.req.gql.dart';
import 'package:gozy/graphql/booking/getBillingCalculation/__generated__/get_billing_calculation.data.gql.dart';
import 'package:gozy/graphql/confirmServicePlan/__generated__/confirmServicePlan.data.gql.dart';
import 'package:gozy/graphql/confirmServicePlan/__generated__/confirmServicePlan.req.gql.dart';
import 'package:gozy/graphql/createServicePlan/__generated__/createServicePlan.data.gql.dart';
import 'package:gozy/graphql/createServicePlan/__generated__/createServicePlan.req.gql.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/booking/booking_navigator.dart';
import 'package:gozy/screens/views/profile/profile_navigator.dart';
import 'package:gozy/utils/common_api_controller.dart';

import '../../../../constant.dart';
import '../../../../widgets/common_extension_functions.dart';



class PaymentTypeController extends BaseController {
dynamic itemInfo;
String? userType;
Rxn<GgetBillingCalculationData> billingCalcuationData = Rxn<GgetBillingCalculationData>();
GcreateReservationData? createReservationData;
List<dynamic>? listOfCurrencies = [];
var rxSelectedPaymentType = ReactiveVariable("rxSelectedPaymentType", 0);
BookingNavigator bookingnavigator = Get.find();
ProfileNavigator profileNavigator = ProfileNavigator();
String? selectedpaymentCurrency ;
String? paymentIntentId;
bool isPaymentPending = false;
bool isDeliveryCheck = false;
bool isPromoApplied = false;
double startTime = 0.0;
double endTime = 0.0;
String? message;
String? licenceNumber;
String? firstName;
String? couponCode;
String? lastName;
String? dateOfBirth;
String? country;
bool isViewErrorMessage = true;
String? cardError;

List<GgetPaymentMethodsData_getPaymentMethods_results?>? paymentlist;
String? paymentMethodId, redirectUrl;
int? reservationId;
GconfirmReservationData? confirmReservationData;
bool _shouldConfirmReservationAfterSheet = false;
int? _purchaseIdAfterSheet;
String? _paymentIntentSecretAfterSheet;


void  getpaymentTypes(){
  getPaymentTypeList().then((paymentListData){
    paymentlist = paymentListData.getPaymentMethods?.results?.asList();
    getCurrencyList().then((currencylistdata){
      listOfCurrencies?.clear();
      currencylistdata.getCurrencies?.results?.forEach((p0) {
        if((p0?.isEnable ?? false) && (p0?.isPayment ?? false)) {
          String currency = "${getCurrencySymbol(currency: p0?.symbol)} ${p0?.symbol}";
          listOfCurrencies?.add(currency);
        }
      });
      String preferred = appPreference.preferredCurrency ?? "";
      if (preferred.isEmpty) preferred = defaultCurrency;
      selectedpaymentCurrency = "${getCurrencySymbol(currency: preferred)} $preferred";

      WidgetsBinding.instance.addPostFrameCallback((_){
        change(rxVariable: rxSelectedPaymentType, value: paymentlist?.isNotEmpty == true ? (paymentlist!.first?.paymentType ?? 0) : 0);
      });
    });

  });
}

Future<void> startCardPaymentSheet() async {
  if (isLoading.value) return;
  isLoading.value = true;
  _shouldConfirmReservationAfterSheet = false;
  _purchaseIdAfterSheet = null;
  _paymentIntentSecretAfterSheet = null;
  cardError = null;

  try {
    Future.delayed(const Duration(milliseconds: 1500)).then((value) {
      isLoading.value = false;
    });
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: APP_NAME,
        style: isDarkMode() ? ThemeMode.dark : ThemeMode.light,
        paymentMethodOrder: const ['card'],
        billingDetails: BillingDetails(
          email: appPreference.email,
          phone: appPreference.phoneNumber,
        ),
        billingDetailsCollectionConfiguration: const BillingDetailsCollectionConfiguration(
          address: AddressCollectionMode.never,
        ),
        intentConfiguration: IntentConfiguration(
          mode: IntentMode.paymentMode(
            currencyCode: _selectedCurrencyCode(),
            amount: _paymentSheetAmountInMinorUnit(),
          ),
          paymentMethodTypes: const ['card'],
          confirmHandler: (paymentMethod, shouldSavePaymentMethod) {
            debugPrint("confirmHandler: ${paymentMethod} --- ${shouldSavePaymentMethod}");
            unawaited(_onCardSheetConfirm(paymentMethod, shouldSavePaymentMethod));
          },
        ),
      ),
    );

    await Stripe.instance.presentPaymentSheet();
    isViewErrorMessage = true;
    debugPrint("postpayment: ${_shouldConfirmReservationAfterSheet} ---  ${servicePlanList}");
    if (_shouldConfirmReservationAfterSheet) {
      debugPrint("confirmReservation after PaymentSheet: ${_paymentIntentSecretAfterSheet} --- ");
     if(isPaymentFrom == "servicePlan") {
       checkNetwork(confirmPurchasePlan);
     } else {
       checkNetwork(confirmReservation);
     }

      navigateReservationDetail(purchaseId: _purchaseIdAfterSheet);
      isLoading.value = false;
    }
  } on StripeException catch (e) {
    isLoading.value = false;
    debugPrint("toastexce: ${e.error.localizedMessage} --- ${cardError}");
    if(cardError !=null)
    showToast(cardError ?? '');
  } catch (e) {
    isLoading.value = false;
    debugPrint("toastexce catch: ${e.toString()}");
    showToast(e.toString());
  }
}

Future<void> _onCardSheetConfirm(PaymentMethod paymentMethod, bool shouldSavePaymentMethod) async {
  isViewErrorMessage = false;
  cardError = null;
  paymentMethodId = paymentMethod.id;
  try {
    if (isPaymentFrom == "servicePlan") {
      final createPurchaseServicePlanData = await createPurchasePlan();

      final secret = createPurchaseServicePlanData.createPurchaseServicePlan?.paymentIntentSecret ?? '';
      reservationId = createPurchaseServicePlanData.createPurchaseServicePlan?.result?.id;
      cardError = createPurchaseServicePlanData.createPurchaseServicePlan?.errorMessage;
      _purchaseIdAfterSheet = reservationId;
      _shouldConfirmReservationAfterSheet = secret.isNotEmpty;
      debugPrint("_onCardSheetConfirm: ${secret} --- ${reservationId}");
      _paymentIntentSecretAfterSheet = secret;
      paymentIntentId = _paymentIntentIdFromSecret(secret);
      await Stripe.instance.intentCreationCallback(
        IntentCreationCallbackParams(clientSecret: secret),
      );
    } else {
      final createReservationData = await createReservation();
      cardError = createReservationData.createReservation?.errorMessage;
      final secret = createReservationData.createReservation?.paymentIntentSecret ?? '';
      _shouldConfirmReservationAfterSheet = secret.isNotEmpty;
      debugPrint("createreservation: ${secret}");
      _paymentIntentSecretAfterSheet = secret;
      paymentIntentId = _paymentIntentIdFromSecret(secret);
      await Stripe.instance.intentCreationCallback(
        IntentCreationCallbackParams(clientSecret: secret),
      );

    }
  } catch (e) {
    await _notifyPaymentSheetFailure(e.toString());
  }
}

Future<void> _notifyPaymentSheetFailure(String message) async {
  await Stripe.instance.intentCreationCallback(
    IntentCreationCallbackParams(
      error: StripeException(
        error: LocalizedErrorMessage(
          code: FailureCode.Failed,
          localizedMessage: message,
        ),
      ),
    ),
  );
}

String _selectedCurrencyCode() {
  return ( appPreference.preferredCurrency ?? defaultCurrency).toUpperCase();
}

int _paymentSheetAmountInMinorUnit() {
  if (isPaymentFrom == "servicePlan") {
    debugPrint("servicePlanList?.price: ${servicePlanList}");
    double servicePlanPrice =
    double.parse(servicePlanList?.price?.currencyConverted(convertedCurrency: servicePlanList?.currency ?? defaultCurrency) ?? "0");
    final amount = ((servicePlanPrice) * 100).round();
    return amount < 1 ? 1 : amount;
  }

  final bookingTotal = billingCalcuationData.value?.getBillingCalculation?.result?.total ?? 0;
  final amount = (bookingTotal * 100).round();
  return amount < 1 ? 1 : amount;
}

String _paymentIntentIdFromSecret(String secret) {
  return secret.split('_secret').first;
}


Future<GcreateReservationData> createReservation() {
  Completer<GcreateReservationData> createreservationCompleter = Completer<GcreateReservationData>();
  GgetBillingCalculationData_getBillingCalculation_result? billingdata = billingCalcuationData.value?.getBillingCalculation?.result;

  GcreateReservationReq  createReservationparams = GcreateReservationReq((b) {
    b
    ..vars.cardToken = paymentMethodId ?? ''
    ..vars.basePrice = billingdata?.basePrice
    ..vars.bookingType = contactHostBookingType.isNotEmpty ? contactHostBookingType : itemInfo?.bookingType == 'instant' ? 'instant' : 'requestToBook'
    ..vars.checkIn = billingdata?.checkIn
    ..vars.checkOut = billingdata?.checkOut
    ..vars.delivery = billingdata?.delivery
    ..vars.startTime = startTime
    ..vars.endTime = endTime
    ..vars.licenseNumber = licenceNumber
    ..vars.firstName = firstName
    ..vars.lastName = lastName
    ..vars.dateOfBirth = dateOfBirth
    ..vars.countryCode = country
    ..vars.currency = appPreference.preferredCurrency
    ..vars.discount = billingdata?.discount
    ..vars.discountType = billingdata?.discountLabel
    ..vars.guestServiceFee = billingdata?.guestServiceFee
    ..vars.guests = billingdata?.guests ?? 1
    ..vars.hostServiceFee = billingdata?.hostServiceFee
    ..vars.listId = itemInfo?.id
    ..vars.total = billingdata?.total
    ..vars.message =message
    ..vars.paymentType = rxSelectedPaymentType.value ??1
    ..vars.isDeliveryIncluded = isDeliveryCheck
    ..vars.averagePrice = billingdata?.averagePrice
    ..vars.days = billingdata?.days
    ..vars.paymentCurrency = selectedpaymentCurrency?.split(' ')[1];
    if(isPromoApplied){
      b.vars.promoCode = couponCode;
    }
    b.vars.build();
  });

  print("createReservation params--> $createReservationparams");
  print("createReservation isroute-> ${contactHostBookingType}");
  FerryLoggerClient.makeRequest(
      createReservationparams, this, createReservation,isToGet400Message: true,isViewErrorMessage: isViewErrorMessage)?.then((res) async{
    GcreateReservationData createReservationData = res.data as GcreateReservationData;
    debugPrint("createReservationquery: $createReservationData");
    reservationId = createReservationData.createReservation?.reservationId;
    redirectUrl = createReservationData.createReservation?.redirectUrl;
    this.createReservationData = createReservationData;
    createreservationCompleter.complete(createReservationData);

  });
  return createreservationCompleter.future;
}

Future<GCreatePurchaseServicePlanData> createPurchasePlan() {
  Completer<GCreatePurchaseServicePlanData> createPurchasePlanCompleter = Completer<GCreatePurchaseServicePlanData>();

  GCreatePurchaseServicePlanReq  createPurchaseServiceParams = GCreatePurchaseServicePlanReq((b) {
    b
      ..vars.servicePlanId = servicePlanList?.id ?? 0
      ..vars.startDate = getDateFormat(dateFormat: commonDateFormat, milliSec: servicePlanList?.servicePlanStartDate ?? "").$1.toString()
      ..vars.endDate = getDateFormat(dateFormat: commonDateFormat, milliSec: servicePlanList?.servicePlanEndDate ?? "").$1.toString()
      ..vars.cardToken = paymentMethodId ?? ''
      ..vars.paymentType = rxSelectedPaymentType.value
      ..vars.paymentCurrency = selectedpaymentCurrency?.split(' ')[1];
    b.vars.build();
  });

  debugPrint("createPurchasePlan: params: $createPurchaseServiceParams");
  FerryLoggerClient.makeRequest(
      createPurchaseServiceParams, this, createPurchasePlan,isToGet400Message: true,isViewErrorMessage: isViewErrorMessage )?.then((res) async{
    GCreatePurchaseServicePlanData createPurchaseServicePlanData = res.data as GCreatePurchaseServicePlanData;
    debugPrint("result: $createPurchaseServicePlanData");
    redirectUrl = createPurchaseServicePlanData.createPurchaseServicePlan?.redirectUrl;
    reservationId = createPurchaseServicePlanData.createPurchaseServicePlan?.result?.id;
    createPurchasePlanCompleter.complete(createPurchaseServicePlanData);

  });
  return createPurchasePlanCompleter.future;
}

void confirmPurchasePlan(){
  GconfirmPurchaseServicePlanReq confirmReservationparams = GconfirmPurchaseServicePlanReq((b) =>
  b
    ..vars.paymentIntentId = paymentIntentId
    ..vars.servicePlanId = reservationId
    ..vars.build());
  debugPrint('confirmReservationparam: $confirmReservationparams');

  FerryLoggerClient.makeRequest(
      confirmReservationparams, this, confirmPurchasePlan,isToGet400Message: true,isViewErrorMessage: false)?.then((res) async {
    GconfirmPurchaseServicePlanData  confirmReservationData = res.data as GconfirmPurchaseServicePlanData;
    debugPrint('confirmReservationData: $confirmReservationData');
      // navigateReservationDetail(purchaseId: reservationId);
  });
}

void confirmReservation(){
  GconfirmReservationReq confirmReservationparams = GconfirmReservationReq((b) =>
  b
    ..vars.paymentIntentId = paymentIntentId
    ..vars.reservationId = reservationId
    ..vars.paymentType = 0
    ..vars.build());
  debugPrint('confirmReservationparam: $confirmReservationparams');

  FerryLoggerClient.makeRequest(
      confirmReservationparams, this, confirmReservation,isToGet400Message: true,isViewErrorMessage: false)?.then((res) async {
     confirmReservationData = res.data as GconfirmReservationData;
    debugPrint('confirmReservationData: $confirmReservationData');
    if (isPaymentFrom == "servicePlan") {
      navigateReservationDetail(purchaseId: reservationId);
    } else {
      navigateReservationDetail(purchaseId: confirmReservationData?.confirmReservation?.reservationId);
    }
  });
}

void navigateReservationDetail({int? purchaseId}) {
  if (isPaymentFrom == "servicePlan") {
    profileNavigator.navigateScreen(ProfileScreen.servicePlanBack);
    profileNavigator.navigateScreen(ProfileScreen.receipt, {"id": purchaseId, "from": "purchase"});
    isLoading.value = false;
  } else {
    bookingnavigator.navigateScreen(BookingScreen.reservationDetail, {
      'itemInfo': itemInfo,
      'billingCalcuationData': billingCalcuationData.value,
      'reservationId': createReservationData?.createReservation?.results?.id ?? 1
    });
    isLoading.value = false;
    isPaymentPending = false;
  }
}


}