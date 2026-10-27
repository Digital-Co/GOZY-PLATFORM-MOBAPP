import 'dart:async';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:ferry/ferry.dart' show OperationResponse;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:gozy/app.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/graphql/Reviews/__generated__/Reviews.data.gql.dart';
import 'package:gozy/graphql/Reviews/__generated__/Reviews.req.gql.dart';
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.data.gql.dart';
import 'package:gozy/graphql/__generated__/listing_fragment.data.gql.dart';
import 'package:gozy/graphql/__generated__/listing_fragment.req.gql.dart';
import 'package:gozy/graphql/__generated__/schema.schema.gql.dart';
import 'package:gozy/graphql/listingOptions/__generated__/get_listing_options.data.gql.dart';
import 'package:gozy/graphql/listingOptions/__generated__/get_listing_options.req.gql.dart';
import 'package:gozy/graphql/booking/validatePromocode/__generated__/validate_promo_code.data.gql.dart';
import 'package:gozy/graphql/booking/validatePromocode/__generated__/validate_promo_code.req.gql.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/home/home_controller.dart';
import 'package:gozy/screens/views/static_page/not_found.dart';
import 'package:gozy/utils/common_api_controller.dart';
import 'package:gozy/utils/booking_options.dart';
import 'package:gozy/utils/booking_options_i18n.dart';
import 'package:gozy/utils/duration_discount.dart';
import 'package:gozy/utils/text_editing_controller.dart';
import 'package:gozy/widgets/common_extension_functions.dart';

import '../../../config/client.dart';
import '../../../graphql/ListDetail/__generated__/ListingDetails.data.gql.dart';
import '../../../graphql/ListDetail/__generated__/ListingDetails.req.gql.dart';
import '../../../graphql/booking/getBillingCalculation/__generated__/get_billing_calculation.data.gql.dart';
import '../../../graphql/booking/getBillingCalculation/__generated__/get_billing_calculation.req.gql.dart';
import '../../../resources/app_lang.dart';
import '../../../resources/app_layout.dart';
import 'home_item_detail_navigator.dart';

class HomeItemDetailController extends BaseController {
  var rxIsImageZoom = ReactiveVariable("rxIsImageZoom", false);
  List<Map<String, dynamic>> hostListInfo = [];
  List<Map<String, dynamic>> minMaxDaysList = [];
  HomeItemDetailNavigator? homeItemDetailNavigator;
  dynamic itemInfo;
  Map<String, dynamic> _itemInfoMap = {};
  bool isNavigateToPaymentType = false;
  /// Options chosen by the renter. Nothing is selected by default.
  final BookingOptionSelection optionSelection = BookingOptionSelection();
  final RxInt optionSelectionTick = 0.obs;
  final CustomTextEditingController deliveryLocationController =
      CustomTextEditingController();

  /// Set once the renter tried to continue: shows the delivery location error.
  final RxBool optionsValidationRequested = false.obs;

  /// False for a pre-approved booking (no options there).
  bool isOptionsAllowed = true;
  List<BookingOption>? _refreshedOptions;
  Timer? _optionsRecalcTimer;
  RxBool isPromoCodeTyping = false.obs;
  RxBool isPromoApplied = false.obs;
  bool isRemoveClicked = false;
  bool isPreview = false;
  RxString selectedStartTime = "".obs;
  RxString selectedEndTime = "".obs;
  RxDouble totalValue = 0.0.obs;
  String? threadId;
  List<dynamic> itemReviewsInfo = [];
  List<dynamic> reportReasonList = [];
  double startTime24Four = 0.0;
  double endTime24Four = 0.0;
  Map<DateTime, String> blockedDatesMap = {};
  static Map<LayoutCarIcons, String>? carfeatureIconsList;

