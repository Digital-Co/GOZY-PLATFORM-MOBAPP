import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/widgets/common/custom_bottomsheet/custom_getx_bottomsheet.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/common/custom_textfield/custom_prefix_textfield.dart';
import 'package:gozy/widgets/custom_text.dart';
import 'package:gozy/widgets/owner/step_item_model.dart';

import '../../../../../constant.dart';
import '../../../../../generated/assets.dart';
import '../../../../../resources/app_lang.dart';
import '../../../../../resources/app_layout.dart';
import '../../../../../utils/text_editing_controller.dart';
import '../../../../../widgets/common/custom_bottomsheet/custom_draggable_bottomsheet.dart';
import '../../../../../widgets/common/custom_button/primary_button.dart';
import '../../../../../widgets/common/custom_container/custom_bottom_item_shadow_container.dart';
import '../../../../../widgets/common_extension_functions.dart';
import '../../../../../widgets/custom_stateful_widget.dart';
import '../../../base_controller.dart';
import '../../../custom_scaffold.dart';
import '../payout_preference_controller.dart';

class PayoutPaypalDetails extends CustomStatefulWidget {
  const PayoutPaypalDetails({super.key});

  @override
  PayoutPaypalDetailsState createState() => PayoutPaypalDetailsState();
}

class PayoutPaypalDetailsState extends CustomStatefulWidgetState<PayoutPaypalDetails>
    with TickerProviderStateMixin {
  PayoutPreferenceController controller = Get.find();
  String paymentName = '';
  static AppLayoutModel? profileLayout = appLayoutMap[AppLayout.profile];
  double? nextButtonBorderRadius;

  @override
  void initState() {
    controller.getAllPaypalData();
    final method = controller.paymentlist.firstWhere((element) => element?.id == 1);
    paymentName = method?.paymentName ?? method?.name ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (profileLayout!.themeType) {
      case 3:
        nextButtonBorderRadius = 30;
        break;
      default:
        nextButtonBorderRadius = profileLayout!.borderRadius;
        break;
    }
    return CustomScaffold(
      loader: LottieLoaders.three_dots_loader,
      loaderSize: 120,
      controller: controller,
      isShowAppBar: true,
      backIconWidget: getBackIconWidget(
        themeType: overALLThemeType,
      ),
      resizeToAvoidBottomInset: true,
      body: showBodyContent(),
    );
  }

  Widget showBodyContent() {
    return [
      CustomTitleText(
        text: paymentName,
        size: AppDimen.textSize_22,
        fontWeight: AppFont.semiBold,
      ).toPad(horizontal: AppDimen.startMargin, bottom: 12),
      _showAllTextField().toScroll(padding: pad(w: AppDimen.startMargin)).toStretch(),
      _showNextButton(),
    ].toColumn();
  }

  List<Widget> _showAllTextField() {
    List<Widget> children = [];
    children.add(_showPayPalContent());
    children.add(AppDimen.startMargin.toHeight());
    controller.payoutPaypalDetailsMap.forEach((enums, element) {
      children.add(_showTextFieldWidget(
          addressDetailsEnum: enums,
          customTextEditingController: element.customTextEditingController,
          hintText: element.hintText,
          title: element.title));
    });
    return children;
  }

  Widget _showPayPalContent() {
    return CustomText(
      text: paypal_content.trParams({
        "field": APP_NAME
      }),
      size: AppDimen.textSize_14,
      fontWeight: AppFont.regular,
    );
  }

  Widget _showNextButton() {
    return CustomBottomItemShadowContainer(
      borderRadiusGeometry: BorderRadius.vertical(top: Radius.circular(nextButtonBorderRadius!)),
      padding: pad(
          top: 20,
          w: AppDimen.startMargin,
          bottom: 20 ),
      body: PrimaryButton(
        buttonText: btn_label_finish.tr,
        onTap: () {
          debugPrint("controller.isLoading.value: ${controller.isLoading.value}");
            if (controller.validatePayPalInputFields()) {
              controller.hideKeyBoard();
              if(!controller.isLoading.value) {
                controller.isLoading.value = true;
                controller.checkNetwork(() {
                  controller.initAddPayout(1);
                });
              }
            }

        },
      ),
    );
  }

  Widget _showTextFieldWidget(
      {required CustomTextEditingController customTextEditingController,
      required String title,
      required String hintText,
      required PayoutPaypalDetailsEnum addressDetailsEnum}) {
    bool isDisableField = !controller.payPalTextFieldDisableEnumList.contains(addressDetailsEnum);
    return [
      CustomPrefixTextField(
        title: title.toUpperLowerCase(),
        onTap: () {
          _changeCurrency();
        },
        controller: customTextEditingController,
        suffixIcon: isDisableField ? null : Assets.drawableFilterCalendarArrow,
        suffixIconQuarterTurns: isDisableField ? null : 3,
        enabled: isDisableField,
        focusNode: CustomFocusNode(),
        textSize: AppDimen.textSize_14,
        keyboardType: TextInputType.emailAddress,
        hintText: hintText,
        maxLines: 1,
        textCapitalization: TextCapitalization.sentences,
        textInputAction: TextInputAction.done,
      ).toPad(bottom: 16),
    ].toColumn(mainAxisSize: MainAxisSize.min);
  }

  void _showBottomSheet() {
    GetXBottomSheet(
      bottomSheetWidget: getDraggableSheetWidget(
        controller: controller,
        listItems: (controller.listOfPayPalCurrencies ?? <dynamic>[])
            .whereType<String>()
            .map(
              (currency) => StepItemModel(
                itemName: currency,
                itemValue: currency,
              ),
            )
            .toList(growable: false),
        borderRadius: profileLayout?.borderRadius,
        themeType: profileLayout?.themeType,
        selectedValue: controller.getPayPalFieldValue(
          fieldEnum: PayoutPaypalDetailsEnum.payPalCurrency,
        ),
        isShowCircleTick: true,
        title: label_choose_currency.tr,
        isMaterialLocalization: true,
        fontFamily: 'Roboto',
        onItemSelected: (value) {
          final StepItemModel selectedItem =
              value is StepItemModel ? value : StepItemModel();
          controller.setPaypalFieldValue(
            fieldEnum: PayoutPaypalDetailsEnum.payPalCurrency,
            fieldValue:
                selectedItem.itemValue ?? selectedItem.itemName ?? '',
          );
        },
      ),
    );
  }

  void _changeCurrency() {
    controller.changePaypalCurrency(
        controller.getPayPalFieldValue(fieldEnum: PayoutPaypalDetailsEnum.payPalCurrency));
    _showBottomSheet();
  }
}
