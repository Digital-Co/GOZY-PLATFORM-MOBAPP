import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/widgets/common/custom_container/custom_border_container.dart';
import 'package:gozy/widgets/common/custom_network_image/custom_profile_network_image.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/conditional_parent_widget.dart';
import 'package:gozy/widgets/common/custom_container/custom_container.dart';
import 'package:gozy/widgets/custom_list_item.dart';
import 'package:gozy/widgets/custom_text.dart';
import 'package:gozy/widgets/dotted_border/dotted_border.dart';

import '../../../config/client.dart';
import '../../../constant.dart';
import '../../../resources/app_layout.dart';
import '../../../widgets/common/custom_dialog/custom_dialog.dart';
import '../../../widgets/custom_stateful_widget.dart';
import '../base_controller.dart';
import 'profile_controller.dart';

class ProfilePage extends CustomStatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends CustomStatefulWidgetState<ProfilePage> {
  late ProfileController controller = Get.find();
  static int profileThemeType = appLayoutMap[AppLayout.profile]?.themeType ?? 0;
  static String _profileThemeProfileIconType = appLayoutMap[AppLayout.profile]?.profileIconType ?? '';
  static final double _profileBorderRadius = appLayoutMap[AppLayout.profile]?.borderRadius ?? 0;

  String? profileSubTitle;
  bool? _showEditOnAccount;
  double versionSpacing = 0;
  bool? _isGrouping;
  double iconPadding = 10;
  double? leadingIconSize;
  Map<String, String> _profileIconsMap = {};

  @override
  void initState() {
    isShowLoader = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (profileThemeType) {
      case 1:
        profileSubTitle = label_view_edit_profile.tr.toUpperLowerCase();
        break;
      case 2:
        iconPadding = 7;
        leadingIconSize = 35;
        _showEditOnAccount = true;
        break;
      case 3:
        _isGrouping = true;
        versionSpacing = deviceHeight * 0.05;
        profileSubTitle = label_edit_profile.tr;
        break;
      case 4:
        versionSpacing = 75;
        break;
    }
    _profileIconsMap = getIcons();
    controller.createProfileIconMap(
        iconsData: _profileIconsMap,
        switchingText: !appPreference.isOwner! ? switch_to_hosting.tr : switch_to_renter.tr,
        logoutfn: () {
          toShowLogoutDialog();
        });
    controller.profileItems.clear();
    controller.theme3ProfileItems.clear();
    controller.getprofileNavigationData(
        showEditOnAccount: _showEditOnAccount,
        iconsData: _profileIconsMap,
        isGrouping: _isGrouping ?? false,
        themeType: profileThemeType);
    debugPrint("profileThemeType: $profileThemeType");
    return CustomScaffold(
      controller: controller,
      isShowAppBar: false,
      body: switch (profileThemeType) {
        1 => showTheme1BodyContent(context),
        2 => showTheme2BodyContent(context),
        3 => showTheme3BodyContent(context),
        4 => showTheme4BodyContent(context),
        _ => const SizedBox.shrink(),
      }
    );
  }

  Widget showTheme1BodyContent(context) {
    return Obx(() {
      return [
        [
          _getEditProfileView(showEditIcon: true),
          _getSwitchDetails(
              showRoundedContainer: true,
              arrowIcon: Assets.viewcarsLeftArrow,
              showLeadingIconCircle: true,
              arrowIconColor: appColors.colorCommonLinkColor,
              showBorder: true,
              startPadding: 12,
              endPadding: 18),
          10.toHeight(),
          _getNavigationBarView(),
          _getLogoutView(textColor: appColors.secondaryColor, iconColor: appColors.secondaryColor),
        ].toScroll(padding: pad(bottom: bottomPadForExtendBody)),
        if (controller.isLoading.value)
          showCenterLoading(loader: LottieLoaders.world_loader, controller: controller),
      ].toStack(alignment: Alignment.center).toResizeWidget(isDeviceFit: true);
    });
  }