  Map<int, List<dynamic>> userReviewsInfo = {};
  Map<int, int> userReviewsCount = {};
  List<dynamic> similiarlistingInfo = [];
  List<int> profileIdList = [];
  RxInt propertyListpage = 1.obs;
  RxInt selectedReportReason = (-1).obs;
  RxInt userReviewListpage = 1.obs;
  int? selectedProfileid;
  ScrollController reviewListScrollController = ScrollController();
  ScrollController userreviewListScrollController = ScrollController();
  var confirmpayMessageController = CustomTextEditingController();
  var licenceNoController = CustomTextEditingController();
  var firstNameController = CustomTextEditingController();
  var lastNameController = CustomTextEditingController();
  var dateOfBirthController = CustomTextEditingController();
  var countryController = CustomTextEditingController();
  var couponCodeController = CustomTextEditingController();
  var rxAboutPlaceShowMore = ReactiveVariable("rxAboutPlaceShowMore", false);
  RxList<DateTime> selectedDates = <DateTime>[].obs;
  List<DateTime> contactHostDates = <DateTime>[];
  CustomFocusNode? focusNode = CustomFocusNode();
  GgetPropertyReviewsData? _propertyReviewsDataInfo;

  Rxn<GgetBillingCalculationData> billingCalcuationData =
      Rxn<GgetBillingCalculationData>();
  var rxUpdatedGuestCount = ReactiveVariable('rxUpdatedGuestCount', 1);
  var rxPagerIndex = ReactiveVariable("rxPagerIndex", 0);
  GviewListingShortFragmentData? _shortFragmentData;
  bool isForceUpdate = false;
  int _currentBillingRequestId = 0;

  void createCarFeatureListGridInfo() {
    String carType = itemInfo.carType?.toString() ?? '';
    String make = itemInfo.make?.toString() ?? '';
    String model = itemInfo.model?.toString() ?? '';
    String year = itemInfo.year?.toString() ?? '';
    String odometer = itemInfo.odometer?.toString() ?? '';
    hostListInfo.clear();
    hostListInfo.add(getitem(
        feature: carType,
        placeHolerImg: carfeatureIconsList?[LayoutCarIcons.cartype],
        title: label_car_type.tr));
    hostListInfo.add(getitem(
        feature: make,
        placeHolerImg: carfeatureIconsList?[LayoutCarIcons.make],
        title: label_make.tr));
    hostListInfo.add(getitem(
        feature: model,
        placeHolerImg: carfeatureIconsList?[LayoutCarIcons.model],
        title: label_model.tr));
    hostListInfo.add(getitem(
        feature: year,
        placeHolerImg: carfeatureIconsList?[LayoutCarIcons.year],
        title: label_year.tr));
    hostListInfo.add(getitem(
        feature:
            App().getTransmissionContent(transmission: itemInfo.transmission),
        placeHolerImg: carfeatureIconsList?[LayoutCarIcons.transmission],
        title: label_transmission.tr));
    hostListInfo.add(getitem(
        feature: odometer,
        placeHolerImg: carfeatureIconsList?[LayoutCarIcons.odometer],
        title: label_odometer.tr));

    minMaxDaysList.clear();
    getBlockedDates();

    homeItemDetailNavigator?.updateitemPhotos();
    update();
  }

  Map<String, dynamic> getitem(
      {required String feature,
      String? featureImg,
      String? placeHolerImg,
      String? title}) {
    Map<String, dynamic> itemmap = {};
    itemmap['itemName'] = feature;
    itemmap['image'] = featureImg;
    itemmap['title'] = title;
    itemmap['placeholder'] = placeHolerImg;
    return itemmap;
  }

