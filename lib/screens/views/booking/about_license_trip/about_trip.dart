import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/graphql/booking/getBillingCalculation/__generated__/get_billing_calculation.data.gql.dart';
import 'package:gozy/resources/app_colors.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/resources/app_layout.dart';
import 'package:gozy/screens/binding/booking_binding.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/booking/generate_with_ai/generate_with_ai.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/screens/views/home_item_detail/home_item_detail.dart';
import 'package:gozy/screens/views/home_item_detail/home_item_detail_navigator.dart';
import 'package:gozy/widgets/common/custom_button/primary_button.dart';
import 'package:gozy/widgets/common/custom_container/custom_bottom_item_shadow_container.dart';
import 'package:gozy/widgets/common/custom_network_image/custom_profile_network_image.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/common/custom_textfield/custom_prefix_textfield.dart';
import 'package:gozy/widgets/common/custom_textfield/custom_textfield_area.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/common/custom_container/custom_container.dart';
import 'package:gozy/widgets/custom_text.dart';
import 'package:gozy/widgets/show_done_view.dart';

import '../../../../app.dart';
import '../../../../config/client.dart';
import 'about_license_controller.dart';

class AboutTrip extends HomeItemDetailView {
  AboutTrip({super.key});

  @override
  HomeItemDetailState createState() => _AboutTripState();
}

class _AboutTripState extends HomeItemDetailState {
  AboutLicenseController aboutLicenceController = Get.find<AboutLicenseController>();

  List<Map<String, dynamic>> carRules = [];
  bool isShortTextField = false;
  String profilePic = "";
  String hostName = "";
  FocusNode aboutTripFocusNode = FocusNode();

  @override
  void initState() {
    initFunction();
    super.initState();
  }

  @override
  void dispose() {
    aboutTripFocusNode.dispose();
    super.dispose();
  }

  void initFunction() {
    super.controller.itemInfo?.carRules.forEach((value) {
      Map<String, dynamic> rules = {};
      rules["id"] = value.id ?? 0;
      rules["itemName"] = value?.itemName ?? '';
      carRules.add(rules);
    });
    profilePic = super.controller.itemInfo.user?.profile?.picture ?? "";
    hostName = super.controller.itemInfo.user?.profile?.firstName ?? "";
    reasonForBooking = App().buildReasonList( reasons: reasonForBooking, labelsString: App().getReasonBooking() );
    switch (appLayoutMap[AppLayout.inputType]?.themeType) {
      case 4:
        isShortTextField = true;
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      controller: aboutLicenceController,
      isShowAppBar: true,
      isShowBGOnLoader: false,
      loader: LottieLoaders.three_dots_loader,
      resizeToAvoidBottomInset: false,
      backIconWidget: getBackIconWidget(
        themeType: overALLThemeType,
        onTap: () {
          Get.back();
        },
      ),
      body: InputDoneView(
        aboutLicenceController,
        parentWidget: _showBodyContent()
            .toPad(bottom: (MediaQuery.of(context).viewInsets.bottom > 0
                ? (MediaQuery.of(context).viewInsets.bottom + 40)
                : 0)),
      ),
      bottomNavigationBar: MediaQuery.of(context).viewInsets.bottom > 0
          ? SizedBox.shrink()
          : _showBottomView(
              billingdata: super.controller.billingCalcuationData.value),
    );
  }

  Widget _showBodyContent() {
    return [_showAboutTripFieldAndRulesView().toColumn(mainAxisSize: MainAxisSize.min)].toScroll();
  }

  List<Widget> _showAboutTripFieldAndRulesView() {
    print("car rulesss:: ${carRules}");
    return [
      _showAboutTripView().toPad(horizontal: AppDimen.startMargin),
      if (carRules.isNotEmpty) ...[
        filterDivider.toPad(horizontal: isShortTextField ? 0 : AppDimen.startMargin),
        _showRulesView().toPad(horizontal: AppDimen.startMargin)
      ]
    ];
  }

