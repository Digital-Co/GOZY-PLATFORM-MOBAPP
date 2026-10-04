import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/screens/views/profile/payout_preference/payout_preference_controller.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/custom_stateful_widget.dart';
import '../../../../../generated/assets.dart';
import '../../../../../resources/app_layout.dart';
import '../../../../../widgets/common_extension_functions.dart';
import '../../../../../widgets/paypal_payment_selection_card.dart';
import '../../../base_controller.dart';
import '../payout_preference_navigator.dart';

class PayoutPaymentChoose extends CustomStatefulWidget {
  const PayoutPaymentChoose({super.key});

  @override
  PayoutPaymentChooseState createState() => PayoutPaymentChooseState();
}

class PayoutPaymentChooseState
    extends CustomStatefulWidgetState<PayoutPaymentChoose>
    with TickerProviderStateMixin {
  PayoutPreferenceController controller = Get.find();
  AppLayoutModel? profileLayout = appLayoutMap[AppLayout.profile];
  double? containerBorderRadius;
  Color? fileColor;

  bool isThemeFour = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => controller.checkNetwork(controller.getPaymentTypes));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch(profileLayout!.themeType) {
      case 1:
        containerBorderRadius = profileLayout!.borderRadius;
        fileColor = appColors.cardTheme1Color;
        break;
      case 3:
        containerBorderRadius = 30;
        break;
      case 4:
        containerBorderRadius = profileLayout!.borderRadius;
        isThemeFour = true;
      default:
        containerBorderRadius = profileLayout!.borderRadius;
        break;
    }

    return CustomScaffold(
        controller: controller,
        isShowAppBar: true,
        customAppBarFunction: () {
          onBack();
        },
        backgroundColor: appColors.white,
        isShowBGOnLoader: false,
        loader: LottieLoaders.three_dots_loader,
        backIconWidget: getBackIconWidget( themeType: overALLThemeType,),
        body: showBodyContent(context));
  }

  Widget showBodyContent(BuildContext context) {
    return [
      CustomTitleText(text: label_payout_payment_title.tr, size: AppDimen.textSize_22, fontWeight: AppFont.semiBold,),
      Obx(() {
        return controller.selectedpaymentType.value != 0 ?[
        for (final (index, _) in controller.paymentlist.indexed)
          toOnTap(
            onTap: (){
              int paymentid = controller.paymentlist[index]?.id ?? -1;
              if(paymentid == 1){
                var currency =   controller.paymentlist[index]?.currency ?? '';
                if( controller.listOfPayPalCurrencies !=null &&  controller.listOfPayPalCurrencies!.isNotEmpty) {
                  bool isNavigateEnable = false;
                  controller.listOfPayPalCurrencies?.forEach((value) {
                    if(value.toString().split(' ')[1] == currency && !isNavigateEnable ){
                      isNavigateEnable = true;
                    }
                  });

                  if(!isNavigateEnable){
                    controller.showToast(error_msg_payout_currency_is_not_on_paypal_currency_list.tr);
                    return;
                  }
                }
              }
              controller.payoutPreferenceNavigator?.navigateScreen(controller.paymentlist[index]?.id == 1 ? PayoutPreferenceScreen.payoutPaypalDetails : PayoutPreferenceScreen.payoutAccountDetails);
            },
            child: PaypalPaymentSelectionCard(
              themeType: profileLayout!.themeType,
              paymentSelectionFrom: PaymentSelectionFrom.payoutPreference,
              paymentIcon: controller.paymentlist[index]?.id == 1 ? Assets.drawablePaypal : Assets.drawableStripe,
              paymentName: controller.paymentlist[index]?.name ?? '',
              borderRadius: containerBorderRadius,
              fillColor: fileColor,
              isPayYouPage: true,
              isThemeFour: isThemeFour,
              paymentSubHeader: [
                {
                  "title": label_payout_payment_fees.tr,
                  "subTitle": controller.paymentlist[index]?.fees ?? '',
                },
                {
                  "title": label_payout_payment_process.tr,
                  "subTitle": controller.paymentlist[index]?.processedIn ?? '',
                },
                {
                  "title": label_currency.tr,
                  "subTitle": "[${controller.paymentlist[index]?.currency ?? ''}]"
                },
              ],
              paymentButton: {
                PayoutButtonType.selectButton: {
                  "onTap": (){
                    int paymentid = controller.paymentlist[index]?.id ?? -1;
                    if(paymentid == 1){
                      var currency =   controller.paymentlist[index]?.currency ?? '';
                      if( controller.listOfPayPalCurrencies !=null &&  controller.listOfPayPalCurrencies!.isNotEmpty) {
                        bool isNavigateEnable = false;
                        controller.listOfPayPalCurrencies?.forEach((value) {
                          if(value.toString().split(' ')[1] == currency && !isNavigateEnable ){
                            isNavigateEnable = true;
                          }
                        });

                        if(!isNavigateEnable){
                          controller.showToast(error_msg_payout_currency_is_not_on_paypal_currency_list.tr);
                          return;
                        }
                      }
                    }
                    controller.payoutPreferenceNavigator?.navigateScreen(controller.paymentlist[index]?.id == 1 ? PayoutPreferenceScreen.payoutPaypalDetails : PayoutPreferenceScreen.payoutAccountDetails);
                  },
                  "isEnable": true,
                  "fillColor": appColors.black,
                  "textColor": appColors.white,
                  "borderColor": appColors.myTripsDividerColor,
                  "isArrowNeeded" : true,
                },
              },
            ),
          )
        ].toColumn(): CustomTitleText(text: payoutUnavailableMessage);
      })
    ].toColumn().toPad(horizontal: AppDimen.startMargin);
  }

}