  void gethomeItemDetail() {
    _shortFragmentData = getShortListingFragmentData(id: itemInfo.id).$1;
    final params = GviewListingDetailsReq((b) => b
      ..vars.listId = itemInfo.id
      ..vars.preview = isPreview
      ..vars.build());

    FerryLoggerClient.makeRequest(params, this, gethomeItemDetail,
            isToGet400Message: true)
        ?.then((res) {
      GviewListingDetailsData viewListingInfo =
          res.data as GviewListingDetailsData;

      if (viewListingInfo.viewListing?.status == 400) {
        isShowLoader = false;
        HomeController homeController = Get.find();
        isLoading.value = false;
        homeController.isLoading.value = false;
        debugPrint(" listingsadf ---> ${params.vars.toString()}");
        Get.to(() => NotFound(
              errorMessage: viewListingInfo.viewListing?.errorMessage,
            ))?.then((value) {
          Get.until((route) => route.settings.name == '/guestHomePage');
        });
        return;
      }
      var itemReqData = getShortListingFragmentData(id: itemInfo.id);
      const deepEq = DeepCollectionEquality();
      isForceUpdate = !(deepEq.equals(_shortFragmentData, itemReqData.$1));
      _itemInfoMap = viewListingInfo.viewListing!.results?.toJson() ?? {};
      if (isForceUpdate) {
        GviewListingShortFragmentData? data =
            GviewListingShortFragmentData.fromJson(_itemInfoMap);
        FerryLoggerClient.client?.cache.writeFragment(itemReqData.$2, data);
      }

      checkNetwork(getPropertyReviews);
    });
  }

  void validatePromoCode() {
    final params = GvalidatePromoCodeReq((b) => b
      ..vars.code = couponCodeController.Ttext
      ..vars.build());
    FerryLoggerClient.makeRequest(params, this, validatePromoCode)?.then((res) {
      GvalidatePromoCodeData result = res.data as GvalidatePromoCodeData;
      if (result.validatePromoCode?.status == 200) {
        isPromoApplied.value = true;
        getBillingCalculation(isFromPromo: true).then((value) {
          value;
        });
      } else if (result.validatePromoCode?.status == 400) {
        showToast(result.validatePromoCode!.errorMessage ?? "");
      } else {
        showToast(error_msg_oops_something_went_wrong_pls_try_again.tr);
      }
    });
  }

  void getPropertyReviews() {
    final getPropertyReviewsReq = GgetPropertyReviewsReq((b) => b
      ..vars.listId = itemInfo.id
      ..vars.currentPage = propertyListpage.value
      ..vars.build());
    debugPrint("getPropertyReviews req: ${getPropertyReviewsReq.toJson()}");
    var itemreqdata = getListDetailFragmentData(id: itemInfo.id);
    FerryLoggerClient.makeRequest(
            getPropertyReviewsReq, this, getPropertyReviews,
            isViewErrorMessage: false, isToGet400Message: true)
        ?.then((res) {
      _propertyReviewsDataInfo = res.data as GgetPropertyReviewsData;

      if (_propertyReviewsDataInfo?.getPropertyReviews?.status == 200) {
        List<dynamic> propertylist =
            _propertyReviewsDataInfo?.getPropertyReviews!.results!.toList() ??
                [];
        if (propertyListpage == 1) {
          itemReviewsInfo = propertylist;
        } else {
          itemReviewsInfo = itemReviewsInfo + propertylist;
        }
        propertyListpage.value++;
        _itemInfoMap['reviewsCount'] =
            _propertyReviewsDataInfo?.getPropertyReviews!.count;
      }
      bool wishliststatus = itemreqdata.$1?.wishListStatus ?? false;
      if (wishliststatus) {
        wishlistedIds.add(itemreqdata.$1?.id ?? 1);
      } else {
        wishlistedIds.remove(itemreqdata.$1?.id ?? 1);
      }
      itemInfo = GviewListingDetailsFragmentData.fromJson(_itemInfoMap);
      isLoading.value = false;
      if (isForceUpdate) Get.forceAppUpdate();
      checkNetwork(getSimilarListing);
    });
  }

