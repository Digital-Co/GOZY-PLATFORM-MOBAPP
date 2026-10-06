part of 'home_item_detail.dart';

extension HomeItemDetailPart3 on HomeItemDetailState {
  Widget _getDescriptionText(
      {int? maxLines, ValueChanged<bool>? onTextOverflowed}) {
    return CustomOverflowFunctionText(
      text: controller.itemInfo.description.toString().trim(),
      fontWeight: AppFont.regular,
      maxLines: maxLines,
      size: AppDimen.textSize_16,
      onTextOverflowed: onTextOverflowed,
      maxWidth: deviceWidth - (2 * AppDimen.startMargin),
      overflow: maxLines != null ? TextOverflow.ellipsis : TextOverflow.visible,
    );
  }

  Widget _showBottomCheckAvailability() {
    String baseprice = '0';
    if (controller.itemInfo != null &&
        controller.itemInfo.listingData != null) {
      baseprice =
          double.parse(controller.itemInfo.listingData!.basePrice!.toString())
              .currencyConverted(
                  convertedCurrency:
                      controller.itemInfo.listingData!.currency!);
    }

    return CustomBottomItemShadowContainer(
      color: appColors.white,
      padding: pad(w: 20, top: 25, bottom: 20),
      body: SafeArea(
        top: false,
        child: [
          Obx(() => [
                    if (double.parse(baseprice) > 0)
                      getPriceTextView(
                        currencySymbol: controller.getCurrencySymbol(),
                        basePrice: baseprice,
                        selectedDates: controller.selectedDates,
                        instantBookIcon:
                            HomeItemDetailState._onViewCarInstantBookIcon,
                        bookingType: controller.itemInfo.bookingType,
                        themeType: HomeItemDetailState._onViewCarThemeType,
                        controller: controller,
                      ),
                    toOnTap(
                      onTap: () {
                        controller.homeItemDetailNavigator
                            ?.navigateScreen(HomeItemDetailScreen.Calendar, '');
                      },
                      child: [
                        5.toHeight(),
                        Obx(() => controller.selectedDates.isNotEmpty
                            ? IntrinsicWidth(
                                child: [
                                CustomUnderlineContainer(
                                    onTap: () {
                                      controller.homeItemDetailNavigator
                                          ?.navigateScreen(
                                              HomeItemDetailScreen.Calendar,
                                              '');
                                    },
                                    borderColor: appColors.secondaryColor,
                                    body: [
                                      20.toHeight(),
                                      CustomText(
                                          text: controller.availabilityFormat(
                                              DateList:
                                                  controller.selectedDates),
                                          size: AppDimen.textSize_12,
                                          color: appColors.secondaryColor),
                                      3.toWidth(),
                                      Assets.drawableDownArrow
                                          .toSVG(
                                              colour: appColors.secondaryColor)
                                          .toPad(top: 3),
                                    ].toRow(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start)),
                                30.toWidth()
                              ].toRow())
                            : const SizedBox.shrink()),
                      ].toColumn(),
                    )
                  ].toColumn(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center))
              .toStretch(),
          24.toWidth(),
          Obx(() => SizedBox(
                height: 50,
                child: PrimaryButton(
                  padding: pad(
                      w: controller.selectedDates.isNotEmpty &&
                              controller.itemInfo.bookingType == 'instant'
                          ? 10
                          : 10),
                  buttonText: HomeItemDetailState._onViewCarThemeType == 1 ||
                          HomeItemDetailState._onViewCarThemeType == 2
                      ? label_continue.tr
                      : label_book_now.tr,
                  isResizeText: true,
                  onTap: () {
                    controller.isDeliveryCheck.value = false;
                    if ((controller.appPreference.accessToken!.isNotEmpty &&
                            controller.itemInfo?.userId ==
                                controller.appPreference.userID) ||
                        controller.itemInfo?.listingData?.maxDaysNotice ==
                            null ||
                        controller.itemInfo?.listingData?.maxDaysNotice ==
                            'unavailable') {
                      controller.showToast(
                          error_msg_this_listing_not_available_to_book.tr);
                    } else if (controller.selectedDates.isNotEmpty &&
                        controller.selectedStartTime.value.isNotEmpty &&
                        controller.selectedEndTime.value.isNotEmpty &&
                        controller.appPreference.accessToken!.isNotEmpty) {
                      controller.checkNetwork(() =>
                          controller.getBillingCalculation(isNavigate: true));
                    } else if (controller
                        .appPreference.accessToken!.isNotEmpty) {
                      controller.homeItemDetailNavigator
                          ?.navigateScreen(HomeItemDetailScreen.Calendar, '');
                    } else {
                      controller.homeItemDetailNavigator
                          ?.navigateSigninScreen();
                    }
                  },
                ),
              ).toStretch(isExpanded: false))
        ].toRow(mainAxisAlignment: MainAxisAlignment.center),
      ),
    );
  }

