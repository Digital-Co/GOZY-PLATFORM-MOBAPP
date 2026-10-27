import 'package:gozy/screens/views/owner/step_three/listing_options_controller.dart';
import 'package:built_collection/src/list.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/graphql/ListingSettings/__generated__/getListingSettings.data.gql.dart';
import 'package:gozy/graphql/propertycreation/__generated__/propertycreation.data.gql.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/utils/common_api_controller.dart';
import '../../../../config/client.dart';
import '../../../../graphql/ListingSettings/__generated__/getListingSettings.req.gql.dart';
import '../../../../graphql/__generated__/listing_fragment.data.gql.dart';
import '../../../../graphql/__generated__/listing_fragment.req.gql.dart';
import '../../../../graphql/propertycreation/__generated__/propertycreation.req.gql.dart';
import '../../../../utils/text_editing_controller.dart';
import '../../../../widgets/common_extension_functions.dart';
import '../../../../widgets/owner/step_item_model.dart';


class StepThreeController extends BaseController {
  dynamic itemInfo;
  List<Map<String,dynamic>> stepthree_layout_items = [];
  RxInt choosedIndex = 0.obs;
  RxInt selectedChipIndex = 0.obs;
  List<Map<String,dynamic>> houseRules = [];
  List<dynamic>? listOfCurrencies = [];
  List<dynamic> guestRequirementsList = [];
  List<StepItemModel?>? cancellationPolicyList = [];
  List<StepItemModel?>? availabilityWindowList = [];
  List<dynamic>? checkInTimeList = [];
  List<dynamic>? checkOutTimeList = [];
  String maxText = "", minText = "";
  String maxTextPlural = "", minTextPlural = "";
  int allowedStartMinNights = 0,allowedEndMinNights = 0;
  int allowedStartMaxNights = 0,allowedEndMaxNights = 0;
  var rxSelectedHouseRules = ReactiveVariable("rxSelectedHouseRules", <int>[]);
  dynamic selectedCurrency;
  var selectedCurrencyChanged = false.obs;

  RxString selectedBookingType = 'instant'.obs;
  RxString selectedAvailabilityWindow = ''.obs;
  RxInt selectedMinNights = 0.obs;
  RxInt selectedMaxNights = 0.obs;
  RxInt selectedCancellationPolicy = 1.obs;
  RxString selectedCheckInTime = ''.obs;
  dynamic selectedCheckOutTime;
  GgetListingSettingsData? listingSettingData;

  /// Options and services of the vehicle, saved at once (not with the step).
  late final ListingOptionsController listingOptionsController = ListingOptionsController(this);

  CustomTextEditingController basePriceEditController = CustomTextEditingController();
  CustomTextEditingController securityDepositController = CustomTextEditingController();
  CustomTextEditingController weeklyDiscountEditController = CustomTextEditingController();
  CustomTextEditingController monthlyDiscountEditController = CustomTextEditingController();

  CustomFocusNode basePriceFocusNode = CustomFocusNode();
  CustomFocusNode taxesFocusNode = CustomFocusNode();
  CustomFocusNode weeklyDiscountFocusNode = CustomFocusNode();
  CustomFocusNode monthlyDiscountFocusNode = CustomFocusNode();


  void getCurrenciesList() {
    isLoading.value = true;
    getCurrencyList(isAutoCloseLoader: false).then((currencyListData){
      listOfCurrencies?.clear();
      currencyListData.getCurrencies?.results?.forEach((p0) {
        String symbol = getCurrencySymbol(currency: p0?.symbol);
        String currency = "${symbol == p0?.symbol ? '': symbol} ${p0?.symbol}";
        StepItemModel stepItemModel =  StepItemModel(
            id: p0?.id,
            itemName: currency,
            itemValue: p0?.symbol
        );
        if(p0?.isBaseCurrency ?? false) selectedCurrency = stepItemModel;
        listOfCurrencies?.add(stepItemModel);
      });
      checkNetwork(getListingSettings);
    });

  }