  void getSimilarListing() {
    final getSimilarListingReq = GgetSimilarListingReq((b) => b
      ..vars.listId = itemInfo.id
      ..vars.lat = itemInfo.lat
      ..vars.lng = itemInfo.lng
      ..vars.build());
    FerryLoggerClient.makeRequest(
      getSimilarListingReq,
      this,
      getSimilarListing,
    )?.then((res) {
      GgetSimilarListingData similarListingData =
          res.data as GgetSimilarListingData;
      try {
        similiarlistingInfo =
            similarListingData.getSimilarListing!.results!.toList();
        createCarFeatureListGridInfo();
        if (appPreference.accessToken != null &&
            appPreference.accessToken!.isNotEmpty) {
          checkNetwork(getReportTypelist);
        }
      } catch (e, stack) {
        debugPrint('getSimilarListing failed: $e\n$stack');
      } finally {
        isLoading.value = false;
        Get.forceAppUpdate();
      }
    });
  }

  void getUserReviews() {
    final getuserReviewsReq = GuserReviewsReq((b) => b
      ..vars.profileId = selectedProfileid
      ..vars.currentPage = userReviewListpage.value
      ..vars.build());
    debugPrint("userReviews getUserReviews: $getuserReviewsReq");
    FerryLoggerClient.makeRequest(getuserReviewsReq, this, getUserReviews,
            isViewErrorMessage: false)
        ?.then((res) {
      GuserReviewsData userReviewsDataInfo = res.data as GuserReviewsData;
      debugPrint(
          "userReviews count: ${userReviewsDataInfo.userReviews!.count}");

      List<dynamic> userReviewslist =
          userReviewsDataInfo.userReviews!.results!.toList();

      if (userReviewListpage.value == 1) {
        userReviewsInfo[selectedProfileid!] = userReviewslist;
        userReviewsCount[selectedProfileid!] =
            userReviewsDataInfo.userReviews!.count ?? 0;
        profileIdList.add(selectedProfileid!);
      } else {
        userReviewsInfo[selectedProfileid!] =
            (userReviewsInfo[selectedProfileid!]! + userReviewslist);
      }
      userReviewListpage.value++;
      isLoading.value = false;
      update();
    });
  }

  (int?, int?) getRating() {
    int? starRating, reviewCount;
    if (_propertyReviewsDataInfo != null) {
      if (itemInfo.reviewsStarRating != null &&
          itemInfo.reviewsStarRating >= 1 &&
          itemInfo.reviewsCount != null &&
          itemInfo.reviewsCount >= 1) {
        starRating = int.parse(
            (itemInfo.reviewsStarRating! / itemInfo.reviewsCount!)
                .toStringAsFixed(0));
      }
      reviewCount = _propertyReviewsDataInfo?.getPropertyReviews?.count;
    } else {
      starRating = itemInfo.reviewsStarRating;
      reviewCount = itemInfo.reviewsCount;
    }
    debugPrint("getRating: $starRating---$reviewCount");
    if (starRating == null || starRating == 0) {
      return (starRating, reviewCount);
    }
    String titleText =
        '$starRating / ${label_review.trPlural(reviewPlural.tr, reviewCount)} ($reviewCount)';
    debugPrint("getRating: titleText $titleText}");
    return (starRating, reviewCount);
  }

  @override
  void onResumed() {
    isLoading.value = false;
    super.onResumed();
  }

  void reportUser() {
    final getreportUserReq = GCreateReportUserReq((b) => b
      ..vars.profileId = selectedProfileid
      ..vars.reporterId = appPreference.userID
      ..vars.reportType =
          reportReasonList[selectedReportReason.value].reportType
      ..vars.build());
    FerryLoggerClient.makeRequest(getreportUserReq, this, reportUser)
        ?.then((res) {
      GCreateReportUserData createReportUserData =
          res.data as GCreateReportUserData;
      if (createReportUserData.createReportUser?.status == 200) {
        selectedReportReason.value = -1;
        showToast(success_msg_user_reported.tr, 3);
        Get.back();
      }
      isLoading.value = false;
    });
  }

  void getReportTypelist() {
    getReportTypes().then((value) {
      reportReasonList =
          createReportUserData?.getAllReportType!.results!.toList() ?? [];
      debugPrint("createReportUserData status: $reportReasonList");
      isLoading.value = false;
      Get.forceAppUpdate();
    });
  }

