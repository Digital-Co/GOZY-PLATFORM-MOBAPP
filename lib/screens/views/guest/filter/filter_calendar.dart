import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/resources/app_layout.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/utils/localized_date_time.dart';
import 'package:gozy/utils/duration_discount.dart';
import 'package:gozy/widgets/common/custom_bottomsheet/custom_draggable_bottomsheet.dart';
import 'package:gozy/widgets/common/custom_bottomsheet/custom_getx_bottomsheet.dart';
import 'package:gozy/widgets/common/custom_button/primary_button.dart';
import 'package:gozy/widgets/common/custom_container/custom_border_container.dart';
import 'package:gozy/widgets/common/custom_container/custom_bottom_item_shadow_container.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/conditional_parent_widget.dart';
import 'package:gozy/widgets/common/custom_container/custom_container.dart';
import 'package:gozy/widgets/custom_text.dart';
import 'package:gozy/widgets/dotted_border/dotted_border.dart';
import 'package:gozy/widgets/duration_discount_widgets.dart';
import 'package:gozy/widgets/owner/step_item_model.dart';

import '../../../../../../widgets/calendar/calendar.dart';
import '../../../../../../widgets/custom_stateful_widget.dart';
import '../../custom_scaffold.dart';
import 'package:gozy/widgets/common_extension_functions.dart';

import 'guest_filter_controller.dart';
import '../../home_item_detail/home_item_detail_controller.dart';

class FilterCalendar extends CustomStatefulWidget {
  RxList<DateTime> selectedDates;
  RxString? selectedStartTime;
  RxString? selectedEndTime;
  ReactiveVariable<dynamic>? savedDates;
  List<DateTime>? contactHostDates;
  final Map<DateTime, String>? blockedDates;
  final Map<String, dynamic>? minMaxNights;
  final BaseController controller;
  final String? calendarType;
  final String? blockedHalf;
  final DateTime initialDateTime;
  final bool? isBlockedDateStrikeOut;

  FilterCalendar(
      {key,
      required this.selectedDates,
      this.savedDates,
      this.blockedDates,
      this.contactHostDates,
      required this.controller,
      this.calendarType,
      this.selectedStartTime,
      this.selectedEndTime,
      this.minMaxNights,
      this.blockedHalf,
      required this.initialDateTime,
      this.isBlockedDateStrikeOut})
      : super(key: key);

  @override
  _StatefulWrapperState createState() => _StatefulWrapperState();
}

