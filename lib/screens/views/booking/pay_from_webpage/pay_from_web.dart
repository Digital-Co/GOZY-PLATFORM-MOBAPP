import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/screens/views/booking/pay_from_webpage/pay_from_web_controller.dart';
import 'package:gozy/screens/views/booking/payment_type/payment_type.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/webviewx_plus/utils/utils.dart';

import '../../../../resources/app_lang.dart';
import '../../../../widgets/common/custom_dialog/custom_dialog.dart';
import '../../../../widgets/webviewx_plus/view/impl/mobile.dart';

class PayFromWeb extends PaymentTypePage {
  const PayFromWeb({super.key});

  @override
  PayFromWebState createState() => PayFromWebState();
}

class PayFromWebState extends PaymentTypePageState {
  PayFromWebController webpagecontroller = Get.find();

  late dynamic webviewController;

  @override
  void initState() {
    webpagecontroller.rxSelectedPaymentType.value = super.controller.rxSelectedPaymentType.value;
    webpagecontroller.message = super.controller.message;
    webpagecontroller.itemInfo = super.controller.itemInfo;
    webpagecontroller.billingCalcuationData.value = super.controller.billingCalcuationData.value;
    webpagecontroller.createReservationData = super.controller.createReservationData;
    webpagecontroller.reservationId = super.controller.reservationId;
    webpagecontroller.change(rxVariable: webpagecontroller.webviewprogress, value: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        controller: webpagecontroller,
        isShowAppBar: true,
        backIconWidget: getBackIconWidget(themeType: overALLThemeType, onTap: _goBack),
        customAppBarFunction: _goBack,
        body: [
          showBodyContent(context),
          GetBuilder(
            init: webpagecontroller,
            id: webpagecontroller.webviewprogress.id,
            builder: (context) => (webpagecontroller.webviewprogress.value == 0)
                ? dotCenter120HeightLoader!.toResizeWidget(height: deviceHeight, color: Colors.white)
                : 0.toHeight(),
          ),
        ].toStack());
  }

  Widget showBodyContent(BuildContext context) {
    return WebViewX(
      height: deviceHeight,
      width: deviceWidth,
      userAgent: 'User_Agent',
      javascriptMode: JavascriptMode.unrestricted,
      mobileSpecificParams: MobileSpecificParams(
        androidEnableHybridComposition: true,
        debuggingEnabled: Platform.isAndroid,
      ),
      initialContent: super.controller.redirectUrl ?? 'about:blank',
      onWebViewCreated: (controller) {
        webviewController = controller;
      },
      onPageStarted: (src) => debugPrint('A new page has started loading: $src\n'),
      onPageFinished: (src) {
        Future.delayed(Duration(milliseconds: 250)).then((value) {
          webpagecontroller.change(rxVariable: webpagecontroller.webviewprogress, value: 1);
        });
        debugPrint('The page has finished loading: $src\n');
      },
      navigationDelegate: (navigation) {
        debugPrint('navigationdelie: ${navigation.content.source}');

        String url = navigation.content.source;
        final uri = Uri.tryParse(url);
        final isReturnFromPayPal = uri != null &&
            !uri.host.contains('paypal.com') &&
            uri.path.contains('success') &&
            (uri.queryParameters['token'] ?? '').isNotEmpty;
        debugPrint('[PayPal] navigation url=$url returnFromPayPal=$isReturnFromPayPal');
        if (isReturnFromPayPal) {
          Map<String, String> parameters = uri.queryParameters;
          webpagecontroller.paypalPaymentId = parameters['token'];
          webpagecontroller.payerid = parameters['PayerID'];
          final savedController = super.controller;
          webpagecontroller.paymentTypeController = savedController;

          // Ignore repeated navigation events for an order that is already being confirmed.
          if (webpagecontroller.paypalPaymentId == webpagecontroller.lastRequestedPaymentId) {
            debugPrint('[PayPal] duplicate return ignored token=${webpagecontroller.paypalPaymentId}');
            return NavigationDecision.navigate;
          }
          webpagecontroller.lastRequestedPaymentId = webpagecontroller.paypalPaymentId;

          Get.back();

          Future.delayed(const Duration(milliseconds: 500), () {
            webpagecontroller.paymentTypeController?.isLoading.value = true;
            webpagecontroller.checkNetwork(webpagecontroller.confirmPaypalPayment);
          });
        } else if (uri != null && !uri.host.contains('paypal.com') && uri.path.contains('cancel')) {
          debugPrint('[PayPal] payment cancelled by user url=$url');
          Get.back();
          webviewController.clearCache();
        }
        return NavigationDecision.navigate;
      },
    );
  }

  void _goBack() {
    if (webviewController != null) {
      webviewController!.canGoBack().then((value) {
        if (value) {
          webviewController!.goBack();
        } else {
          showAlertDialog(
              title: alert.tr,
              contentText: paypal_cancel_alert_content.tr,
              onOkPressed: () {
                Get.back();
                Get.back();
              },
              cancelButtonContent: label_cancel.tr,
              okButtonContent: label_go_back.tr);
        }
      });
    }
  }
}