  Future<GgetBillingCalculationData?> getBillingCalculation(
      {bool isNavigate = false,
      List<DateTime>? dates,
      String? startTimeVal,
      String? endTimeVal,
      bool updateState = true,
      bool isFromPromo = false,
      bool showLoader = true}) async {
    List<DateTime> finalDates = dates ?? selectedDates;
    String finalStartTime = startTimeVal ?? selectedStartTime.value;
    String finalEndTime = endTimeVal ?? selectedEndTime.value;

    if (finalDates.isEmpty || finalStartTime.isEmpty || finalEndTime.isEmpty) {
      return null;
    }

    String startDate =
        finalDates.first.convert_MDY(format: commonDateFormat).$1;
    String endDate = finalDates.last.convert_MDY(format: commonDateFormat).$1;
    double startTime = convertTo24Hour(finalStartTime);
    double endTime = convertTo24Hour(finalEndTime);

    print("StartTime--> $finalStartTime --> $startTime");
    print("EndTime--> $finalEndTime --> $endTime");
    final getBillingCalculationReq = GgetBillingCalculationReq((b) {
      b.vars.listId = itemInfo.id;
      b.vars.startDate = startDate;
      b.vars.endDate = endDate;
      b.vars.startTime = startTime;
      b.vars.endTime = endTime;
      final optionInputs = optionInputsForRequest(onlyReady: true);
      if (optionInputs.isNotEmpty) {
        b.vars.options.replace(optionInputs);
      }
      b.vars.convertCurrency = appPreference.preferredCurrency;
      b.vars.guests = rxUpdatedGuestCount.value;
      if (isPromoApplied.value && !isRemoveClicked) {
        b.vars.promoCode = couponCodeController.Ttext;
      }
      b.vars.build();
    });

    log("_getBillingCalculationReq: ---$isNavigateToPaymentType --- ${optionSelection.ids}");
    final int requestId = ++_currentBillingRequestId;
    if (!showLoader && updateState) isOptionsRecalculating.value = true;

    OperationResponse<dynamic, dynamic>? res;
    try {
      var pending = FerryLoggerClient.makeRequest(
          getBillingCalculationReq,
          this,
          () => getBillingCalculation(
                isNavigate: isNavigate,
                dates: dates,
                startTimeVal: startTimeVal,
                endTimeVal: endTimeVal,
                updateState: updateState,
                isFromPromo: isFromPromo,
                showLoader: showLoader,
              ),
          isToGet400Message: true,
          isStartLoader: showLoader);
      res = await (showLoader
          ? pending
          : pending?.timeout(const Duration(seconds: 45)));
    } on TimeoutException {
      res = null;
    } finally {
      if (requestId == _currentBillingRequestId) {
        isOptionsRecalculating.value = false;
        if (!showLoader) isLoading.value = false;
      }
    }

    // Race Condition Defense: If a newer request was fired while this one was pending, immediately discard this stale response.
    if (requestId != _currentBillingRequestId) {
      debugPrint(
          "Discarding outdated billing calculation response (ID: $requestId vs Latest: $_currentBillingRequestId)");
      return null;
    }

    GgetBillingCalculationData? data = res?.data as GgetBillingCalculationData?;
    if (data != null && data.getBillingCalculation?.status == 200) {
      if (updateState) {
        _applyBillingCalculation(data, startTime, endTime);
      }
      isLoading.value = false;
      if (updateState &&
          Get.currentRoute
              .toLowerCase()
              .contains('/ConfirmAndPayPage'.toLowerCase())) {
        optionSelectionTick.refresh();
        if (isRemoveClicked) {
          isRemoveClicked = false;
          couponCodeController.text = "";
          isPromoApplied.value = false;
          isPromoApplied.refresh();
        }
      }
      /*if(isNavigateToPaymentType){
        homeItemDetailNavigator?.navigateScreen(HomeItemDetailScreen.PaymentType, '');
        isNavigateToPaymentType = false;
      }*/
      if (updateState &&
          isNavigate &&
          Get.currentRoute.toLowerCase().contains('itemdetail')) {
        homeItemDetailNavigator?.navigateScreen(
            HomeItemDetailScreen.ConfirmAndPay, '');
      }
      return data;
    }
    if (data?.getBillingCalculation?.status == 400) {
      if (isFromPromo) isPromoApplied.value = false;
      // The server already explained the problem (the message is shown).
      // When options were sent, reload them: one of them may have changed.
      if (updateState && !optionSelection.isEmpty) {
        unawaited(refreshBookingOptions(recalculate: true));
      }
    }
    return null;
  }