  void getListingSettings() {
    final params = GgetListingSettingsReq((b) =>
    b
      ..vars.build());
    FerryLoggerClient.makeRequest(params,this, getListingSettings, isAutoCloseLoader: false)?.then((res) async {
       listingSettingData = res.data as GgetListingSettingsData;

      if(listingSettingData?.getListingSettings?.results?.carRules?.listSettings !=null) {
        if(itemInfo.carRules !=null && itemInfo.carRules.isNotEmpty){
          itemInfo.carRules.forEach((selectedelement){
            rxSelectedHouseRules.value.add(selectedelement.id);
          });
        }

         listingSettingData?.getListingSettings!.results!.carRules!.listSettings!.forEach((element){
             houseRules.add(element?.toJson() ?? {});
        });

      }

      if(listingSettingData?.getListingSettings?.results?.minNight?.listSettings != null) {
        minText = listingSettingData?.getListingSettings?.results?.minNight?.listSettings?[0]?.itemName ?? "";
        minTextPlural = listingSettingData?.getListingSettings?.results?.minNight?.listSettings?[0]?.otherItemName ?? "";
        allowedStartMinNights = listingSettingData?.getListingSettings?.results?.minNight?.listSettings?[0]?.startValue ?? 0;
        allowedEndMinNights = listingSettingData?.getListingSettings?.results?.minNight?.listSettings?[0]?.endValue ?? 0;
        selectedMinNights.value = listingSettingData?.getListingSettings?.results?.minNight?.listSettings?[0]?.startValue ?? 0;
      }

       if(listingSettingData?.getListingSettings?.results?.maxNight?.listSettings != null) {
         maxText = listingSettingData?.getListingSettings?.results?.maxNight?.listSettings?[0]?.itemName ?? "";
         maxTextPlural = listingSettingData?.getListingSettings?.results?.maxNight?.listSettings?[0]?.otherItemName ?? "";
         allowedStartMaxNights = listingSettingData?.getListingSettings?.results?.maxNight?.listSettings?[0]?.startValue ?? 0;
         allowedEndMaxNights = listingSettingData?.getListingSettings?.results?.maxNight?.listSettings?[0]?.endValue ?? 0;
         selectedMaxNights.value = listingSettingData?.getListingSettings?.results?.minNight?.listSettings?[0]?.startValue ?? 0;
       }

      if(listingSettingData?.getListingSettings?.results?.reviewGuestBook?.listSettings !=null) {
        listingSettingData?.getListingSettings!.results!.reviewGuestBook!.listSettings!.forEach((element){
          guestRequirementsList?.add(element);
        });
      }

      if(listingSettingData !=null && listingSettingData?.getListingSettings?.results?.cancellationPolicy !=null && listingSettingData!.getListingSettings!.results!.cancellationPolicy!.isNotEmpty) {
        cancellationPolicyList?.clear();
        for (var element in  listingSettingData!.getListingSettings!.results!.cancellationPolicy!) {
          String policyname = await  getMultilangContent(content: element?.policyName ?? '');
          String policycontent = await  getMultilangContent(content: element?.policyContent ?? '');
          StepItemModel stepItemModel = StepItemModel(
            id: element?.id,
            itemName:policyname,
            itemValue: policycontent
          );
          cancellationPolicyList?.add(stepItemModel);
          if(itemInfo.listingData ==null) {
            selectedCancellationPolicy.value = int.parse((cancellationPolicyList?[0]?.id).toString());
          }
          selectedCancellationPolicy.refresh();

      }
      }
        availabilityWindowList?.clear();
           StepItemModel stepItemModel = StepItemModel(
               itemValue:"available",
               itemName: "all_future_dates".tr
           );
           availabilityWindowList?.add(stepItemModel);
           stepItemModel = StepItemModel(
               itemValue:"3months",
               itemName: "future_3_months".tr
           );
           availabilityWindowList?.add(stepItemModel);
           stepItemModel = StepItemModel(
               itemValue:"6months",
               itemName: "future_6_months".tr
           );
           availabilityWindowList?.add(stepItemModel);
           stepItemModel = StepItemModel(
               itemValue:"9months",
               itemName: "future_9_months".tr
           );
           availabilityWindowList?.add(stepItemModel);
           stepItemModel = StepItemModel(
               itemValue:"12months",
               itemName: "future_12_months".tr
           );
           availabilityWindowList?.add(stepItemModel);
           stepItemModel = StepItemModel(
               itemValue:"unavailable",
               itemName: "dates_unavailable_by_default".tr
           );
            availabilityWindowList?.add(stepItemModel);
          if(itemInfo.listingData ==null) {
            selectedAvailabilityWindow.value = availabilityWindowList?[0]?.itemValue ?? '';
          }

      if(itemInfo.bookingType !=null && itemInfo.bookingType.toString().isNotEmpty) {
        selectedBookingType.value = itemInfo.bookingType;
      }

     if(itemInfo.listingData !=null) {
        if(itemInfo.listingData.currency !=null && itemInfo.listingData.currency.isNotEmpty) {
          selectedCurrency =  listOfCurrencies?.firstWhere((p0) => p0?.itemValue == itemInfo.listingData.currency);
        }

        if(itemInfo.listingData.basePrice !=null && itemInfo.listingData.basePrice >0) {
          basePriceEditController.text = (itemInfo.listingData.basePrice)%1==0?itemInfo.listingData.basePrice.toInt().toString():itemInfo.listingData.basePrice.toString();
        }

        if(itemInfo.listingData.securityDeposit !=null && itemInfo.listingData.securityDeposit >0) {
          securityDepositController.text = (itemInfo.listingData.securityDeposit)%1==0?itemInfo.listingData.securityDeposit.toInt().toString():itemInfo.listingData.securityDeposit.toString();
        }

        if(itemInfo.listingData.weeklyDiscount !=null && itemInfo.listingData.weeklyDiscount >0) {
          weeklyDiscountEditController.text = itemInfo.listingData.weeklyDiscount.toString();
        }

        if(itemInfo.listingData.monthlyDiscount !=null && itemInfo.listingData.monthlyDiscount >0) {
          monthlyDiscountEditController.text = itemInfo.listingData.monthlyDiscount.toString();
        }

        if(itemInfo.listingData.minDay !=null && itemInfo.listingData.minDay >0) {
          selectedMinNights.value  = itemInfo.listingData.minDay;
        }

        if(itemInfo.listingData.maxDay !=null && itemInfo.listingData.maxDay >0) {
          selectedMaxNights.value  = itemInfo.listingData.maxDay;
        }

        selectedAvailabilityWindow.value = itemInfo.listingData.maxDaysNotice ?? '';
        selectedCheckInTime.value = itemInfo.listingData.checkInStart;
        selectedCheckOutTime = itemInfo.listingData.checkInEnd;
        selectedCancellationPolicy.value = itemInfo.listingData.cancellation.id;
        WidgetsFlutterBinding.ensureInitialized().performReassemble();
      }else{
       if(checkInTimeList?.isNotEmpty ?? false) {
         selectedCheckInTime.value = checkInTimeList?[0]?.itemValue ?? '';
       }
       if(checkOutTimeList?.isNotEmpty ?? false) {
         selectedCheckOutTime = checkOutTimeList?[0]?.itemValue ?? '';
       }
     }
      isLoading.value = false;

    });
  }