  Widget _showAboutTripView() {
    return [
      _showTitleWidgets(isFrom: "about_trip"),
      10.toHeight(),
      _showUserProfileView(),
      10.toHeight(),
      _showTextFieldViewAndHint(),
      10.toHeight()
    ].toColumn();
  }

  Widget _showRulesView() {
    return [10.toHeight(), _showTitleWidgets(isFrom: "rules"), 10.toHeight(), _showRulesList()]
        .toColumn(mainAxisSize: MainAxisSize.min);
  }

  Widget _showTitleWidgets({String isFrom = ""}) {
    switch (isFrom) {
      case "about_trip":
        return [
          CustomTitleText(
            text: label_about_your_trip_title.tr,
            size: AppDimen.textSize_22,
            fontWeight: AppFont.semiBold,
          ),
          10.toHeight(),
          CustomText(
            text: label_say_hello_to_your_car_owner.tr,
            size: AppDimen.textSize_16,
            fontWeight: AppFont.regular,
          ),
        ].toColumn();
      case "rules":
        return [
          CustomTitleText(
            text: label_read_car_rules.trParams({"field1": hostName}),
            size: AppDimen.textSize_22,
            fontWeight: AppFont.semiBold,
          ),
          10.toHeight(),
          CustomText(
            text: label_read_rules_before_start_the_ride.trParams({"field1": hostName}),
            size: AppDimen.textSize_16,
            fontWeight: AppFont.regular,
          ),
        ].toColumn();
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _showUserProfileView() {
    return [
      CustomProfileNetworkImage(
        isRoundIcon: true,
        profileImageType: overALLAppLayoutModel?.profileIconType ?? '',
        imageUrl: profilePic.toString(),
        all: 60,
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
          showHostInfoFromProfileTap(
              hostItem: super.controller.itemInfo.user,
              profileId: super.controller.itemInfo.user?.profile?.profileId,
              isHost: true);
        },
      ),
      12.toWidth(),
      [
        toOnTap(
          onTap: (){
            FocusManager.instance.primaryFocus?.unfocus();
            showHostInfoFromProfileTap(
                hostItem: super.controller.itemInfo.user,
                profileId: super.controller.itemInfo.user?.profile?.profileId,
                isHost: true);
          },
          child: RichText(
            text: TextSpan(
              children: getTextSpans(
                primaryText: '${label_owned_by.tr} $hostName',
                searchTextWithLinks: <String, GestureTapCallback>{},
                highlightColor: overALLThemeType == 1
                    ? AppColors.linkColor
                    : appColors.textColor,
                highlightWords: [hostName]
              ),
              style: TextStyle(
                  fontFamily: AppFont.font,
                  color: appColors.black,
                  fontSize: AppDimen.textSize_18,
                  fontWeight: AppFont.medium),
            ),
          ),
        ),
        CustomText(
            text:
                "${label_joined_in.tr} ${getDateFormat(dateFormat: userProfileCreateFormat, milliSec: super.controller.itemInfo?.user?.profile?.createdAt).$1/*.replaceAll(' ', '')*/}",
            fontWeight: AppFont.regular,
            size: AppDimen.textSize_16),
      ].toColumn(mainAxisAlignment: MainAxisAlignment.center).toStretch(),
    ].toRow(mainAxisAlignment: MainAxisAlignment.start);
  }

  Widget _showTextFieldViewAndHint() {
    RxBool isWritten = false.obs;
    isWritten.value = aboutLicenceController.aboutTripTextController.text.isNotEmpty ? true : false;
    return [
      isShortTextField
          ? CustomPrefixTextField(
              focusNode: aboutTripFocusNode,
              hintText: label_about_your_trip_text_field_hint.tr,
              controller: aboutLicenceController.aboutTripTextController,
              maxLines: 6,
              minLines: 1,
            )
          : CustomTextfieldArea(
              focusNode: aboutTripFocusNode,
              hintText: label_about_your_trip_text_field_hint.tr,
              controller: aboutLicenceController.aboutTripTextController,
              minLines: 6,
              maxLines: 6,
              borderTextfieldPadding: pad(w: 18, h: 10),
            ),
      10.toHeight(),
      [
        Assets.drawableIdea.toSVG(size: 15, colour: appColors.textfieldHintColor).toPad(top: 2),
        5.toWidth(),
        CustomText(
                text: label_driver_around_the_city.tr,
                color: appColors.textfieldHintColor,
                fontWeight: AppFont.regular,
                size: AppDimen.textSize_14)
            .toStretch()
      ].toRow(crossAxisAlignment: CrossAxisAlignment.start),
      10.toHeight(),

   if (aiTextGeneration && (guestBookingRequest || renterServicePlanAIFeatureStatus))
      aboutLicenceController.buildGenerateWithAIView(
          label: isWritten.value ? label_rewrite_with_ai.tr : label_generate_with_ai.tr,
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
            Map<String, dynamic> params = {};
            params["startDate"] = super.controller.selectedDates.first;
            params["endDate"] = super.controller.selectedDates.last;
            params["startTime"] = super.controller.selectedStartTime.value;
            params["endTime"] = super.controller.selectedEndTime.value;
            params["hostName"] = hostName;
            params["type"] = "reservation";
            params["special_apperance"] = aboutLicenceController.aboutTripTextController.text;
            Get.to(GenerateWithAI(), binding: BookingBinding(), arguments: params)?.then((value) {
              if (value.isEmpty) {
                isWritten.value = false;
              } else {
                aboutLicenceController.aboutTripTextController.text = value;
                isWritten.value = true;
              }
            });
          })
    ].toColumn();
  }