  // ---------------------------------------------------------------------
  // Booking options (renter side)
  // ---------------------------------------------------------------------

  final RxBool isOptionsRecalculating = false.obs;

  /// Every option of the listing as sent by the API (the server only returns
  /// the bookable ones to a renter), or the reloaded list after an error.
  List<BookingOption> get allBookingOptions {
    final refreshed = _refreshedOptions;
    if (refreshed != null) return refreshed;
    try {
      final raw = itemInfo?.listingOptions;
      if (raw == null) return const [];
      return (raw as Iterable)
          .where((option) => option != null)
          .map((option) => BookingOption.fromJson(
              Map<String, dynamic>.from((option as dynamic).toJson() as Map)))
          .toList();
    } catch (_) {
      return const [];
    }
  }

  /// Options shown to the renter. None for a pre-approved booking.
  List<BookingOption> get bookableBookingOptions =>
      isOptionsAllowed ? bookableOptions(allBookingOptions) : const [];

  bool isBookingOptionSelected(int id) {
    optionSelectionTick.value;
    return optionSelection.contains(id);
  }

  String? get listingCurrency {
    try {
      return itemInfo?.listingData?.currency?.toString();
    } catch (_) {
      return null;
    }
  }

  /// Ticks or unticks an option. With [recalculate] the billing is refreshed
  /// (summary screen); otherwise only the selection changes (car page).
  void setBookingOptionSelected(BookingOption option, bool selected,
      {bool recalculate = false}) {
    if (!isOptionsAllowed) return;
    if (selected) {
      optionSelection.select(option.id);
    } else {
      optionSelection.deselect(option.id);
      if (option.isDelivery) optionsValidationRequested.value = false;
    }
    optionSelectionTick.refresh();
    if (!recalculate) return;
    // A delivery without a valid location cannot be priced yet.
    if (option.isDelivery &&
        selected &&
        !isDeliveryLocationValid(deliveryLocationController.Ttext)) {
      return;
    }
    scheduleOptionsRecalculation(delay: Duration.zero);
  }

  void onDeliveryLocationChanged(String value, {bool recalculate = false}) {
    optionSelectionTick.refresh();
    if (!recalculate) return;
    if (optionSelection.isDeliverySelected(allBookingOptions) &&
        isDeliveryLocationValid(value)) {
      scheduleOptionsRecalculation(
          delay: const Duration(milliseconds: 700));
    }
  }

  void scheduleOptionsRecalculation({required Duration delay}) {
    _optionsRecalcTimer?.cancel();
    if (selectedDates.isEmpty) return;
    // Invalidate the answer of any request already in flight.
    _currentBillingRequestId++;
    isOptionsRecalculating.value = true;
    _optionsRecalcTimer = Timer(delay, () {
      checkNetwork(() => getBillingCalculation(showLoader: false));
    });
  }

  /// False (and the error is displayed) when the delivery is ticked without a
  /// valid location.
  bool validateBookingOptions() {
    if (!isOptionsAllowed || optionSelection.isEmpty) return true;
    final ready = optionSelection.isReady(
        bookableBookingOptions, deliveryLocationController.Ttext);
    optionsValidationRequested.value = !ready;
    if (!ready) optionSelectionTick.refresh();
    return ready;
  }

