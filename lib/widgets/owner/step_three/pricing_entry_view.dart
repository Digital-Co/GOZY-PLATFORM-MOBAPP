import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gozy/screens/binding/property_steps_binding.dart';
import 'package:gozy/screens/views/owner/generate_with_ai_owner/generate_base_price_with_ai.dart';
import 'package:gozy/screens/views/owner/step_three/step_three_controller.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/owner/step_three/listing_options_view.dart';

import '../../../config/client.dart';
import '../../../constant.dart';
import '../../../resources/app_lang.dart';
import '../../../screens/views/base_controller.dart';
import '../../custom_textfield.dart';
import '../list_item_selection_widget.dart';

class PricingEntryView extends GetView {
  @override
  StepThreeController controller;

  PricingEntryView({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> pricingWidgets = [
      _currencySelectionWidget(),
      20.toHeight(),
      _basePriceEntryWidget(),
      10.toHeight(),
      label_base_price_hint_day_rate.tr.toExplanationTip(),
      20.toHeight(),
      if (aiTextGeneration && (aiAccessMarketPricing || ownerServicePlanAIFeatureStatus))
      _showGenerateWithAIView(),
      20.toHeight(),
      _taxesEntryWidget(),
      20.toHeight(),
      ListingOptionsView(controller: controller),
      20.toHeight(),
    ];
    return toListView(
        itemCount: pricingWidgets.length,
        key: const PageStorageKey<String>('priceentry'),
        itemBuilder: (context, index) {
          return pricingWidgets[index];
        });
  }

  Widget _currencySelectionWidget() {
    return Obx(() {
      controller.selectedCurrencyChanged.value;
      return ListItemSelectionWidget(
        bottomSheetBorderRadius: overALLAppLayoutModel?.borderRadius,
        controller: controller,
        title: label_currency.tr,
        listItems: controller.listOfCurrencies,
        selectedId: controller.selectedCurrency?.id,
        onItemSelected: (value) {
          controller.selectedCurrency = value;
          controller.selectedCurrencyChanged.value =
              !controller.selectedCurrencyChanged.value;
          debugPrint(
              'controller.selectedCurrency: ${controller.selectedCurrency}');
        },
      );
    });
  }

  Widget _basePriceEntryWidget() {
    return TitleTextField(
        title: label_base_price.tr,
        tooltipcontent: label_base_price_hint_day.tr,
        controller: controller.basePriceEditController,
        hintText: label_base_price_hint_day.tr,
        characterlength: 12,
        focusNode: controller.basePriceFocusNode,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        filteringTextInputFormatter: [
          FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
        ],
        textInputAction: TextInputAction.next,
        onSubmitted: (value) {
          controller.taxesFocusNode.changeFocus();
        });
  }

  Widget _taxesEntryWidget() {
    return TitleTextField(
        title: label_security_deposit.tr,
        tooltipcontent: "label_security_deposit_info".tr,
        controller: controller.securityDepositController,
        focusNode: controller.taxesFocusNode,
        characterlength: 13,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        textInputAction: TextInputAction.done,
        filteringTextInputFormatter: [
          FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
        ],
        onSubmitted: (value) {
          FocusManager.instance.primaryFocus!.unfocus();
        });
  }

  bool setValidation() {
    if (controller.isSaveAndExit) {
      controller.isSaveAndExit = false;
      return true;
    }
    String baseprice = controller.basePriceEditController.Ttext;
    if (baseprice.isNotEmpty &&
        baseprice.substring(baseprice.length - 1) == '.') {
      controller.basePriceEditController.text =
          baseprice.substring(0, baseprice.length - 1);
    }

    if (controller.basePriceFocusNode.hasFocus && Platform.isIOS) {
      controller.taxesFocusNode.requestFocus();
      return false;
    } else if (MediaQuery.of(Get.context!).viewInsets.bottom > 0.0) {
      FocusManager.instance.primaryFocus?.unfocus();
      Map<String, bool> results = {
        '${label_base_price.tr} ${error_msg_is_required.tr}':
            controller.basePriceEditController.Ttext.isEmpty ||
                double.parse(controller.basePriceEditController.Ttext) <= 0,
      };
      return results.isValidate(controller: controller);
    } else {
      Map<String, bool> results = {
        '${label_base_price.tr} ${error_msg_is_required.tr}':
            controller.basePriceEditController.Ttext.isEmpty ||
                double.parse(controller.basePriceEditController.Ttext) <= 0,
      };
      return results.isValidate(controller: controller);
    }
  }

  Widget _showGenerateWithAIView() {
    return UnconstrainedBox(
      alignment: AlignmentDirectional.centerStart,
      child: controller.buildGenerateWithAIView(
        label: "${label_check_market_price_with.tr} AI",
        onTap: () {
          Map<String, dynamic> params = {};
          List<String> carFeatures = [];
          params['carType'] = controller.itemInfo.carType ?? "";
          params["location"] =
              "${controller.itemInfo.street}, ${controller.itemInfo.city}, ${controller.itemInfo.state}, ${controller.itemInfo.country}";
          if (controller.itemInfo.carFeatures != null ||
              controller.itemInfo.carFeatures != []) {
            for (int i = 0; i < controller.itemInfo.carFeatures.length; i++) {
              carFeatures.add(controller.itemInfo.carFeatures[i].itemName);
            }
          }
          params["carFeatures"] = carFeatures;
          params["make"] = controller.itemInfo.make ?? "";
          params["model"] = controller.itemInfo.model ?? "";
          params["year"] = controller.itemInfo.year ?? "";
          params["currency"] = controller.selectedCurrency.itemValue;
          Get.to(GenerateBasePriceWithAi(),
              binding: PropertyStepsBinding(), arguments: params);
        },
      ),
    );
  }
}