  Widget showTheme2BodyContent(context) {
    return Obx(() {
      return [
        [
          _getEditProfileView(),
          10.toHeight(),
          _getSwitchDetails().toPad(end: 10),
          _getNavigationBarView(showIconCircle: true, showArrowIcon: true, dividerSpacing: -5),
          _getLogoutView(iconColor: appColors.black, logoutSpacing: 75),
        ].toScroll(padding: pad(bottom: bottomPadForExtendBody)),
        if (controller.isLoading.value)
          showCenterLoading(loader: LottieLoaders.world_loader, controller: controller),
      ].toStack(alignment: Alignment.center).toResizeWidget(isDeviceFit: true);
    });
  }

  Widget showTheme3BodyContent(context) {
    return Obx(() {
      return [
        [
          _getEditProfileView(showContainerForProfile: true, centerProfileAlignment: true),
          _getSwitchDetails(
              showRoundedContainer: true,
              arrowIcon: Assets.drawableFilterCalendarArrow,
              showArrowIconCircle: true,
              arrowIconColor: appColors.black,
              iconColor: appColors.black),
          theme3NavigationBar(),
          _getLogoutView(showRoundedContainer: true),
        ].toScroll(padding: pad(bottom: bottomPadForExtendBody)),
        if (controller.isLoading.value)
          showCenterLoading(loader: LottieLoaders.world_loader, controller: controller),
      ].toStack(alignment: Alignment.center).toResizeWidget(isDeviceFit: true);
    });
  }

  Widget showTheme4BodyContent(context) {
    return Obx(() {
      return [
        [
          _getEditProfileView(centerProfileAlignment: true),
          AppDimen.startMargin.toHeight(),
          _getHorizantalNavigationView(),
          _getNavigationBarView(
              showIconCircle: true, isDottedLineDivider: true, titleTopPadding: 15, titleBottomPadding: 10),
          _getLogoutView(isshowBorder: true, iconColor: appColors.black, isEnableTurns: false),
        ].toScroll(padding: pad(bottom: bottomPadForExtendBody)),
        if (controller.isLoading.value)
          showCenterLoading(loader: LottieLoaders.world_loader, controller: controller),
      ].toStack(alignment: Alignment.center).toResizeWidget(isDeviceFit: true);
    });
  }

  Widget _getSwitchDetails({
    bool? showRoundedContainer,
    bool? showLeadingIconCircle,
    bool? showArrowIconCircle,
    String? arrowIcon,
    Color? arrowIconColor,
    Color? iconColor,
    bool? showBorder,
    double? startPadding,
    double? endPadding,
  }) {
    return [
      (showRoundedContainer ?? false)
          ? showRoundedRow(
              startPadding: startPadding,
              endPadding: endPadding,
              isOwner: true,
              icon: controller.subMenuListItems['owner']!['icon'],
              description: controller.subMenuListItems['owner']!['name'],
              height: 60,
              fillColor: appColors.theme4AppBarBg,
              onTap: controller.subMenuListItems['owner']!['onTap'],
              borderColor: (showBorder ?? false) ? appColors.colorCommonLinkColor : null,
              showLeadingIconCircle: showLeadingIconCircle,
              showArrowIconCircle: showArrowIconCircle,
              iconBackgroundColor: appColors.white,
              arrowIcon: arrowIcon,
              iconColor: iconColor ?? arrowIconColor,
              arrowIconColor: arrowIconColor)
          : [
              _getNavigationBarTitle(title: label_owner.tr),
              getNavigationBar(
                  leadingIconSize: leadingIconSize,
                  leadingIcon: controller.subMenuListItems['owner']!['icon'],
                  title: controller.subMenuListItems['owner']!['name'],
                  onTap: controller.subMenuListItems['owner']!['onTap'],
                  iconPadding: iconPadding,
                  applayoutModel: appLayoutMap[AppLayout.profile],
                  isProfile: true,
                  isShowItemDivider: false)
            ].toColumn()
    ].toColumn();
  }