  /// Selection as GraphQL inputs (`[{optionId, userInput}]`). Prices are never
  /// sent.
  List<GReservationOptionInput> optionInputsForRequest(
      {bool onlyReady = false}) {
    if (!isOptionsAllowed) return const [];
    return optionSelection
        .toInputs(allBookingOptions, deliveryLocationController.Ttext,
            onlyReady: onlyReady)
        .map((input) => GReservationOptionInput((b) => b
          ..optionId = input['optionId'] as int
          ..userInput = input['userInput'] as String?))
        .toList();
  }

  /// Forgets everything about the options (new listing, new booking).
  void resetBookingOptions() {
    _optionsRecalcTimer?.cancel();
    optionSelection.clear();
    deliveryLocationController.clear();
    optionsValidationRequested.value = false;
    isOptionsRecalculating.value = false;
    _refreshedOptions = null;
    optionSelectionTick.refresh();
  }

  /// Reloads the options from the server after an error, drops the ones that
  /// are no longer available and, when asked, prices the booking again.
  Future<void> refreshBookingOptions({bool recalculate = false}) async {
    final listId = itemInfo?.id;
    if (listId == null) return;
    final request = GgetListingOptionsReq((b) => b..vars.listId = listId);
    try {
      final res = await FerryLoggerClient.makeRequest(
          request, this, () => refreshBookingOptions(),
          isViewLoader: false,
          isViewErrorMessage: false,
          isToGet400Message: true,
          isStartLoader: false);
      final data = res?.data as GgetListingOptionsData?;
      final result = data?.getListingOptions;
      if (result?.status != 200) return;
      final refreshed = result?.results?.whereType<Object>() ?? const <Object>[];
      _refreshedOptions = refreshed
          .map((option) => BookingOption.fromJson(
              Map<String, dynamic>.from((option as dynamic).toJson() as Map)))
          .toList();
      final dropped = optionSelection.prune(_refreshedOptions!);
      optionSelectionTick.refresh();
      if (dropped.isNotEmpty) showToast(boText('bo_options_removed'));
      if (recalculate && dropped.isNotEmpty) {
        scheduleOptionsRecalculation(delay: Duration.zero);
      }
    } catch (e) {
      debugPrint('refreshBookingOptions failed: $e');
    }
  }

  void _applyBillingCalculation(
      GgetBillingCalculationData data, double startTime, double endTime) {
    billingCalcuationData.value = data;
    startTime24Four = startTime;
    endTime24Four = endTime;
    totalValue.value = data.getBillingCalculation?.result?.total ?? 0.0;
    totalValue.refresh();
  }

  Future<bool> extendToDiscountThreshold({
    required DurationDiscountOffer offer,
    required int currentDays,
    required RxList<DateTime> targetDates,
    required String startTimeValue,
    required String endTimeValue,
  }) async {
    if (targetDates.isEmpty) return false;
    if (startTimeValue.isEmpty) {
      showToast(label_please_select_start_time.tr);
      return false;
    }
    if (endTimeValue.isEmpty) {
      showToast(label_please_select_end_time.tr);
      return false;
    }

    final daysToAdd = offer.daysToReach(currentDays);
    if (daysToAdd <= 0) return false;

    final maxDays =
        int.tryParse(itemInfo?.listingData?.maxDay?.toString() ?? '');
    if (maxDays != null && maxDays > 0 && offer.thresholdDays > maxDays) {
      return false;
    }

    final originalDates = targetDates.toList(growable: false);
    final originalEnd = originalDates.last;
    final targetEnd = originalEnd.add(Duration(days: daysToAdd));
    if (!_isWithinBookingHorizon(targetEnd)) return false;

    final firstAddedDay =
        DateTime(originalEnd.year, originalEnd.month, originalEnd.day)
            .add(const Duration(days: 1));
    final normalizedTarget =
        DateTime(targetEnd.year, targetEnd.month, targetEnd.day);
    final hasBlockedDate = getBlockedDates().keys.any((date) {
      final normalized = DateTime(date.year, date.month, date.day);
      return !normalized.isBefore(firstAddedDay) &&
          !normalized.isAfter(normalizedTarget);
    });
    if (hasBlockedDate) {
      showToast(those_dates_are_not_available.tr);
      return false;
    }

    final projectedDates = [originalDates.first, targetEnd];
    final projected = await getBillingCalculation(
      dates: projectedDates,
      startTimeVal: startTimeValue,
      endTimeVal: endTimeValue,
      updateState: false,
    );
    final result = projected?.getBillingCalculation?.result;
    if (projected?.getBillingCalculation?.status != 200 ||
        result?.availableStatus?.toLowerCase() != 'available') {
      showToast(those_dates_are_not_available.tr);
      return false;
    }

    _applyBillingCalculation(
      projected!,
      convertTo24Hour(startTimeValue),
      convertTo24Hour(endTimeValue),
    );
    targetDates.assignAll(projectedDates);
    return true;
  }