class _StatefulWrapperState extends CustomStatefulWidgetState<FilterCalendar>
    with SingleTickerProviderStateMixin {
  List<DateTime> _clearedDates = [];
  Map<String, dynamic> timingMap = {};
  GuestFilterController filterController = Get.find();
  bool? isPaddedDividerNeed;
  Color? appBarColor;
  bool isDottedBorder = overALLThemeType == 4;
  Worker? dateWorker;
  bool _isExtendingDiscount = false;

  @override
  void initState() {
    _clearedDates = List.from(widget.selectedDates.value);
    isShowLoader = false;
    super.initState();
    dateWorker = ever(widget.selectedDates, (_) {
      if (_isExtendingDiscount) return;
      widget.selectedStartTime?.value = "";
      widget.selectedEndTime?.value = "";
      widget.selectedStartTime?.refresh();
      widget.selectedEndTime?.refresh();
    });
  }

  @override
  void dispose() {
    dateWorker?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double bottomContainerHorizontalPadding = 40;
    const double selectorOuterPadding = 60;
    const double selectorGap = 18;
    final double availableWidth = deviceWidth -
        bottomContainerHorizontalPadding -
        selectorOuterPadding -
        selectorGap;
    final double timeSelectorWidth =
        ((availableWidth / 2).clamp(96.0, 170.0)).toDouble();
    switch (overALLThemeType) {
      case 1:
        isPaddedDividerNeed = true;
        appBarColor = appColors.theme4AppBarBg;
        break;
      case 2:
        appBarColor = appColors.theme4AppBarBg;
        break;
      case 3:
        isPaddedDividerNeed = false;
        appBarColor = appColors.myTripsBGColor;
        break;
      case 4:
        isPaddedDividerNeed = true;
        appBarColor = appColors.theme4AppBarBg;
        break;
    }

    return CustomScaffold(
      isShowAppBar: false,
      appBarBGColor: appColors.theme4AppBarBg,
      customAppBarFunction: getBackfunction,
      resizeToAvoidBottomInset: false,
      body: [
        ConditionalParentWidget(
          condition: isDottedBorder,
          parentBuilder: (Widget child) => DottedBorderView(
                  borderRadius: AppDimen.appBorderRadius,
                  dottedlineColor: appColors.colorCommonLinkColor,
                  child: child)
              .toPad(all: 3),
          child: [
            CustomBorderContainer(
              color: appBarColor,
              padding: pad(top: 10, bottom: 5),
              borderRadiusGeometry: BorderRadiusDirectional.only(
                topStart: Radius.circular(
                    isDottedBorder ? AppDimen.appBorderRadius : 0),
                topEnd: Radius.circular(
                    isDottedBorder ? AppDimen.appBorderRadius : 0),
              ),
              body: [
                getBackIconWidget(
                    themeType: overALLThemeType,
                    backIcon: Assets.drawableSignupClose,
                    // size: AppDimen.backIconSize,
                    // iconPadding: AppDimen.backIconInnerPad,
                    iconBGColor: appColors.white,
                    iconColor: appColors.black,
                    //   margin:  EdgeInsetsDirectional.only(start: AppDimen.startMargin - 8),
                    onTap: getBackfunction),
                CustomContainer(
                  onTap: () {
                    widget.selectedDates.clear();
                    widget.selectedStartTime?.value = "";
                    widget.selectedEndTime?.value = "";
                    widget.selectedStartTime?.refresh();
                    widget.selectedEndTime?.refresh();
                    widget.selectedDates.refresh();
                  },
                  padding: pad(end: AppDimen.startMargin - 4),
                  margin: pad(bottom: 5),
                  body: CustomText(
                    text: label_clear_all.tr,
                    color: appColors.secondaryColor,
                  ),
                )
              ].toRow(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween),
            ),
            Obx(() => [
                  CustomContainer(
                    width: (deviceWidth - 95) / 2,
                    alignment: AlignmentDirectional.centerStart,
                    body: CustomTitleText(
                      text: widget.selectedDates.isNotEmpty
                          ? _getMultilangDateText(widget.selectedDates.first)
                          : '${"label_trip_single".tr.toUpperLowerCase()}\n${label_calendar_start_date.tr.toLowerCase()}',
                      size: AppDimen.textSize_20,
                    ),
                  ),
                  Assets.drawableRightArrow.toSVG(
                    size: 18,
                    colour: appColors.black,
                  ),
                  CustomContainer(
                    width: (deviceWidth - 70) / 2,
                    padding: pad(start: 10),
                    alignment: AlignmentDirectional.centerStart,
                    body: CustomTitleText(
                      text: widget.selectedDates.length > 1
                          ? _getMultilangDateText(widget.selectedDates.last)
                          : '${"label_trip_single".tr.toUpperLowerCase()}\n${label_calendar_end_date.tr.toLowerCase()}',
                      size: AppDimen.textSize_20,
                    ),
                  )
                ]
                    .toRow(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween)
                    .toPad(
                        horizontal: AppDimen.startMargin - 4)).toResizeWidget(
                color: appBarColor, width: deviceWidth),
            CustomBorderContainer(
              color: appBarColor,
              padding: pad(start: AppDimen.startMargin - 4, bottom: 8),
              borderRadiusGeometry: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(
                    isDottedBorder ? AppDimen.appBorderRadius : 0),
                bottomEnd: Radius.circular(
                    isDottedBorder ? AppDimen.appBorderRadius : 0),
              ),
              body: Obx(() => SizedBox(
                    height: 32,
                    child: widget.selectedDates.isEmpty
                        ? null
                        : Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: _daysChosenPill(),
                          ),
                  )),
            ),
          ].toColumn(),
        ),
        SimpleVerticalCalendar(
          numOfMonth: 36,
          isBlockedDateStrikeOut: widget.isBlockedDateStrikeOut,
          isPaddedDividerNeed: isPaddedDividerNeed,
          selectedDates: widget.selectedDates,
          baseController: widget.controller,
          blockedHalf: widget.blockedHalf,
          blockedDates: widget.blockedDates,
          isDateBlock: (val) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              widget.selectedDates.refresh();
            });
          },
          dayTextColor: appColors.black,
          minMaxNights: widget.minMaxNights,
          calendarType: widget.calendarType,
          initialDateTime: widget.initialDateTime,
        ).toStretch(),
        if (widget.calendarType == 'availability')
          CustomBottomItemShadowContainer(
            padding: pad(
                w: 20,
                top: 20,
                bottom: 20 + MediaQuery.of(context).padding.bottom),
            borderRadiusGeometry: BorderRadiusDirectional.vertical(
                top: Radius.circular(overALLThemeType == 2 ? 0 : 20),
                bottom: const Radius.circular(20)),
            body: [
              Obx(() {
                return widget.selectedDates.isEmpty
                    ? [
                        CustomText(
                          text: '*',
                          color: Colors.red,
                        ),
                        CustomText(
                          text: label_minimum_trip_days.trParams({
                            "field":
                                "${widget.minMaxNights?['minnight']} ${widget.minMaxNights?['minnight'] <= 1 ? label_day.tr : dayPlural.tr}"
                          }),
                          size: AppDimen.textSize_14,
                          fontWeight: AppFont.regular,
                        ),
                      ].toRow()
                    : const SizedBox.shrink();
              }),
              Obx(() {
                final offer = _nextDiscountOffer();
                if (offer == null) return const SizedBox.shrink();
                return DurationDiscountExtensionPanel(
                  offer: offer,
                  currentDays: _getDaysCount(),
                  onAddDays: () => _extendToDiscountThreshold(offer),
                  margin: EdgeInsets.zero,
                );
              }),
              14.toHeight(),
              [
                toOnTap(
                  onTap: () {
                    if (widget.selectedDates.isEmpty) {
                      widget.controller.showToast(label_please_select_date.tr);
                      return;
                    }
                    List<dynamic> timingList = _renderTimingSheet(
                        selectedDate: widget.selectedDates, isFrom: "start");

                    GetXBottomSheet(
                        bottomSheetWidget: getDraggableSheetWidget(
                            controller: widget.controller,
                            listItems: timingList,
                            borderRadius: overALLAppLayoutModel?.borderRadius,
                            themeType: overALLThemeType,
                            title: label_start_time.tr,
                            onItemSelected: (value) {
                              if (widget.selectedEndTime?.value != "") {
                                widget.selectedEndTime?.value = "";
                              }
                              widget.selectedStartTime?.value =
                                  value.itemName.toString();
                            }));
                  },
                  child: Obx(() => CustomBorderContainer(
                        width: timeSelectorWidth,
                        height: 44,
                        borderRadius: overALLThemeType == 2
                            ? 0
                            : appLayoutMap[AppLayout.themeType]?.borderRadius,
                        padding: pad(w: 10),
                        body: [
                          Flexible(
                            child: CustomText(
                              text: widget.selectedStartTime?.value != ""
                                  ? (widget.selectedStartTime?.value ?? "")
                                  : label_start_time.tr,
                              size: AppDimen.textSize_14,
                              textDirection: TextDirection.ltr,
                              color: appColors.textColor,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          5.toWidth(),
                          Assets.drawableDownArrow
                              .toSVG(colour: appColors.black)
                        ].toRow(mainAxisAlignment: MainAxisAlignment.center),
                      )),
                ).toPad(start: 8),
                18.toWidth(),
                toOnTap(
                  onTap: () {
                    if (widget.selectedDates.isEmpty) {
                      widget.controller.showToast(label_please_select_date.tr);
                      return;
                    }
                    if (widget.selectedStartTime?.value == "") {
                      widget.controller
                          .showToast(label_please_select_start_time.tr);
                      return;
                    }
                    List<dynamic> timingList = _renderTimingSheet(
                        selectedDate: widget.selectedDates, isFrom: "end");
                    GetXBottomSheet(
                      bottomSheetWidget: getDraggableSheetWidget(
                          controller: widget.controller,
                          listItems: timingList,
                          borderRadius: overALLAppLayoutModel?.borderRadius,
                          themeType: overALLThemeType,
                          title: label_end_time.tr,
                          onItemSelected: (value) {
                            widget.selectedEndTime?.value =
                                value.itemName.toString();
                          }),
                    );
                  },
                  child: Obx(() => CustomBorderContainer(
                        width: timeSelectorWidth,
                        height: 44,
                        borderRadius: overALLThemeType == 2
                            ? 0
                            : appLayoutMap[AppLayout.themeType]?.borderRadius,
                        padding: pad(w: 10),
                        body: [
                          Flexible(
                            child: CustomText(
                              size: AppDimen.textSize_14,
                              text: widget.selectedEndTime?.value != ""
                                  ? (widget.selectedEndTime?.value ?? "")
                                  : label_end_time.tr,
                              textDirection: TextDirection.ltr,
                              color: appColors.textColor,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          5.toWidth(),
                          Assets.drawableDownArrow
                              .toSVG(colour: appColors.black)
                        ].toRow(mainAxisAlignment: MainAxisAlignment.center),
                      )),
                ).toPad(end: 8),
              ].toRow(mainAxisAlignment: MainAxisAlignment.center),
              20.toHeight(),
              PrimaryButton(
                buttonText: label_continue.tr,
                isResizeText: true,
                buttonTextFontSize: AppDimen.textSize_18,
                padding: pad(w: 15),
                onTap: () async {
                  print(
                      "start Time >>>>${widget.selectedStartTime} end Time >>>> ${widget.selectedEndTime}");
                  String errorMsg = _getErrorMsg();
                  if (errorMsg.isEmpty) {
                    if (widget.calendarType == 'availability' &&
                        widget.controller is HomeItemDetailController) {
                      final controller =
                          widget.controller as HomeItemDetailController;
                      controller.clearPromoCode();
                      var billingData = await controller.getBillingCalculation(
                        dates: widget.selectedDates,
                        startTimeVal: widget.selectedStartTime?.value,
                        endTimeVal: widget.selectedEndTime?.value,
                      );
                      if (billingData?.getBillingCalculation?.status == 200) {
                        Map<String, dynamic> data = {
                          "selectedDate": widget.selectedDates,
                          "selectedStartTime": widget.selectedStartTime,
                          "selectedEndTime": widget.selectedEndTime
                        };
                        Get.back(result: data);
                      }
                    } else {
                      Get.back();
                    }
                  } else {
                    widget.controller.showToast(errorMsg);
                  }
                },
              ),
            ].toColumn(crossAxisAlignment: CrossAxisAlignment.center),
          )
        else
          CustomBottomItemShadowContainer(
            borderRadiusGeometry: BorderRadiusDirectional.vertical(
                top: Radius.circular(AppDimen.appBorderRadius),
                bottom: Radius.circular(AppDimen.appBorderRadius)),
            body: PrimaryButton(
              buttonText: label_continue.tr,
              onTap: () {
                if (widget.selectedDates.isEmpty) {
                  widget.controller.showToast(label_please_select_date.tr);
                  return;
                } else {
                  widget.controller.change(
                      rxVariable: widget.savedDates!,
                      value: List<DateTime>.from(widget.selectedDates));
                  filterController.change(
                      rxVariable: filterController.rxSavedDates,
                      value: widget.savedDates?.value);
                  onBack();
                }
              },
            ).toPad(all: 20),
          ),
      ].toColumn(),
      controller: widget.controller,
    );
  }

  void getBackfunction() {
    if ((widget.selectedDates.isNotEmpty &&
        widget.selectedDates.value.first == widget.selectedDates.value.last)) {
      widget.selectedDates.value = _clearedDates;
      widget.selectedStartTime?.value = "";
      widget.selectedEndTime?.value = "";
      widget.selectedDates.refresh();
    }
    Get.back(closeOverlays: true);
  }

  String _getErrorMsg() {
    if (!(widget.selectedDates != null &&
        widget.selectedDates!.value.isNotEmpty)) {
      return label_please_select_the_date_text.tr;
    }
    if (!(widget.selectedStartTime != null &&
        widget.selectedStartTime!.value.isNotEmpty)) {
      return label_please_select_start_time.tr;
    }
    if (!(widget.selectedEndTime != null &&
        widget.selectedEndTime!.value.isNotEmpty)) {
      return label_please_select_end_time.tr;
    }

    if (isHaveInBetweenBlockDays(
        widget.selectedDates.first, widget.selectedDates.last)) {
      return those_dates_are_not_available.tr;
    }

    if (widget.selectedDates.first.isSameDate(widget.selectedDates.last)) {
      final locale = (Get.locale ?? const Locale('en')).toLanguageTag();
      final startTime = LocalizedDateTime.tryParseTime(
          widget.selectedStartTime!.value, locale);
      final endTime =
          LocalizedDateTime.tryParseTime(widget.selectedEndTime!.value, locale);
      if (startTime == null || endTime == null) {
        return error_msg_choose_different_end_time.tr;
      }
      if (startTime.isAfter(endTime) || startTime.isAtSameMomentAs(endTime)) {
        return error_msg_choose_different_end_time.tr;
      }
    }

    return '';
  }

  DurationDiscountOffer? _nextDiscountOffer() {
    if (widget.selectedDates.isEmpty ||
        widget.controller is! HomeItemDetailController) {
      return null;
    }
    final controller = widget.controller as HomeItemDetailController;
    final offer = DurationDiscountPresentation.nextOffer(
      weeklyDiscount: controller.itemInfo?.listingData?.weeklyDiscount,
      monthlyDiscount: controller.itemInfo?.listingData?.monthlyDiscount,
      days: _getDaysCount(),
    );
    final maxDays = int.tryParse(
        controller.itemInfo?.listingData?.maxDay?.toString() ?? '');
    if (offer != null &&
        maxDays != null &&
        maxDays > 0 &&
        offer.thresholdDays > maxDays) {
      return null;
    }
    return offer;
  }

  Future<void> _extendToDiscountThreshold(DurationDiscountOffer offer) async {
    if (widget.controller is! HomeItemDetailController) return;
    final controller = widget.controller as HomeItemDetailController;
    _isExtendingDiscount = true;
    try {
      await controller.extendToDiscountThreshold(
        offer: offer,
        currentDays: _getDaysCount(),
        targetDates: widget.selectedDates,
        startTimeValue: widget.selectedStartTime?.value ?? '',
        endTimeValue: widget.selectedEndTime?.value ?? '',
      );
    } finally {
      _isExtendingDiscount = false;
    }
  }

  bool isHaveInBetweenBlockDays(DateTime startDate, DateTime endDate) {
    int diffdays = endDate.difference(startDate).inDays;
    if (diffdays >= 1) {
      for (int i = 0; i <= diffdays; i++) {
        DateTime current = startDate.add(Duration(days: i));
        DateTime dateOnly = DateTime(current.year, current.month, current.day);
        if (widget.blockedDates != null &&
            widget.blockedDates!.containsKey(dateOnly)) {
          if (widget.blockedDates![dateOnly] == 'full' ||
              widget.blockedDates![dateOnly] == widget.blockedHalf) {
            return true;
          }
        }
      }
    }
    return false;
  }

  String _getMultilangDateText(DateTime date) {
    final locale = (Get.locale ?? const Locale('en')).toLanguageTag();
    return '${LocalizedDateTime.weekday(date, locale)},\n'
        '${LocalizedDateTime.monthDay(date, locale)}';
  }

  List<String> _generateTimeList({DateTime? selectedDate, String isFrom = ""}) {
    final now = DateTime.now();
    final locale = (Get.locale ?? const Locale('en')).toLanguageTag();

    final isToday = selectedDate != null &&
        selectedDate.year == now.year &&
        selectedDate.month == now.month &&
        selectedDate.day == now.day;

    List<String> times = [];

    int startHour = 0;
    int startMinute = 0;

    if (isToday) {
      int minute = now.minute;
      (startHour, startMinute) = switch (minute) {
        > 0 && <= 30 => (now.hour, 30),
        > 30 => ((now.hour + 1) % 24, 0),
        _ => (now.hour, 0),
      };
    }

    for (int hour = startHour; hour < 24; hour++) {
      for (int minute in [0, 30]) {
        if (isToday && (hour == startHour && minute < startMinute)) continue;
        if (hour == 23 && minute == 59) break;

        times.add(
            LocalizedDateTime.time(DateTime(2000, 1, 1, hour, minute), locale));
      }
    }

    final endOfDay =
        LocalizedDateTime.time(DateTime(2000, 1, 1, 23, 59), locale);
    times.removeWhere((t) => t == endOfDay);
    times.add(endOfDay);
    if (isToday && widget.selectedStartTime?.value != "") {
      int index = times.indexOf((widget.selectedStartTime?.value ?? ""));
      switch (isFrom) {
        case "start":
          times = times.sublist(index, times.length);
          break;
        case "end":
          times = times.sublist(index + 1, times.length);
          break;
        default:
          break;
      }
    }

    timingMap.clear();

    for (var (index, item) in times.indexed) {
      timingMap["$index"] = item;
    }

    debugPrint("Timing map length ----> ${timingMap.length}");

    return times;
  }

  List<dynamic> _renderTimingSheet({RxList? selectedDate, String isFrom = ""}) {
    _generateTimeList(
      selectedDate:
          isFrom == "start" ? selectedDate?.first : selectedDate?.last,
      isFrom: isFrom,
    );
    List<dynamic> timingList = [];
    timingMap.forEach((k, v) {
      StepItemModel itemModel = StepItemModel(
        itemValue: k,
        itemName: v,
      );
      timingList.add(itemModel);
    });
    return timingList;
  }

  Widget _daysChosenPill() {
    final days = _getDaysCount();
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: appColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: [
        Assets.drawableCalenderTick.toSVG(size: 16),
        5.toWidth(),
        CustomText(
          text:
              "$days ${days <= 1 ? label_day.tr : dayPlural.tr} ${label_selected.tr}",
          size: AppDimen.textSize_14,
          fontWeight: AppFont.regular,
        ),
      ].toRow(mainAxisSize: MainAxisSize.min),
    );
  }

  int _getDaysCount() {
    if (widget.selectedDates.isEmpty) return 0;
    return widget.selectedDates.last
            .difference(widget.selectedDates.first)
            .inDays +
        1;
  }
}
