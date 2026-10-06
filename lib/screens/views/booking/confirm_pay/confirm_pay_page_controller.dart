import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/graphql/ListDetail/__generated__/ListingDetails.data.gql.dart';
import 'package:gozy/graphql/ListDetail/__generated__/ListingDetails.req.gql.dart';
import 'package:gozy/graphql/booking/getBillingCalculation/__generated__/get_billing_calculation.data.gql.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/home_item_detail/home_item_detail_controller.dart';
import 'package:gozy/utils/text_editing_controller.dart';
import 'package:gozy/utils/localized_date_time.dart';
import 'package:gozy/widgets/common_extension_functions.dart';

class ConfirmAndPayPageController extends BaseController {
  Rxn<GgetBillingCalculationData> billingCalcuationData =
      Rxn<GgetBillingCalculationData>();
  var rxUpdatedGuestCount = ReactiveVariable("rxUpdatedGuestCount", 1);
  dynamic itemInfo;
  List<DateTime> contactHostDates = <DateTime>[];
  RxBool isDeliveryCheck = false.obs;
  String? pageType = '', content = '';
  var rxSelectedDates = ReactiveVariable('selectedDates', <DateTime>[]);

  var rxSelectedStartTime = ReactiveVariable('selectedStartTime', "");
  var rxSelectedEndTime = ReactiveVariable('selectedEndTime', "");

  bool validateCredentials(CustomTextEditingController textController) {
    Map<String, bool> results = {
      label_please_select_start_time.tr: rxSelectedStartTime.value.isEmpty,
      label_error_msg_please_enter_the_message.tr:
          textController.Ttext.toString().trim().isEmpty,
    };

    if (pageType == 'pay') {
      results.addAll(checkUserVerficiation());
    } else {
      results[label_please_select_the_date_to_proceed.tr] =
          rxSelectedDates.value.isEmpty;
      results[label_please_select_start_time.tr] =
          rxSelectedStartTime.value.isEmpty;
      results[label_please_select_end_time.tr] =
          rxSelectedEndTime.value.isEmpty;

      if (rxSelectedStartTime.value.isNotEmpty &&
          rxSelectedEndTime.value.isNotEmpty) {
        if (rxSelectedDates.value.isNotEmpty &&
            rxSelectedDates.value.first == rxSelectedDates.value.last) {
          try {
            final locale = (Get.locale ?? const Locale('en')).toLanguageTag();
            final startTime = LocalizedDateTime.tryParseTime(
                rxSelectedStartTime.value, locale);
            final endTime =
                LocalizedDateTime.tryParseTime(rxSelectedEndTime.value, locale);
            if (startTime == null || endTime == null) {
              results[error_msg_choose_different_end_time.tr] = true;
              return results.isValidate(controller: this);
            }

            if (startTime.isAtSameMomentAs(endTime)) {
              results[error_msg_choose_different_end_time.tr] = true;
            } else if (startTime.isAfter(endTime)) {
              results[label_please_select_end_time.tr] = true;
            } else {
              results[label_please_select_end_time.tr] = false;
            }
          } catch (e) {
            debugPrint("Time parse error in confirm_pay_page_controller: $e");
          }
        }
      }
    }

    bool validate = results.isValidate(controller: this);
    debugPrint("isValidatevalidate:$validate");

    return validate;
  }

  void contactHost() {
    double startTime = convertTo24Hour(rxSelectedStartTime.value);
    double endTime = convertTo24Hour(rxSelectedEndTime.value);
    debugPrint(
        "contactHostrxSelectedStartTime.value: ${startTime} --- ${endTime}");
    isLoading.value = true;
    String startDate =
        rxSelectedDates.value.first.convert_MDY(format: commonDateFormat).$1;
    String endDate =
        rxSelectedDates.value.last.convert_MDY(format: commonDateFormat).$1;
    final getcontactHostReq = GContactHostReq((b) => b
      ..vars.listId = itemInfo.id
      ..vars.startDate = startDate
      ..vars.endDate = endDate
      ..vars.startTime = startTime
      ..vars.endTime = endTime
      ..vars.hostId = itemInfo?.user?.verification?.userId
      ..vars.userId = appPreference.userID
      ..vars.type = 'inquiry'
      ..vars.content = content
      ..vars.personCapacity = rxUpdatedGuestCount.value
      ..vars.build());
    debugPrint("_getcontactHostReq: $getcontactHostReq---$isShowLoader");

    FerryLoggerClient.makeRequest(getcontactHostReq, this, contactHost,
            isToGet400Message: true)
        ?.then((res) {
      HomeItemDetailController controller = Get.find();
      controller.isLoading.value = false;

      GContactHostData? contactHostData = res.data as GContactHostData?;
      if (contactHostData?.createEnquiry?.status == 200) {
        showToast(label_sent_to_host.tr);

        rxSelectedDates.value = [];
        rxSelectedStartTime.value = "";
        rxSelectedEndTime.value = "";

        controller.selectedDates.clear();
        controller.selectedStartTime.value = "";
        controller.selectedEndTime.value = "";
        controller.confirmpayMessageController.clear();
        controller.update();

        Get.back(result: {
          'contactHostDates': rxSelectedDates.value,
        });
      }
    });
  }

  void clearBookingData() {
    billingCalcuationData.value = null;
    rxUpdatedGuestCount.value = 1;
    itemInfo = null;
    contactHostDates = [];
    isDeliveryCheck.value = true;
    rxSelectedDates.value = [];
    rxSelectedStartTime.value = "";
    rxSelectedEndTime.value = "";
    isLoading.refresh();
  }
}
