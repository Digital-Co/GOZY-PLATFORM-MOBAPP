import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/graphql/booking/confirmPayPalExecute/__generated__/confirm_paypal_execute.data.gql.dart';
import 'package:gozy/graphql/booking/confirmPayPalExecute/__generated__/confirm_paypal_execute.req.gql.dart';
import 'package:gozy/screens/views/booking/payment_type/payment_type_controller.dart';

import 'package:gozy/constant.dart';
import 'package:gozy/resources/app_lang.dart';
import '../../base_controller.dart';

class PayFromWebController extends PaymentTypeController {

  String? paypalPaymentId, payerid;
  String? _confirmedPaymentId, lastRequestedPaymentId;
  var webviewprogress = ReactiveVariable("webviewprogress", 0);
  PaymentTypeController? paymentTypeController;

  void confirmPaypalPayment() {
    // The WebView can report the success URL several times; capture only once per PayPal order.
    if (paypalPaymentId == null || paypalPaymentId == _confirmedPaymentId) {
      debugPrint('[PayPal] confirm skipped token=$paypalPaymentId alreadyConfirmed=${paypalPaymentId == _confirmedPaymentId}');
      return;
    }
    debugPrint('[PayPal] confirmPayPalExecute request token=$paypalPaymentId payerId=$payerid isPaymentFrom=$isPaymentFrom');
    _confirmedPaymentId = paypalPaymentId;
    final target = paymentTypeController ?? this;
    GconfirmPayPalExecuteReq confirmpaypalparams = GconfirmPayPalExecuteReq((b) {
      b
      ..vars.paymentId = paypalPaymentId
      ..vars.payerId = payerid;
      if (isPaymentFrom == "servicePlan") {
        b.vars.isServicePlan = true;
        b.vars.userType = paymentTypeController?.userType;
      }
    });
    FerryLoggerClient.makeRequest(confirmpaypalparams, paymentTypeController ?? this, confirmPaypalPayment,
        isToGet400Message: true, isViewErrorMessage: false, isAutoCloseLoader: false)
        ?.then((res) async {
      GconfirmPayPalExecuteData confirmReservationData = res.data as GconfirmPayPalExecuteData;

      final confirmResult = confirmReservationData.confirmPayPalExecute;
      debugPrint('[PayPal] confirmPayPalExecute response status=${confirmResult?.status} '
          'reservationId=${confirmResult?.reservationId} purchasePlanId=${confirmResult?.purchasePlanId} '
          'errorMessage=${confirmResult?.errorMessage}');

      if (confirmResult?.status != 200) {
        // Capture failed on the server: allow a retry and never show the booking as confirmed.
        _confirmedPaymentId = null;
        target.isLoading.value = false;
        target.showSnackBar(confirmReservationData.confirmPayPalExecute?.errorMessage ?? error_msg_oops_something_went_wrong_pls_try_again.tr,
            isltralign: true);
        return;
      }

      int? purchaseId;
      if (isPaymentFrom == "servicePlan") {
        purchaseId = confirmReservationData.confirmPayPalExecute?.purchasePlanId ??
            (paymentTypeController ?? this).reservationId;
      } else {
        purchaseId = confirmReservationData.confirmPayPalExecute?.reservationId;
      }

      (paymentTypeController ?? this).navigateReservationDetail(purchaseId: purchaseId);
    });
  }
}