  (GviewListingDetailsFragmentData?, GviewListingDetailsFragmentReq)  getItemInfo(){
    GviewListingDetailsFragmentReq fragmentReq = GviewListingDetailsFragmentReq((b) => b..idFields = {'id': itemInfo.id});
    var data = FerryLoggerClient.client?.cache.readFragment(fragmentReq);
    if (data == null && itemInfo != null) {
      try {
        data = GviewListingDetailsFragmentData.fromJson(itemInfo.toJson());
        if (data != null) {
          FerryLoggerClient.client?.cache.writeFragment(fragmentReq, data);
        }
      } catch (e) {
        debugPrint('Error parsing itemInfo to Fragment: $e');
      }
    }
    return (data, fragmentReq);
  }



  void updateStep3Details(){
    isShowLoader = true;
    final params = GupdateListingStep3Req((b) =>
    b
      ..vars.id = itemInfo.id
      ..vars.carRules = ListBuilder(rxSelectedHouseRules.value)
      ..vars.bookingType = selectedBookingType.value
      ..vars.currency = selectedCurrency.itemValue
      ..vars.basePrice = double.parse(basePriceEditController.Ttext)
      ..vars.minDay = selectedMinNights.value
      ..vars.bookingNoticeTime = selectedAvailabilityWindow.value
      ..vars.maxDay = selectedMaxNights.value
      ..vars.checkInStart = selectedCheckInTime.value
      ..vars.checkInEnd = selectedCheckOutTime
      ..vars.maxDaysNotice = selectedAvailabilityWindow.value
      ..vars.securityDeposit = securityDepositController.Ttext.isNotEmpty ? double.parse(securityDepositController.Ttext) : 0
      ..vars.cancellationPolicy = selectedCancellationPolicy.value
      ..vars.weeklyDiscount = weeklyDiscountEditController.Ttext.isNotEmpty ? double.parse(weeklyDiscountEditController.Ttext) : 0
      ..vars.monthlyDiscount = monthlyDiscountEditController.Ttext.isNotEmpty ?double.parse(monthlyDiscountEditController.Ttext) : 0
      ..vars.build());

    FerryLoggerClient.makeRequest(params,this, updateStep3Details,isViewLoader : true, isAutoCloseLoader: false)?.then((res) {
      GupdateListingStep3Data step3data = res.data as GupdateListingStep3Data;
      if(step3data.updateListingStep3?.status ==200) {
      checkNetwork(manageListingSteps);

    }else {
    showSnackBar(label_empty_listing.tr, isltralign: true);
    Get.back(result: { 'removedeletedlisting' : true});
    }
    });
  }