  bool _isWithinBookingHorizon(DateTime targetEnd) {
    final notice = itemInfo?.listingData?.maxDaysNotice?.toString();
    if (notice == null || notice.isEmpty || notice == 'available') return true;
    if (notice == 'unavailable') return false;
    final months = int.tryParse(notice.replaceAll(RegExp(r'[^0-9]'), ''));
    if (months == null || months <= 0) return true;
    final now = DateTime.now();
    final horizon = DateTime(now.year, now.month + months, now.day);
    return !targetEnd.isAfter(horizon);
  }

  String availabilityFormat({required List<DateTime> DateList}) {
    final locale = (Get.locale ?? const Locale('en')).toLanguageTag();
    final formatter = intl.DateFormat.MMMd(locale);
    return '${formatter.format(DateList.first)} - ${formatter.format(DateList.last)}';
  }

  String getMultilangMonth(String monthDate) {
    List<String> splitstrs = monthDate.split(' ');
    return '${splitstrs[0].toLowerCase().tr} ${splitstrs[1]}';
  }

  Map<DateTime, String> getBlockedDates() {
    blockedDatesMap.clear();
    itemInfo?.blockedDates?.forEach((element) {
      DateTime blockeddateOrigin =
          DateTime.fromMillisecondsSinceEpoch(int.parse(element?.blockedDates));
      DateTime blockeddate = DateTime(blockeddateOrigin.year,
          blockeddateOrigin.month, blockeddateOrigin.day);
      if (element?.calendarStatus == 'blocked') {
        if (blockedDatesMap.isNotEmpty) {
          blockeddate.difference(blockedDatesMap.keys.last).inDays;
        }
        blockedDatesMap[blockeddate] = 'full';
      }
    });
    debugPrint("getBlockedDates: $blockedDatesMap");
    return blockedDatesMap;
  }

  Set<Circle> getCircle({Color? fillColor}) {
    LatLng listlocation = LatLng(itemInfo.lat, itemInfo.lng);
    return {
      Circle(
        circleId: CircleId(listlocation.toString()),
        center: listlocation,
        radius: 2000,
        strokeWidth: 2,
        fillColor: (fillColor ?? appColors.black).withValues(alpha: 0.2),
        strokeColor: appColors.black,
      )
    };
  }

  void setItemInfo(int id) {
    GviewListingDetailsFragmentReq viewlistFragmentReq =
        GviewListingDetailsFragmentReq((b) => b..idFields = {'id': id});
    itemInfo =
        FerryLoggerClient.client?.cache.readFragment(viewlistFragmentReq);
    if (itemInfo == null) {
      GviewListingDetailsFragmentData? data =
          GviewListingDetailsFragmentData.fromJson(
              _shortFragmentData?.toJson() ?? {});
      FerryLoggerClient.client?.cache.writeFragment(viewlistFragmentReq, data);
      setItemInfo(id);
    }
  }

  @override
  void onClose() {
    _optionsRecalcTimer?.cancel();
    super.onClose();
  }

  bool isEmailVerified() {
    return appPreference.isUserVerified['isEmailConfirmed'] ?? false;
  }

  void clearPromoCode() {
    isPromoApplied.value = false;
    couponCodeController.clear();
    isPromoCodeTyping.value = false;
  }
}