  Widget _showRulesList() {
    return toListView(
        key: const PageStorageKey<String>('ruleslist'),
        itemCount: carRules.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          dynamic rule = carRules[index]["itemName"] ?? "";
          return [
            Assets.drawableTickStyle.toSVG(size: 15),
            8.toWidth(),
            CustomText(
              text: "$rule",
              size: AppDimen.textSize_16,
              fontWeight: AppFont.regular,
            ).toStretch(),
          ]
              .toRow(
                  crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start)
              .toPad(bottom: 10);
        });
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
                            padding: pad(w: 2, bottom: 4),
                            body: (overALLAppLayoutModel?.instantBookIcon ?? Assets.drawableInstantBook)
                                .toSVG(size: 16)),
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
                Flexible(
                  child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: SizedBox(height: 50, child: PrimaryButton(
                          buttonText: btn_label_next.tr,
                          isWrapContent: true,
                          onTap: () {
                            if (_validate()) {
                              if (_isProfileUploaded()) {
                                super.controller.confirmpayMessageController.text =
                                    aboutLicenceController.aboutTripTextController.text.trim();
                                super
                                    .controller
                                    .homeItemDetailNavigator
                                    ?.navigateScreen(HomeItemDetailScreen.PaymentType, '');
                              } else {
                                super
                                    .controller
                                    .homeItemDetailNavigator
                                    ?.navigateScreen(HomeItemDetailScreen.uploadProfile, {
                                  "page": 'pay',
                                    "onTap": (callBack) {
                                      callBack(true);
                                      super
                                              .controller
                                              .confirmpayMessageController
                                              .text =
                                          aboutLicenceController
                                              .aboutTripTextController.text
                                              .trim();
                                      super
                                          .controller
                                          .homeItemDetailNavigator
                                          ?.navigateScreen(
                                              HomeItemDetailScreen.PaymentType,
                                              '');
                                      callBack(false);
                                    }
                                  });
                                }
                              }
                            },
                            padding: pad(w: 18, h: 3),
                  )),
                  ),
                )
              ].toRow())
          .toStretch()
    ].toRow();
  }

  bool _validate() {
    return aboutLicenceController.fieldValidator(isFrom: "about_trip");
  }

  bool _isProfileUploaded() {
    return aboutLicenceController.isProfilePhotoUploaded();
  }
}