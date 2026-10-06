import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/utils/localized_date_time.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/graphql/booking/getBillingCalculation/__generated__/get_billing_calculation.data.gql.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/resources/app_layout.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/booking/about_license_trip/about_license_controller.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/screens/views/home_item_detail/home_item_detail.dart';
import 'package:gozy/screens/views/home_item_detail/home_item_detail_navigator.dart';
import 'package:gozy/widgets/bottom_sheet/country_selection_bottom_sheet.dart';
import 'package:gozy/widgets/common/custom_button/primary_button.dart';
import 'package:gozy/widgets/common/custom_container/custom_bottom_item_shadow_container.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/common/custom_container/custom_container.dart';
import 'package:gozy/widgets/custom_text.dart';
import 'package:gozy/widgets/custom_textfield.dart';

class AboutLicense extends HomeItemDetailView {
  AboutLicense({super.key});

  @override
  AboutLicenseState createState() => AboutLicenseState();
}

class AboutLicenseState extends HomeItemDetailState {
  AboutLicenseController aboutLicenceController = Get.find<AboutLicenseController>();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      controller: aboutLicenceController,
      isShowAppBar: true,
      isShowBGOnLoader: false,
      loader: LottieLoaders.three_dots_loader,
      resizeToAvoidBottomInset: true,
      backIconWidget: getBackIconWidget(
        themeType: overALLThemeType,
        onTap: () {
          Get.back();
        },
      ),
      body: _showBodyContent(),
      bottomNavigationBar: _showBottomView(billingdata: super.controller.billingCalcuationData.value),
    );
  }

  Widget _showBodyContent() {
    return [
      _showTitleWidget().toPad(horizontal: AppDimen.startMargin),
      [_showAboutLicenceFields().toColumn(mainAxisSize: MainAxisSize.min,spacing:signUpTextFieldPadding )]
          .toScroll()
          .toPad(horizontal: AppDimen.startMargin)
          .toStretch(),
    ].toColumn();
  }

  Widget _showTitleWidget() {
    return [
      CustomTitleText(
        text: label_about_licence_title.tr,
        size: AppDimen.textSize_22,
        fontWeight: AppFont.semiBold,
      ),
      10.toHeight(),
      CustomText(
        text: label_about_licence_content.tr,
        size: AppDimen.textSize_16,
        fontWeight: AppFont.regular,
      ),
      24.toHeight(),
    ].toColumn();
  }

  List<Widget> _showAboutLicenceFields() {
    return [
      _showLicenceNumberField(),
      _showFirstNameField(),
      _showLastNameField(),
      _showDOBField(),
      _showCountrySelectField(),
    ];
  }

  Widget _showLicenceNumberField() {
    return TitleTextField(
      focusNode: CustomFocusNode(),
      title: label_licence_no.tr,
      controller: aboutLicenceController.licenceNumberController,
      hintText: label_licence_no.tr,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
    );
  }

  Widget _showFirstNameField() {
    return TitleTextField(
      focusNode: CustomFocusNode(),
      title: label_first_name.tr,
      controller: aboutLicenceController.firstNameController,
      hintText: label_first_name.tr,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
    );
  }

  Widget _showLastNameField() {
    return TitleTextField(
      focusNode: CustomFocusNode(),
      title: label_last_name.tr,
      controller: aboutLicenceController.lastNameController,
      hintText: label_last_name.tr,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
    );
  }

  Widget _showDOBField() {
    return TitleTextField(
      title: label_birthday.tr,
      controller: aboutLicenceController.dobController,
      enabled: false,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        DateTime currentDate = DateTime.now();
        DateTime lastDate = DateTime(currentDate.year - 18, currentDate.month, currentDate.day);
        DateTime firstDate = DateTime(1920, 01, 01);
        DateTime? parsedDob = _parseDob(aboutLicenceController.dobController.text.trim());
        DateTime initialDate = parsedDob ??
            aboutLicenceController.initialDobDate ??
            lastDate;
        initialDate = _clampDate(initialDate, firstDate, lastDate);
        showAppDatePicker(
          context: context,
          controller: controller,
          appLayout: AppLayout.themeType,
          initialDate: initialDate,
          firstDate: firstDate,
          locale: Get.locale,
          okButtonContent: label_confirm.tr,
          lastDate: lastDate,
          dateFormat: dobDialogFormat,
          onConfirm: ((String, DateTime)? selectedDate) {
            if (selectedDate != null) {
              debugPrint('selectedFirstDate: $selectedDate');
              FocusManager.instance.primaryFocus!.unfocus();
              aboutLicenceController.dobController.text = selectedDate.$1;
              aboutLicenceController.initialDobDate = selectedDate.$2;
            }
          }
        );
      },
      hintText: licenseFormat,
      isReadOnly: true,
    );
  }

  DateTime? _parseDob(String text) {
    if (text.isEmpty) return null;
    return LocalizedDateTime.tryParseDisplayDate(
      text,
      (Get.locale ?? const Locale('en')).toLanguageTag(),
    );
  }

  DateTime _clampDate(DateTime date, DateTime firstDate, DateTime lastDate) {
    if (date.isBefore(firstDate)) return firstDate;
    if (date.isAfter(lastDate)) return lastDate;
    return date;
  }

  Widget _showCountrySelectField() {
    return TitleTextField(
      title: payout_country.tr,
      controller: aboutLicenceController.countryController,
      hintText: payout_country.tr,
      hintTextColor: appColors.customTextColor,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      enabled: false,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        if (elementsItemVal.isEmpty) {
          aboutLicenceController.countryInitFun();
        }
        CountrySelectionBottomSheet(
          controller: aboutLicenceController,
          countries: elementsItemVal,
          selectedValue: aboutLicenceController.countryController.text,
          searchController: aboutLicenceController.countrySearchController,
          updateTrigger: aboutLicenceController.isUpdateSelectedItem,
          onSelect: (item) {
            aboutLicenceController.countryController.text = item.name;
            aboutLicenceController.selectedCountryCode = item.code;
          },
        );
      },
      suffixIcon: Assets.drawableDownArrow,
      suffixIconSize: 7,
    ).toPad(bottom: 20);
  }

  Widget _showBottomView({GgetBillingCalculationData? billingdata}) {
    GgetBillingCalculationData_getBillingCalculation_result? billingData =
        billingdata?.getBillingCalculation?.result;
    return [
      CustomBottomItemShadowContainer(
              height: 100,
              color: appColors.white,
              padding: pad(w: 20, top: 25, bottom: 20),
              borderRadiusGeometry: BorderRadiusDirectional.vertical(
                  top: Radius.circular(overALLAppLayoutModel?.borderRadius ?? 0),
                  bottom: Radius.circular(overALLAppLayoutModel?.borderRadius ?? 0)),
              body: [
                [
                  RichText(
                      text: TextSpan(children: [
                    if (super.controller.itemInfo.bookingType == 'instant')
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: CustomContainer(
                            body: (overALLAppLayoutModel?.instantBookIcon ?? Assets.drawableInstantBook)
                                .toSVG(size: 16)
                                .toPad(horizontal: 2, bottom: 4)),
                      ),
                    TextSpan(
                      style: TextStyle(
                        fontFamily: AppFont.font,
                          color: appColors.textColor,
                          fontSize: AppDimen.textSize_18,
                          fontWeight: AppFont.semiBold),
                      text: (billingData!.total ?? 0.0)
                          .currencyConverted(convertedCurrency: billingData.currency ?? defaultCurrency)
                          .toNumberFormat(symbol: super.controller.getCurrencySymbol()),
                    )
                  ])),
                  CustomText(
                      text: label_for_text.trParams({
                        "field": "${billingData.days} ${label_day.trPlural(dayPlural.tr, billingData.days)}"
                      }),
                      size: AppDimen.textSize_14)
                ].toColumn(),
                Spacer(),
                PrimaryButton(
                  buttonText: btn_label_next.tr,
                  onTap: () {
                    if (_validate()) {
                      super.controller.licenceNoController.text =
                          aboutLicenceController.licenceNumberController.text.trim();
                      super.controller.firstNameController.text =
                          aboutLicenceController.firstNameController.text.trim();
                      super.controller.lastNameController.text =
                          aboutLicenceController.lastNameController.text.trim();
                      super.controller.dateOfBirthController.text =
                          LocalizedDateTime.apiDate(aboutLicenceController.initialDobDate!);
                      super.controller.countryController.text = aboutLicenceController.selectedCountryCode;
                      super
                          .controller
                          .homeItemDetailNavigator
                          ?.navigateScreen(HomeItemDetailScreen.aboutTrip, "");
                    }
                  },
                  padding: pad(w: AppDimen.startMargin),
                ).toResizeWidget(height: 50).toStretch()
              ].toRow())
          .toStretch()
    ].toRow();
  }

  bool _validate() {
    return aboutLicenceController.fieldValidator(isFrom: "about_license");
  }
}