  Widget _showCarReviewsInfo(
      {List<dynamic>? itemReviews,
      int? count,
      Widget? bottomSheetWidget,
      Color? iconColor,
      int? themeType,
      bool? isUserReview}) {
    debugPrint(
        "rateandreview: $rateandreview <-> ${itemReviews?.length} <-> ${controller.itemReviewsInfo.length}");
    itemReviews ??= controller.itemReviewsInfo;
    if (itemReviews.isEmpty) {
      return const SizedBox.shrink();
    }
    final int rateReviewCount = rateandreview?.$2 ?? 0;
    final int effectiveCount = count ?? rateReviewCount;
    String reviewsStr = '';
    debugPrint("oth itemreview: ${itemReviews[0]}");
    if (itemReviews[0] != null) {
      reviewsStr =
          '${effectiveCount} ${label_review.trPlural(reviewPlural.tr, effectiveCount).toLowerCase()}';
    }
    debugPrint(
        "rateandreview123: ${itemReviews.length} <-> ${controller.itemReviewsInfo.length}");
    isUserReview;
    final reviewList = controller.userReviewsInfo[controller.selectedProfileid];

    final reviewCount = count ??
        ((reviewList != null && reviewList.isNotEmpty)
            ? (controller.userReviewsCount[controller.selectedProfileid] ?? 0)
            : 0);
    return [
      toReviewList(
          scrollDirection: reviewCount != 0 ? Axis.horizontal : Axis.vertical,
          height: reviewCount != 0 ? 164 : null,
          itemWidth: reviewCount != 0 ? (deviceWidth - 110) : deviceWidth,
          reviewList: itemReviews,
          controller: controller,
          reviewType: 'listing',
          isDisableLoader: true,
          itemBuilder: (context, index) {
            return reviewSectionItem(
                    showMoreOnTap: () {
                      showCustomBottomSheet(
                        backButtonWidget: getBackIconWidget(),
                        titleWidget: GetBuilder<BottomSheetController>(
                          builder: (newController) => getRatingTextView(
                              icon: HomeItemDetailState._onViewCarRatingIcon,
                              iconColor: iconColor ?? appColors.black,
                              dotSize: 0,
                              textColor: appColors.customTextColor,
                              size: AppDimen.textSize_26,
                              rating: '',
                              reviewFontWeight: FontWeight.w600,
                              reviews: reviewsStr),
                        ),
                        contentWidget: (bottomSheetWidget ?? _getReviewList())
                            .toPad(horizontal: AppDimen.startMargin),
                      );
                    },
                    index: index,
                    itemReviews: itemReviews,
                    count: itemReviews?.length,
                    maxLines: 1)
                .toPad(end: index == ((itemReviews?.length ?? 0) - 1) ? 0 : 10);
          }).toResizeWidget(
          height: reviewCount != 0
              ? HomeItemDetailState._onViewCarThemeType == 1
                  ? 140
                  : 164
              : double.infinity),
      if (reviewCount != 0 &&
          ((itemReviews).length > 3 || (itemReviews.length > 3)))
        getShowMoreWidget(
                onTap: () {
                  showCustomBottomSheet(
                    backButtonWidget: getBackIconWidget(
                      backIcon: HomeItemDetailState._onProfileBackIcon,
                      themeType: HomeItemDetailState._onViewCarThemeType,
                    ),
                    titleWidget: GetBuilder<BottomSheetController>(
                      builder: (newController) => getRatingTextView(
                          icon: HomeItemDetailState._onViewCarRatingIcon,
                          iconColor:
                              HomeItemDetailState._onViewCarThemeType == 3
                                  ? appColors.textColor
                                  : null,
                          dotSize: 0,
                          iconSize: 20,
                          textColor: appColors.black,
                          size: AppDimen.textSize_22,
                          rating: '',
                          reviewFontWeight: FontWeight.w500,
                          reviews: (isUserReview ?? false)
                              ? '$reviewCount '
                                  '${label_review.trPlural(reviewPlural.tr, reviewCount)}'
                              : reviewsStr),
                    ),
                    contentWidget: (bottomSheetWidget ?? _getReviewList())
                        .toPad(horizontal: AppDimen.startMargin, top: 12),
                  );
                },
                showAllText:
                    '${"label_read_all".tr} ${(isUserReview ?? false) ? '$reviewCount ' '${label_review.trPlural(reviewPlural.tr, reviewCount)}' : reviewsStr}')
            .toPad(top: 10)
    ].toColumn();
  }