  Widget showRoundedRow(
      {String? icon,
      Color? backgroundColor,
      Color? iconBackgroundColor,
      String? arrowIcon,
      Color? arrowBackgroundColor,
      String? description,
      double? height,
      Color? borderColor,
      Color? fillColor,
      GestureTapCallback? onTap,
      Color? arrowIconColor,
      Color? iconColor,
      bool? isOwner,
      bool? showArrowIconCircle,
      Color? arrowIconCircleColor,
      bool? showLeadingIconCircle,
      double? startPadding,
      double? endPadding,
      bool isEnableTurns = true}) {
    return CustomContainer(
      margin: pad(w: AppDimen.startMargin, top: (isOwner ?? false) ? 24 : 12),
      padding: pad(start: startPadding ?? 18, end: endPadding ?? 10),
      width: deviceWidth,
      height: height,
      onTap: onTap,
      decoration: BoxDecoration(
          border: borderColor != null ? Border.all(color: borderColor) : null,
          color: fillColor,
          borderRadius: BorderRadius.circular(100)),
      body: [
        if (icon != null)
          (showLeadingIconCircle ?? false)
              ? icon.toSVG(colour: iconColor).toCircle(color: iconBackgroundColor)
              : icon
                  .toSVG(
                      colour: iconColor,
                      size: 20,
                      quarterTurns:
                          ((description == label_title_log_out.tr) && controller.isRTL() && isEnableTurns)
                              ? 2
                              : null)
                  .toPad(end: 12),
        CustomText(
          text: description ?? '',
          fontWeight: AppFont.medium,
          size: AppDimen.textSize_16,
        ),
        const Spacer(),
        if (arrowIcon != null)
          (showArrowIconCircle ?? false)
              ? (arrowIcon == Assets.drawableFilterCalendarArrow)
                  ? CustomContainer(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          color: arrowIconCircleColor ?? appColors.white, shape: BoxShape.circle),
                      body: arrowIcon
                          .toSVG(isReverseRotation: true, colour: arrowIconColor)
                          .toPad(start: 10, end: 7, top: 8, bottom: 8),
                    )
                  : arrowIcon
                      .toSVG(colour: arrowIconColor, size: 15, isReverseRotation: true)
                      .toCircle(color: arrowIconCircleColor, margin: 0, padding: 12)
              : arrowIcon.toSVG(colour: arrowIconColor, isReverseRotation: true),
      ].toRow(mainAxisAlignment: MainAxisAlignment.start),
    );
  }

  Widget _getNavigationBarView(
      {bool? showIconCircle,
      bool? showArrowIcon,
      bool? isDottedLineDivider,
      double? titleTopPadding,
      double? titleBottomPadding,
      double? dividerSpacing}) {
    List<Widget> customNavBarItems = [];

    controller.profileItems.forEach((key, value) {
      List<Widget> customNavBarSubItems = [];
      customNavBarItems.add(_getNavigationBarTitle(
          title: key, titleTopPadding: titleTopPadding, titleBottomPadding: titleBottomPadding));
      for (var element in value) {
        debugPrint("elementname: ${element['name']}");
        customNavBarSubItems.add(getNavigationBar(
          leadingIconSize: leadingIconSize,
          leadingIcon: element['icon'],
          title: element['name'],
          iconPadding: iconPadding,
          onTap: element['onTap'],
          dividerSpacing: dividerSpacing,
          applayoutModel: appLayoutMap[AppLayout.profile],
          isProfile: true,
          isShowItemDivider: (element['name'] != value[value.length - 1]['name']),
          endArrowPadding: 12,
        ));
      }
      if (isDottedLineDivider ?? false) {
        customNavBarItems.add(_getTheme4borderContainer(child: customNavBarSubItems.toColumn()));
      } else {
        customNavBarItems.addAll(customNavBarSubItems);
      }
    });

    return customNavBarItems.toColumn();
  }

  Widget _getTheme4borderContainer({Widget? child, double? overallpadd}) {
    return CustomBorderContainer(
      borderColor: appColors.myTripsDividerColor,
      borderWidth: 1.2,
      borderRadius: _profileBorderRadius,
      padding: pad(a: overallpadd ?? 0),
      margin: pad(w: AppDimen.startMargin),
      body: child,
    );
  }

  Widget _getEditProfileView(
      {bool? showEditIcon, bool? showContainerForProfile, bool? centerProfileAlignment}) {
    return toOnTap(
      onTap: controller.subMenuListItems['edit_profile']!['onTap'],
      child: GetBuilder<ProfileController>(
          id: 'ProfileUpdate',
          builder: (newController) {
            debugPrint(' newController.firstName: ${newController.firstName}');

            return CustomContainer(
              decoration: (showContainerForProfile ?? false)
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: appColors.myTripsBGColor,
                    )
                  : null,
              padding: (showContainerForProfile ?? false) ? pad(a: 20) : null,
              body: (centerProfileAlignment ?? false)
                  ? [
                      CustomProfileNetworkImage(
                          profileImageType: _profileThemeProfileIconType,
                          imageUrl: newController.profileImage,
                          all: 70),
                      12.toHeight(),
                      CustomTitleText(
                        text: newController.firstName,
                        size: AppDimen.textSize_22,
                        fontWeight: AppFont.semiBold,
                      ),
                      6.toHeight(),
                      if (profileSubTitle?.isNotEmpty ?? false)
                        CustomText(
                          text: profileSubTitle ?? '',
                          color: appColors.secondaryColor,
                          size: AppDimen.textSize_16,
                        )
                    ].toColumn(crossAxisAlignment: CrossAxisAlignment.center)
                  : [
                      CustomProfileNetworkImage(
                          imageUrl: newController.profileImage,
                          profileImageType: _profileThemeProfileIconType,
                          all: 70),
                      12.toWidth(),
                      [
                        [
                          CustomTitleText(
                              text: newController.firstName,
                              size: AppDimen.textSize_22,
                              overflow: TextOverflow.ellipsis),
                          if (profileSubTitle?.isNotEmpty ?? false)
                            CustomText(
                              text: profileSubTitle ?? '',
                              color: appColors.secondaryColor,
                              size: AppDimen.textSize_14,
                              fontWeight: AppFont.regular,
                            ),
                        ].toColumn().toStretch(),
                        (showEditIcon ?? false)
                            ? Assets.drawableEditProfile
                                .toSVG(size: 20, colour: appColors.black)
                                .toPad(end: 10)
                            : const SizedBox.shrink()
                      ].toRow(mainAxisAlignment: MainAxisAlignment.spaceBetween).toStretch()
                    ].toRow(mainAxisAlignment: MainAxisAlignment.start),
            );
          }).toPad(start: AppDimen.startMargin, end: AppDimen.startMargin, top: AppDimen.startMargin),
    );
  }

  Widget _getLogoutView(
      {Color? textColor,
      Color? iconColor,
      bool? showRoundedContainer,
      bool isshowBorder = false,
      double? logoutSpacing,
      bool? isEnableTurns}) {
    Widget logoutIcon = controller.subMenuListItems['logout']!['icon']
        .toString()
        .toSVG(colour: iconColor, quarterTurns: (isEnableTurns ?? true) && controller.isRTL() ? 2 : null);
    return [
      (showRoundedContainer ?? false)
          ? showRoundedRow(
              icon: controller.subMenuListItems['logout']!['icon'],
              description: controller.subMenuListItems['logout']!['name'],
              onTap: controller.subMenuListItems['logout']!['onTap'],
              height: 60,
              isEnableTurns: isEnableTurns ?? true,
              borderColor: appColors.myTripsDividerColor,
              iconBackgroundColor: appColors.white,
              arrowIcon: Assets.drawableFilterCalendarArrow,
              arrowIconColor: appColors.black,
              iconColor: appColors.black,
              showArrowIconCircle: true,
              arrowIconCircleColor: appColors.myTripsBGColor)
          : (logoutSpacing ?? 32).toHeight(),
      if (!(showRoundedContainer ?? false))
        toOnTap(
          onTap: controller.subMenuListItems['logout']!['onTap'],
          child: ConditionalParentWidget(
            condition: isshowBorder,
            parentBuilder: (Widget child) => _getTheme4borderContainer(child: child, overallpadd: 15),
            child: [
              if (isshowBorder) logoutIcon.toPad(end: 8.0),
              CustomText(
                text: controller.subMenuListItems['logout']!['name'],
                fontWeight: AppFont.regular,
                size: AppDimen.textSize_16,
                color: textColor,
              ).toPad(end: isshowBorder ? 0 : 8.0),
              if (!isshowBorder) logoutIcon,
            ].toRow(
                mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center),
          ),
        ),
      versionSpacing.toHeight(),
      [
        RichText(
          textAlign: TextAlign.center,
          softWrap: true,
          text: TextSpan(
            text: version.tr,
            style: TextStyle(
                fontFamily: AppFont.font,
                fontWeight: AppFont.regular,
                color: appColors.customTextColor,
                fontSize: AppDimen.textSize_12),
            children: <TextSpan>[
              const TextSpan(text: ' - ', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: versionCode, style: TextStyle(color: appColors.customTextColor)),
            ],
          ),
        ).toPad(top: 8),
      ].toRow()
    ].toColumn().toPad(bottom: 25);
  }

  Widget _getNavigationBarTitle(
      {required String title, double? titleTopPadding, double? titleBottomPadding}) {
    return CustomTitleText(
      text: title,
      fontWeight: AppFont.semiBold,
      size: AppDimen.textSize_18,
    ).toPad(horizontal: 26, top: 13 + (titleTopPadding ?? 0), bottom: 5 + (titleBottomPadding ?? 0));
  }

  void toShowLogoutDialog() {
    String title = label_title_log_out.tr;
    String content =
        'label_logout_dialog_content'.tr;
    showAlertDialog(
      contentText: content,
      onOkPressed: () {
        isShowLoader = false;
        controller.checkNetwork(controller.setLogout);
        Get.back();
      },
      okButtonContent: title,
      cancelButtonContent: label_cancel.tr,
      title: title,
      appLayout: AppLayout.profile,
    );
  }

  Map<String, String> getIcons() {
    switch (profileThemeType) {
      case 1:
        return {
          "owner": Assets.profileiconsCar,
          "reviews": Assets.profileiconsReviews,
          "settings": Assets.drawableSettings,
          "manage_your_account": Assets.drawableManageAccount,
          "privacy": Assets.profileiconsPrivacyPolicy,
          "payout": Assets.theme3PayoutPreference,
          "owner_dashboard": Assets.profileiconsCar,
          "owner_earnings": Assets.theme3PayoutPreference,
          "about": Assets.drawableAbout,
          "get_help": Assets.drawableGetHelp,
          "feedback": Assets.drawableGiveFeedback,
          "logout": Assets.drawableLogout,
          "transaction_history": Assets.theme1TransactionHistory,
          "service_plan": Assets.theme1ServicePlanTheme1,
          "service_plan_history": Assets.theme1ServicePlanHistoryTheme1
        };
      case 2:
        return {
          "owner": Assets.theme4ExploreCartype,
          "reviews": Assets.profileiconsReviews,
          "settings": Assets.drawableSettings,
          "edit_profile": Assets.profileiconsEditProfile,
          "manage_your_account": Assets.profileiconsManageYourAccount,
          "privacy": Assets.profileiconsPrivacy,
          "payout": Assets.theme3PayoutPreference,
          "owner_dashboard": Assets.theme4ExploreCartype,
          "owner_earnings": Assets.theme3PayoutPreference,
          "about": Assets.profileiconsAbout,
          "get_help": Assets.drawableGetHelp,
          "feedback": Assets.drawableGiveFeedback,
          "logout": Assets.profileiconsLogout,
          "transaction_history": Assets.theme1TransactionHistory,
          "service_plan": Assets.theme2ServicePlanTheme2,
          "service_plan_history": Assets.theme2ServicePlanHistoryTheme2
        };
      case 3:
        return {
          "owner": Assets.profileiconsOwner,
          "edit_profile": Assets.profileiconsEditProfile,
          "reviews": Assets.profileiconsReviews,
          "settings": Assets.drawableSettings,
          "manage_your_account": Assets.theme3ProfileiconsManageYourAccount,
          "privacy": Assets.theme3ProfileiconsPrivacy,
          "payout": Assets.theme3PayoutPreference,
          "owner_dashboard": Assets.profileiconsOwner,
          "owner_earnings": Assets.theme3PayoutPreference,
          "about": Assets.theme3ProfileiconsAbout,
          "get_help": Assets.profileiconsGetHelp,
          "feedback": Assets.profileiconsFeedback,
          "logout": Assets.theme3ProfileiconsLogout,
          "transaction_history": Assets.theme1TransactionHistory,
          "service_plan": Assets.theme3ServicePlanTheme3,
          "service_plan_history": Assets.theme3ServicePlanHistoryTheme3
        };
      default:
        return {
          "owner": Assets.profileSwitchOwner,
          "edit_profile": Assets.profileEditProfile,
          "reviews": Assets.profileiconsReviews,
          "settings": Assets.drawableSettings,
          "manage_your_account": Assets.profileManageAccount,
          "privacy": Assets.profilePrivacyPolicy,
          "payout": Assets.theme3PayoutPreference,
          "owner_dashboard": Assets.profileSwitchOwner,
          "owner_earnings": Assets.theme3PayoutPreference,
          "about": Assets.profileiconsAbout,
          "get_help": Assets.drawableGetHelp,
          "feedback": Assets.profileFeedback,
          "logout": Assets.profileLogout,
          "transaction_history": Assets.theme1TransactionHistory,
          "service_plan": Assets.theme4ServicePlanTheme4,
          "service_plan_history": Assets.theme4ServicePlanHistoryTheme4
        };
    }
  }

  Widget theme3NavigationBar() {
    List<Widget> customNavBarItems = [];
    controller.theme3ProfileItems.forEach((key, value) {
      for (var element in value) {
        customNavBarItems.add(showRoundedRow(
          icon: element['icon'],
          description: element['name'],
          onTap: element['onTap'],
          height: 60,
          borderColor: appColors.myTripsDividerColor,
          iconBackgroundColor: appColors.white,
          arrowIcon: Assets.drawableFilterCalendarArrow,
          arrowIconColor: appColors.black,
          iconColor: appColors.black,
          showArrowIconCircle: true,
          arrowIconCircleColor: appColors.myTripsBGColor,
        ));
      }
    });
    return customNavBarItems.toColumn();
  }

  Widget _getHorizantalNavigationView() {
    return IntrinsicHeight(
            child: [
      DottedBorderView(
          child: getTheme4HorizontalItem(
              profileIconType: 'owner',
              title: !appPreference.isOwner! ? switch_to_hosting.tr : switch_to_renter.tr),
          borderRadius: _profileBorderRadius,
          dottedlineColor: appColors.colorCommonLinkColor),
      18.toWidth(),
      getTheme4HorizontalItem(profileIconType: 'edit_profile', title: label_edit_profile.tr)
    ].toRow())
        .toPad(horizontal: AppDimen.startMargin);
  }

  Widget getTheme4HorizontalItem({required String profileIconType, required String title}) {
    return CustomBorderContainer(
      color: appColors.theme4AppBarBg,
      width: (deviceWidth / 2) - 35,
      onTap: controller.subMenuListItems[profileIconType]!['onTap'],
      borderRadius: _profileBorderRadius,
      body: [
        18.toHeight(),
        _profileIconsMap[profileIconType].toString().toSVG(colour: appColors.black),
        12.toHeight(),
        CustomText(
          text: title,
          textAlign: TextAlign.center,
        ),
        18.toHeight(),
      ].toColumn(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center),
    );
  }
}