  void manageListingSteps(){
    final params = GmanageListingStepsReq((b) =>
    b
      ..vars.listId = itemInfo.id.toString()
      ..vars.currentStep = 3
      ..vars.build());
    FerryLoggerClient.makeRequest(params,this, manageListingSteps,isViewLoader: true, isAutoCloseLoader: false)?.then((res){
      isLoading.value = false;
        (GviewListingDetailsFragmentData?, GviewListingDetailsFragmentReq) datareq = getItemInfo();
        final  data= datareq.$1;
      GviewListingDetailsFragmentData_listingStepsBuilder listingstepsBuilder =
      data?.listingSteps !=null ? data!.listingSteps!.toBuilder() : GviewListingDetailsFragmentData_listingStepsBuilder();
      listingstepsBuilder.step1 = res.data.manageListingSteps?.results?.step1;
      listingstepsBuilder.step2 = res.data.manageListingSteps?.results?.step2;
      listingstepsBuilder.step3 = res.data.manageListingSteps?.results?.step3;

      List<dynamic> houseRulesList = _createBuilderList(selectedList:rxSelectedHouseRules.value,originalList: houseRules,builder:  GviewListingDetailsFragmentData_carRulesBuilder());


      GviewListingDetailsFragmentData_listingData_cancellationBuilder cancellationDataBuilder = GviewListingDetailsFragmentData_listingData_cancellationBuilder();
      cancellationDataBuilder.id = selectedCancellationPolicy.value;
      StepItemModel? stepItemModel = cancellationPolicyList?.firstWhere((i) => i?.id == selectedCancellationPolicy.value);
      cancellationDataBuilder.policyName = stepItemModel?.itemName;
      cancellationDataBuilder.policyContent = stepItemModel?.itemValue;
      GviewListingDetailsFragmentData_listingDataBuilder listingdataBuilder =
      data?.listingData !=null ? data!.listingData!.toBuilder() : GviewListingDetailsFragmentData_listingDataBuilder();
      listingdataBuilder.currency = selectedCurrency.itemValue;
      listingdataBuilder.basePrice = double.parse(basePriceEditController.Ttext);
      if(securityDepositController.Ttext.isNotEmpty) {
        listingdataBuilder.securityDeposit = double.parse(securityDepositController.Ttext);
      } else {
        listingdataBuilder.securityDeposit = 0.0;
      }
      if(weeklyDiscountEditController.Ttext.isNotEmpty) {
        listingdataBuilder.weeklyDiscount = double.parse(weeklyDiscountEditController.Ttext);
      } else {
        listingdataBuilder.weeklyDiscount = 0.0;
      }
      if(monthlyDiscountEditController.Ttext.isNotEmpty) {
        listingdataBuilder.monthlyDiscount = double.parse(monthlyDiscountEditController.Ttext);
      } else {
        listingdataBuilder.monthlyDiscount = 0.0;
      }
      listingdataBuilder.minDay = selectedMinNights.value;
      listingdataBuilder.maxDay = selectedMaxNights.value;
      listingdataBuilder.checkInStart = selectedCheckInTime.value;
      listingdataBuilder.checkInEnd = selectedCheckOutTime;
      listingdataBuilder.maxDaysNotice = selectedAvailabilityWindow.value;
      listingdataBuilder.cancellation = cancellationDataBuilder;

      FerryLoggerClient.client?.cache.writeFragment(
          datareq.$2,
          data?.rebuild((b) =>
          b
          ..carRules = ListBuilder(houseRulesList)
            ..bookingType = selectedBookingType.value
            ..lastUpdatedAt = DateTime.now().millisecondsSinceEpoch.toString()
            ..isPublished = data.isPublished ?? false
            ..listingData = listingdataBuilder
            ..listingSteps = listingstepsBuilder));

      isLoading.value = false;
      Get.forceAppUpdate().then((_){Get.back(result: 'refresh');});


    });
  }

  List<dynamic>  _createBuilderList({required List<dynamic> selectedList,required List<dynamic> originalList, required dynamic builder}){
    List<dynamic> builderList = [];
    for (var element in selectedList) {
      builder.id = element;
      int index = originalList.indexWhere((indelement) => indelement['id'] == element);
      builder.itemName = originalList[index]['itemName'];
      builderList.add(builder.build());
    }
    return builderList;
  }



}