  Widget _showLocationInfo() {
    return toOnTap(
      onTap: () {
        showCustomBottomSheet(
          contentWidget: GetBuilder<BottomSheetController>(
              builder: (newController) => [
                    [
                      showGoogleMap(
                              initialLatLng: LatLng(controller.itemInfo.lat,
                                  controller.itemInfo.lng),
                              controller: controller,
                              borderRadius:
                                  HomeItemDetailState._onViewCarBorderRadius,
                              isBottomOnly: true,
                              circles: controller.getCircle(
                                  fillColor: appColors.black))
                          .toStretch(),
                      Center(
                        child: CustomTitleText(
                          text:
                              '${controller.itemInfo.title} in ${controller.getAddressText(itemInfo: controller.itemInfo)}',
                          textAlign: TextAlign.center,
                          size: AppDimen.textSize_16,
                        ).toPad(
                            horizontal: AppDimen.startMargin,
                            top: AppDimen.startMargin / 2),
                      ),
                      5.toHeight(),
                      Center(
                        child: CustomText(
                          text: exact_location_provided_after_booking.tr,
                          color: appColors.placeholderColor,
                          textAlign: TextAlign.center,
                          size: AppDimen.textSize_12,
                        ).toPad(
                            horizontal: AppDimen.startMargin,
                            bottom: AppDimen.startMargin / 2),
                      ),
                    ].toColumn().toFitToDeviceWidth(),
                    Align(
                        alignment: AlignmentDirectional.topStart,
                        child: getBackIconWidget(
                            iconBGColor: AppColors.staticwhite,
                            themeType: HomeItemDetailState._onViewCarThemeType,
                            iconColor: AppColors.staticblack,
                            backIcon: Assets.drawableSignupClose)),
                  ].toStack()),
        );
      },
      child: [
        CustomTitleText(
          text: label_neighborhood.tr,
          size: AppDimen.textSize_16,
        ).toPad(
          bottom: 13,
        ),
        [
          AbsorbPointer(
            absorbing: true,
            child: showGoogleMap(
              borderRadius: HomeItemDetailState._onViewCarBorderRadius,
              initialLatLng: LatLng(controller.itemInfo.lat ?? 0.0,
                  controller.itemInfo.lng ?? 0.0),
              controller: controller,
            ),
          ),
          CustomBorderContainer(
              height: 60,
              width: deviceWidth - 100,
              margin: pad(top: 20),
              padding: pad(w: 10),
              borderRadius: HomeItemDetailState._onViewCarBorderRadius,
              borderColor: appColors.greyBorderColor,
              color: appColors.white,
              alignment: AlignmentDirectional.center,
              body: [
                CustomText(
                  text:
                      controller.getAddressText(itemInfo: controller.itemInfo),
                  size: AppDimen.textSize_14,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                Center(
                  child: CustomText(
                    text: exact_location_provided_after_booking.tr,
                    maxLines: 1,
                    color: appColors.placeholderColor,
                    overflow: TextOverflow.ellipsis,
                    size: AppDimen.textSize_12,
                  ).toPad(horizontal: 12),
                ),
              ].toColumn(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
              )),
          CustomCounterContainer(
            height: 120,
            width: 120,
            margin: pad(top: 95, bottom: 20),
            color: (mapLocationCircleColor ?? appColors.secondaryColor)
                .withValues(alpha: 0.2),
            borderColor: appColors.primaryColor,
            alignment: AlignmentDirectional.center,
            body: SizedBox(),
          ),
        ]
            .toStack(alignment: AlignmentDirectional.topCenter)
            .toResizeWidget(width: deviceWidth, height: deviceHeight * 0.38),
      ].toColumn(mainAxisSize: MainAxisSize.min),
    );
  }

  Widget _showCarRulesInfo({int? iconView, bool? isIconSize}) {
    return GetBuilder<BottomSheetController>(builder: (ctrl) {
      List<Map<String, dynamic>> propertyInfoList = [];

      controller.itemInfo?.carRules.forEach((value) {
        Map<String, dynamic> propertyInfo = {};
        propertyInfo['itemPropertyText'] = value?.itemName ?? '';
        propertyInfo['iconWidget'] = _getCarItemIndicatorWidget();
        propertyInfoList.add(propertyInfo);
      });

      Widget carRulesWidget = itemDetailSpecificationList(
          title: label_car_rules.tr,
          propertyInfoList: propertyInfoList,
          indicatorIcon: carFeatureItemIcon,
          isShowMoreItems: true,
          controller: controller);
      return propertyInfoList.isNotEmpty
          ? _getsingleView(
              title: label_car_rules.tr,
              link: label_read.tr,
              bottomsheet: carRulesWidget.toPad(
                  horizontal: AppDimen.startMargin,
                  top: 15,
                  bottom: Platform.isIOS ? 20 : 0),
              iconView: iconView,
              isIconSize: isIconSize)
          : 0.toHeight();
    });
  }

  Widget _showCancellationPolicyInfo(
      {int? iconView, bool? isRemoveDivider, bool? isIconSize}) {
    return _getsingleView(
        title: label_cancellation_policy.tr,
        isIconSize: isIconSize,
        iconView: iconView,
        type: 'policy',
        link: '${controller.itemInfo?.listingData?.cancellation?.policyName}',
        bottomsheet: CancellationPolicyView(
          isShowContainerForSearchText: isShowContainerOnCancellationPolicy,
          containerColor: containerColor,
          isShowDot: isShowDot,
          controller: controller,
          cancellation: controller.itemInfo?.listingData?.cancellation,
          isShowIcon: isShowIconOnCancellationPolicy,
          icon: isShowIconOnCancellationPolicy ? carFeatureItemIcon : null,
          isRemoveDivider: isRemoveDivider,
        ).toPad(top: 15, bottom: Platform.isIOS ? 20 : 5));
  }

  Widget _showAvailabilityInfo({int? iconView, bool? isIconSize}) {
    return controller.itemInfo?.userId != controller.appPreference.userID
        ? _getsingleView(
            isIconSize: isIconSize,
            title: label_availability.tr,
            iconView: iconView,
            link: label_check_dates.tr,
            type: 'calendar',
          )
        : 0.toHeight();
  }

  Widget _showContactHostInfo(
      {int? iconView, String? linkText, bool? isIconSize}) {
    return controller.itemInfo?.userId != controller.appPreference.userID
        ? _getsingleView(
                isIconSize: isIconSize,
                title: '${label_contact.tr} ${label_owner.tr.toLowerCase()}',
                link: label_message.tr,
                iconView: iconView,
                type: 'contacthost')
            .toPad(
                bottom: controller.similiarlistingInfo.isEmpty
                    ? 100 + bottomViewPadding
                    : 0)
        : 0.toHeight();
  }

  Widget _showSimilarList() {
    double itemWidth = (deviceWidth - 50.0) / 1.2;
    return controller.similiarlistingInfo.isNotEmpty
        ? [
            CustomTitleText(
              text: label_similar_car.tr,
              size: AppDimen.textSize_18,
            ).toPad(
              bottom: 12,
            ),
            toHorizontalListingView(
              isDisableLoader: false,
              controller: controller,
              isLoading: false,
              key: const PageStorageKey<String>('similarlisthorizontal'),
              instantBookIcon: HomeItemDetailState._onViewCarInstantBookIcon,
              themeType: HomeItemDetailState._onViewCarThemeType ?? 1,
              borderRadius: HomeItemDetailState._onViewCarBorderRadius ?? 0,
              count: controller.similiarlistingInfo.length,
              itemWidth: itemWidth,
              itemHeight: HomeItemDetailState._onViewCarThemeType == 4
                  ? 330
                  : HomeItemDetailState._onViewCarThemeType == 1
                      ? 365
                      : null,
              type: 'Similar',
              isShowShimmer: false,
              Listings: controller.similiarlistingInfo,
              onListDetailTap: (recommendResults) {
                controller.homeItemDetailNavigator?.navigateScreen(
                  HomeItemDetailScreen.itemDetail,
                  [recommendResults, "Similar123"],
                );
              },
            ).toPad(bottom: 100 + bottomViewPadding)
          ].toColumn()
        : const SizedBox.shrink();
  }

  Widget _getsingleView(
      {required String title,
      required String link,
      Widget? bottomsheet,
      String? type,
      int? iconView,
      bool? isIconSize}) {
    print("icon Sized::::${isIconSize}");
    return toOnTap(
      onTap: () {
        print("we called");
        if (type == 'contacthost') {
          print("Contact host Screen");
          if (controller.appPreference.accessToken!.isEmpty) {
            controller.homeItemDetailNavigator?.navigateSigninScreen();
          } else if (controller.itemInfo?.listingData?.maxDaysNotice == null ||
              controller.itemInfo?.listingData?.maxDaysNotice ==
                  'unavailable') {
            controller
                .showToast(error_msg_this_listing_not_available_to_book.tr);
          } else {
            print("unwanted Navigate to Contact host Screen");
            controller.homeItemDetailNavigator
                ?.navigateScreen(HomeItemDetailScreen.ContactHost, '');
          }
        } else if (type == 'calendar') {
          if (controller.itemInfo?.listingData?.maxDaysNotice == null ||
              controller.itemInfo?.listingData?.maxDaysNotice ==
                  'unavailable') {
            controller
                .showToast(error_msg_this_listing_not_available_to_book.tr);
          } else {
            controller.homeItemDetailNavigator
                ?.navigateScreen(HomeItemDetailScreen.Calendar, '');
          }
        } else {
          showCustomBottomSheet(
            contentWidget: bottomsheet ?? 0.toHeight(),
            backButtonWidget: getBackIconWidget(
              themeType: appLayoutMap[AppLayout.viewCar]?.themeType,
              backIcon: Assets.drawableSignupClose,
            ),
            title: title,
          );
        }
      },
      child: [
        CustomText(text: title),
        Spacer(),
        if (iconView == 1 || iconView == 2)
          CustomText(
            text: link,
            color: appColors.secondaryColor,
          ),
        if (iconView != 2 && HomeItemDetailState._onViewCarBackIcon != null)
          HomeItemDetailState._onViewCarBackIcon!
              .toSVG(
                  colour: appColors.secondaryColor,
                  isReverseRotation: true,
                  size: isIconSize ?? false ? 12 : 15)
              .toPad(start: 5),
      ].toRow(),
    );
  }

  Widget _showOverallCarRatingWidget({Color? iconColor}) {
    debugPrint("_showOverallCarRatingWidget: $rateandreview");

    return (rateandreview.$1 != null && rateandreview.$2 != 0)
        ? getRatingTextView(
            size: AppDimen.textSize_16,
            icon: HomeItemDetailState._onViewCarRatingIcon,
            rating: rateandreview.$1,
            reviews:
                '${rateandreview.$2} ${label_review.trPlural(reviewPlural.tr, rateandreview.$2)}',
            textColor: appColors.customTextColor,
            iconColor: iconColor)
        : 0.toHeight();
  }

  dynamic _getCarItemIndicatorWidget() {
    if (carFeatureItemIcon != null && carFeatureItemIcon != 'dotindicator') {
      return carFeatureItemIcon;
    } else if (carFeatureItemIcon != null &&
        carFeatureItemIcon == 'dotindicator') {
      return const SizedBox(
        width: 6,
        height: 6,
      );
    } else {
      return 0.toHeight();
    }
  }

  void _showHostInfo({dynamic hostItem, int? profileId, required bool isHost}) {
    controller.userreviewListScrollController = ScrollController();
    controller.userReviewListpage.value = 1;
    controller.selectedProfileid = profileId;
    controller.checkNetwork(controller.getUserReviews);
    debugPrint(
        "controller.userReviewsInfo: ${controller.userReviewsInfo[controller.selectedProfileid]}");
    showCustomBottomSheet(
        backButtonWidget: GetBuilder<BottomSheetController>(
          builder: (newController) => getBackIconWidget(
            backIcon: HomeItemDetailState._onProfileBackIcon,
            themeType: appLayoutMap[AppLayout.profile]?.themeType,
          ),
        ),
        contentWidget: GetBuilder<HomeItemDetailController>(
          builder: (newController) => hostInfoItem(
              hostItem: hostItem,
              profileId: profileId,
              profileIconType:
                  appLayoutMap[AppLayout.profile]?.profileIconType ?? '',
              controller: controller,
              ownerNameColor: ownerNameColor,
              isHost: isHost,
              isBackarrow: true,
              isNotEmptyUserReviews:
                  controller.userReviewsInfo[controller.selectedProfileid] !=
                          null &&
                      controller.userReviewsInfo[controller.selectedProfileid]!
                          .isNotEmpty,
              userReviewList: _showCarReviewsInfo(
                isUserReview: true,
                itemReviews:
                    controller.userReviewsInfo[controller.selectedProfileid],
                count:
                    controller.userReviewsCount[controller.selectedProfileid],
                bottomSheetWidget: _getUserReviewList(),
              ),
              borderRadius: HomeItemDetailState._onViewCarBorderRadius,
              reportUseronTap: () {
                _reportAboutUser();
              }),
        ),
        titleFontSize: AppDimen.textSize_18,
        sheetCloseListener: () {
          controller.profileIdList
              .removeAt(controller.profileIdList.length - 1);
          if (controller.profileIdList.isNotEmpty) {
            controller.selectedProfileid = controller.profileIdList.last;
            controller.userReviewListpage.value = 1;
            controller.userReviewListpage.refresh();
            WidgetsBinding.instance.addPostFrameCallback((_) {
              WidgetsFlutterBinding.ensureInitialized().performReassemble();
            });
          } else {
            controller.userReviewsInfo.clear();
          }
        });
  }

  void showHostInfoFromProfileTap(
      {dynamic hostItem, int? profileId, required bool isHost}) {
    _showHostInfo(hostItem: hostItem, profileId: profileId, isHost: isHost);
  }

  Widget _getUserReviewList({bool? isAddListener}) {
    controller.userreviewListScrollController = ScrollController();
    return Obx(() {
      return toReviewList(
          reviewListScrollController: controller.userreviewListScrollController,
          reviewList: controller.userReviewsInfo[controller.selectedProfileid],
          reviewType: 'ListDetail',
          reviewsCount: controller.userReviewsInfo.isNotEmpty &&
                  controller.userReviewsInfo[controller.selectedProfileid!] !=
                      null &&
                  controller.userReviewsInfo[controller.selectedProfileid!]!
                      .isNotEmpty
              ? (controller.userReviewsInfo[controller.selectedProfileid!]?[0]
                  .yourReviewsCount)
              : null,
          isAddListener: isAddListener,
          onApiFunction: controller.getUserReviews,
          controller: controller,
          itemBuilder: (context, index) {
            return reviewSectionItem(
                    index: index,
                    itemReviews: controller
                        .userReviewsInfo[controller.selectedProfileid],
                    maxLines: 2)
                .toPad(bottom: 15);
          },
          currentPage: controller.userReviewListpage,
          onSelectedHost: (dynamic hostItem) {
            _showHostInfo(
                hostItem: hostItem,
                profileId: hostItem?.authorData?.profileId,
                isHost: false);
          });
    });
  }

  Widget _getReviewList() {
    return Obx(() => toReviewList(
        reviewListScrollController: controller.reviewListScrollController,
        reviewList: controller.itemReviewsInfo,
        reviewsCount: controller.itemInfo.reviewsCount,
        reviewType: 'ListDetail',
        onApiFunction: controller.getPropertyReviews,
        controller: controller,
        itemBuilder: (context, index) {
          return reviewSectionItem(
                  index: index,
                  itemReviews: controller.itemReviewsInfo,
                  maxLines: 2)
              .toPad(bottom: 15);
        },
        currentPage: controller.propertyListpage,
        onSelectedHost: (dynamic hostItem) {
          _showHostInfo(
              hostItem: hostItem,
              profileId: hostItem?.authorData?.profileId,
              isHost: false);
        }));
  }

  void _reportAboutUser() {
    if (controller.appPreference.accessToken != null &&
        controller.appPreference.accessToken!.isNotEmpty) {
      controller.selectedReportReason.value = -1;
      showCustomBottomSheet(
        backButtonWidget: GetBuilder<BottomSheetController>(
          builder: (newController) => getBackIconWidget(
            backIcon: overALLAppLayoutModel!.backIcon,
            themeType: appLayoutMap[AppLayout.profile]?.themeType,
          ),
        ),
        contentWidget: ReportUserView(
            controller: controller,
            selectedReportReason: controller.selectedReportReason,
            ReportReasonList: controller.reportReasonList,
            onTap: () {
              if (controller.selectedReportReason.value != -1) {
                controller.checkNetwork(controller.reportUser);
              } else {
                controller.showToast(error_msg_not_select_option.tr);
              }
            }).toPad(top: 10),
        titleFontSize: AppDimen.textSize_22,
      );
    } else {
      controller.homeItemDetailNavigator?.navigateSigninScreen();
    }
  }

  void _showShareDialog() {
    Get.dialog(
      barrierDismissible: false,
      GetBuilder<BottomSheetController>(
        builder: (newController) => HomeItemShareDialog(
          listTitle: controller.itemInfo.title,
          imageUrl: imgListingMedium + controller.itemInfo.listPhotoName,
          address: _itemAddress,
          TopSectionBGColor: _shareView_TopSectionBGColor,
          BottomSectionBGColor: _shareView_BottomSectionBGColor,
          IconBGColor: controller.isDarkMode()
              ? AppColors.staticwhite
              : _shareView_IconBGColor,
          isBottomSectionRounded: _shareView_isBottomSectionRounded,
          isShowDivider: _shareView_isShowDivider,
          itemId: controller.itemInfo?.id,
          controller: controller,
          borderRadius: HomeItemDetailState._onViewCarBorderRadius,
          insideImageBorderRadius: _insideImageBorderRadius,
        ),
      ),
    );
  }

  Widget reviewSectionItem(
      {required int index,
      List<dynamic>? itemReviews,
      int? count,
      int? maxLines,
      Function? showMoreOnTap}) {
    dynamic itemReviewsInfo =
        itemReviews?[index] ?? controller.itemReviewsInfo[index];

    return reviewListItem(
      itemReviewsInfo: itemReviewsInfo,
      maxLines: maxLines,
      showMoreOnTap: showMoreOnTap,
      width: count != null ? (deviceWidth - 110) : deviceWidth,
      onSelectedHost: (dynamic hostItem) {
        if (hostItem?.toJson()['authorData'] != null) {
          _showHostInfo(
              hostItem: hostItem,
              profileId: hostItem?.authorData?.profileId,
              isHost: false);
        }
      },
    );
  }
}

Widget getPriceTextView(
    {String? currencySymbol,
    dynamic basePrice,
    dynamic controller,
    RxList<DateTime>? selectedDates,
    double? listingPriceTextSize,
    String? bookingType,
    String? instantBookIcon,
    GestureTapCallback? onTaponOneTotal,
    Widget? textWidget,
    int? themeType}) {
  debugPrint("defaultfont: $basePrice----$currencySymbol");
  return textWidget ??
      [
        RichText(
          textDirection: TextDirection.ltr,
          textAlign: intl.Bidi.isRtlLanguage(Get.locale?.languageCode)
              ? TextAlign.end
              : TextAlign.start,
          text: TextSpan(
            style: TextStyle(
              color: appColors.customTextColor,
            ),
            children: [
              if (bookingType == 'instant')
                WidgetSpan(
                  child: CustomContainer(
                      padding: pad(end: 4),
                      body: (instantBookIcon ?? Assets.drawableInstantBook)
                          .toSVG(size: 18)),
                ),
              if (Platform.isAndroid) ...{
                ...TextSpan(
                    text: double.parse(basePrice.toString()) > 0
                        ? basePrice
                            .toString()
                            .toNumberFormat(symbol: currencySymbol!)
                        : '',
                    style: TextStyle(
                      fontWeight: AppFont.bold,
                      fontFamily: AppFont.font,
                      fontSize: themeType == 1
                          ? AppDimen.textSize_20
                          : AppDimen.textSize_20,
                    )).toCurrencyTextSpan(symbol: currencySymbol!)
              },
              if (Platform.isIOS)
                TextSpan(
                    text: double.parse(basePrice.toString()) > 0
                        ? basePrice
                            .toString()
                            .toNumberFormat(symbol: currencySymbol!)
                        : '',
                    style: TextStyle(
                      fontWeight: AppFont.bold,
                      fontFamily: AppFont.font,
                      fontSize: themeType == 1
                          ? AppDimen.textSize_20
                          : AppDimen.textSize_20,
                    )),
              WidgetSpan(
                child: CustomContainer(
                  body: CustomText(
                    text:
                        ' / ${double.parse(basePrice.toString()) > 0 ? label_day.tr : ''}',
                    fontWeight: AppFont.regular,
                    textDirection: TextDirection.ltr,
                    textAlign: intl.Bidi.isRtlLanguage(Get.locale?.languageCode)
                        ? TextAlign.end
                        : TextAlign.start,
                    size: AppDimen.textSize_14,
                    color: appColors.customTextColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (themeType != null && selectedDates!.isEmpty)
          toOnTap(
            onTap: () {
              controller.homeItemDetailNavigator
                  ?.navigateScreen(HomeItemDetailScreen.Calendar, '');
            },
            child: IntrinsicWidth(
                child: [
              [
                CustomText(
                  text: label_trip_date.tr,
                  color: appColors.secondaryColor,
                  size: AppDimen.textSize_14,
                ),
                3.toWidth(),
                Assets.drawableDownArrow
                    .toSVG(colour: appColors.secondaryColor)
                    .toPad(top: 3),
              ].toRow(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center),
              if (themeType != 3)
                CustomUnderlineContainer(
                  borderColor: appColors.secondaryColor,
                )
            ].toColumn()),
          )
      ].toColumn();
}
