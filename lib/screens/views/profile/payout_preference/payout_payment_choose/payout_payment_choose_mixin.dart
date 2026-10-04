part of '../payout_preference_controller.dart';

mixin PayoutPaymentChooseMixin on ProfileController {
  List<GgetPaymentMethodsData_getPaymentMethods_results?> paymentlist =
      <GgetPaymentMethodsData_getPaymentMethods_results?>[].obs;
  RxInt selectedpaymentType = 0.obs;
  List<dynamic>? listOfPayPalCurrencies = [];




  Future<void> getPaymentTypes() async {
    await getPaymentTypeList(operation: 'payout').then((paymentListData) async {
      paymentlist.clear();
      paymentlist.addAll(paymentListData.getPaymentMethods?.results
          ?.where((e) => e != null )
          .toList() ??
          []);
      selectedpaymentType.value = paymentlist.isEmpty ? 0 : (paymentlist.first?.paymentType ?? 0);
      selectedpaymentType.refresh();
    });
    getPayPalCurrencyList();
  }

  void getPayPalCurrencyList() {
    debugPrint("CurrencySymbol--> ${intl.NumberFormat.simpleCurrency(name: "ZAR").currencySymbol}");
    if(listOfPayPalCurrencies?.isEmpty ?? false) {
      getCurrencyList().then((currencylistdata) {
        listOfPayPalCurrencies?.clear();
        currencylistdata.getCurrencies?.results?.forEach((p0) {
          if ((p0?.isEnable ?? false) && (p0?.isPayment ?? false)) {
            String currency = "${getCurrencySymbol(currency: p0?.symbol)} ${p0
                ?.symbol}";
            if (listOfPayPalCurrencies?.contains(currency) == false) {
              listOfPayPalCurrencies?.add(currency);
            }
          }
        });
      });
    }
  }
}