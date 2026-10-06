import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/resources/app_colors.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/utils/localized_date_time.dart';
import 'package:gozy/widgets/app_toast.dart';
import 'package:gozy/widgets/common/custom_painter/custom_host_special_price_painter.dart';
import 'package:gozy/widgets/common/custom_text/adaptive_fitted_text.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/common/custom_container/custom_container.dart';
import 'package:gozy/widgets/custom_text.dart';
import 'package:gozy/widgets/common_extension_functions.dart';

import '../custom_stateful_widget.dart';
import '../rect_getter.dart';
import 'helper.dart';

class SimpleVerticalCalendar extends CustomStatefulWidget {
  RxList<DateTime>? selectedDates;
  ValueChanged<bool>? isDateBlock;
  Map<DateTime, String>? blockedDates;
  Map<DateTime, List<String>>? specialPriceDates;
  Map<DateTime, List<dynamic>>? bookedDates;

  final int numOfMonth;
  final TextAlign monthTextAlign;
  final CalendarOptions calendarOption;
  final MonthFormats monthFormat;
  final BaseController baseController;
  final Map<String, dynamic>? minMaxNights;
  final GlobalKey<VerticalCalendarState> calendarKey =
      GlobalKey<VerticalCalendarState>();
  final Color DayBGColor;
  Color selectedDayBGColor = appColors.primaryColor;
  final Color dayTextColor;
  final Color selectedDayTextColor;
  final Color unavailableDayTextColor;
  final String? calendarType;
  final String? blockedHalf;
  final bool? isPaddedDividerNeed;
  final DateTime initialDateTime;
  final bool? isBlockedDateStrikeOut;

  SimpleVerticalCalendar({
    super.key,
    this.isBlockedDateStrikeOut,
    this.selectedDates,
    this.blockedHalf,
    this.isDateBlock,
    this.blockedDates,
    this.specialPriceDates,
    this.isPaddedDividerNeed,
    this.bookedDates,
    this.numOfMonth = 12,
    this.calendarType,
    this.minMaxNights,
    this.monthTextAlign = TextAlign.left,
    this.monthFormat = MonthFormats.FULL,
    required this.baseController,
    this.DayBGColor = Colors.transparent,
    this.dayTextColor = Colors.black,
    this.selectedDayTextColor = Colors.white,
    this.unavailableDayTextColor = Colors.grey,
    this.calendarOption = CalendarOptions.RANGE_SELECTION,
    required this.initialDateTime,
  });

  @override
  VerticalCalendarState createState() => VerticalCalendarState();
}

class VerticalCalendarState
    extends CustomStatefulWidgetState<SimpleVerticalCalendar>
    with WidgetsBindingObserver {
  Rx<DateTime> current = DateTime.now().obs;
  int? startMonth;
  int? endMonth;
  int? _availableDateTime, currentmillisec;

  double? boxHeight;
  final double _calendarPadding = 10.0;

  final List<String> _monthNames = [];
  final Map<String, List<Widget?>> _monthDaysWidgets = {};

  bool? _isDisableselectedDate = false;
  int? _availabelMonth;
  List<String>? _dayOfWeek;
  int _firstDayOfWeekIndex = 0;
  DateTime? lastDay;
  final _keys = {};
  @override
  void initState() {
    int scrollindex = 0;
    current.listen((newDateTime) {
      refresh(scrollindex);
    });
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant SimpleVerticalCalendar oldWidget) {
    bool isChanged = widget.blockedDates != oldWidget.blockedDates ||
        widget.specialPriceDates != oldWidget.specialPriceDates ||
        widget.bookedDates != oldWidget.bookedDates ||
        widget.selectedDates != oldWidget.selectedDates;

    if (isChanged) {
      refresh(0);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final firstDay = MaterialLocalizations.of(context).firstDayOfWeekIndex;
    if (_firstDayOfWeekIndex != firstDay) {
      _firstDayOfWeekIndex = firstDay;
      _dayOfWeek = null;
      refresh(0);
    }
  }

  @override
  void didChangePlatformBrightness() {
    AppToast().dismiss();
    super.didChangePlatformBrightness();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void refresh(int scrollindex) {
    _monthNames.clear();
    _monthDaysWidgets.clear();
    currentmillisec =
        DateTime(current.value.year, current.value.month, current.value.day)
            .millisecondsSinceEpoch;
    _availabelMonth = widget.numOfMonth;
    if (widget.minMaxNights != null &&
        widget.minMaxNights!['maxDaysNotice'] != null &&
        widget.minMaxNights!['maxDaysNotice'] != 'available') {
      String monthStr = widget.minMaxNights!['maxDaysNotice']
          .replaceAll(RegExp(r'[^0-9]'), '');
      debugPrint(
          'monthStr: ${int.tryParse(monthStr)} ---${widget.numOfMonth}--${widget.specialPriceDates}');
      _availabelMonth = int.tryParse(monthStr);
      if (_availabelMonth != null) {
        _availableDateTime = DateTime(current.value.year,
                current.value.month + _availabelMonth!, current.value.day)
            .millisecondsSinceEpoch;
      }
    }

    startMonth = current.value.month;
    endMonth = startMonth! + widget.numOfMonth;
    boxHeight = (deviceWidth - 70) / 7;
    final locale = (Get.locale ?? const Locale('en')).toLanguageTag();
    String monthlabel = '';
    if (widget.selectedDates!.isNotEmpty) {
      monthlabel =
          LocalizedDateTime.monthYear(widget.selectedDates!.first, locale);
    }

    bool isBlock = false;

    for (var monthindex = 0;
        monthindex < (_availabelMonth ?? widget.numOfMonth);
        monthindex++) {
      DateTime currentListMonth =
          DateTime(current.value.year, current.value.month + monthindex, 1);
      String monthname = LocalizedDateTime.monthYear(currentListMonth, locale);
      List<DateTime?> days =
          populateDate(currentListMonth, _firstDayOfWeekIndex);
      lastDay = days.last ?? DateTime.now();

      _monthNames.add(monthname);
      List<Widget> dayTableRows = [];
      if (monthlabel == monthname) {
        scrollindex = monthindex;
      }

      for (var WeekperMonth = 0;
          WeekperMonth <= days.length ~/ 7;
          WeekperMonth++) {
        int initialIndex = WeekperMonth * 7 + 0;
        int endIndex = WeekperMonth * 7 + 6;

        if (days.length > initialIndex || days.length > endIndex) {
          List<Widget> listofitems = List.generate(7, (dayperWeek) {
            return Obx(() {
              int? startDate, endDate;
              if (widget.selectedDates!.isNotEmpty) {
                startDate = widget.selectedDates!.first.millisecondsSinceEpoch;
              }
              if (widget.selectedDates!.length > 1) {
                endDate = widget.selectedDates!.last.millisecondsSinceEpoch;
              }
              int dateIndex = WeekperMonth * 7 + dayperWeek;
              DateTime? calenderDate;
              bool isDatesInRange = false,
                  isDateFirstandLast = false,
                  isInvalidateDate = false,
                  fullyblock = false,
                  isHostBlock = false,
                  isHostSpecialPrice = false,
                  isHostBooked = false;
              int? calendermillisec;

              if (days.length > dateIndex && days[dateIndex] != null) {
                calenderDate = days[dateIndex];

                calendermillisec = calenderDate!.millisecondsSinceEpoch;
                isBlock = _availableDateTime != null &&
                    (_availableDateTime! <= calendermillisec);
                if (startDate != null && endDate != null) {
                  isDatesInRange =
                      checkInRange(calendermillisec, startDate, endDate);
                  isDateFirstandLast =
                      checkIsFirstOrLast(calendermillisec, startDate, endDate);
                }

                isInvalidateDate =
                    checkInvalidDate(dateIndex, days, current: current.value);
                if (widget.blockedDates != null &&
                    widget.blockedDates![calenderDate] != null) {
                  fullyblock = (widget.blockedDates![calenderDate] == 'full');
                  if ((widget.isDateBlock != null &&
                      (widget.blockedDates![calenderDate] == 'full' ||
                          widget.blockedDates![calenderDate] ==
                              widget.blockedHalf) &&
                      isDatesInRange)) {
                    widget.isDateBlock!(true);
                  }
                  isHostBlock = widget.blockedDates![calenderDate]!.isNotEmpty;
                }
                if (widget.bookedDates != null &&
                    widget.bookedDates![calenderDate] != null) {
                  fullyblock =
                      (widget.bookedDates![calenderDate]![0] == 'full');
                  isHostBooked =
                      widget.bookedDates![calenderDate]!.isNotEmpty &&
                          widget.calendarType == 'host';
                }
                if (widget.specialPriceDates != null &&
                    widget.specialPriceDates![calenderDate] != null) {
                  fullyblock =
                      (widget.specialPriceDates![calenderDate]![0] == 'full');
                  isHostSpecialPrice =
                      widget.specialPriceDates![calenderDate]!.isNotEmpty &&
                          widget.calendarType == 'host';
                }
              }
              _keys[calenderDate] = RectGetter.createGlobalKey();

              bool isOnTapEnable = calendermillisec != null &&
                  (_availableDateTime == null ||
                      _availableDateTime! > calendermillisec) &&
                  !isInvalidateDate &&
                  (widget.calendarType == 'host' ? !isHostBooked : !fullyblock);

              return toOnTap(
                onLongPress: () {
                  if (widget.calendarType != "host") {
                    if (isOnTapEnable) {
                      switch (widget.calendarOption) {
                        case CalendarOptions.RANGE_SELECTION:
                          rangeSelectedTapEvent(calenderDate!);
                          break;
                        case CalendarOptions.SINGLE:
                          singleSelectedTapEvent(calenderDate!);
                          break;
                        default:
                          rangeSelectedTapEvent(calenderDate!);
                          break;
                      }
                    }
                  }
                  if (isHostSpecialPrice && !isDatesInRange) {
                    Rect? overlayrect =
                        RectGetter.getRectFromKey(_keys[calenderDate]);
                    AppToast().show(
                      seconds: 100,
                      overlayWidget: CustomHostSpecialPricePainter(
                        text:
                            '${label_host_calendar_special_price_long_press_to_see.tr.split('-')[0].trim()}: ${widget.baseController.getCurrencySymbol()} ${widget.specialPriceDates![calenderDate]![1]}',
                        textStyle: TextStyle(
                            color: appColors.white,
                            fontSize: 12,
                            fontFamily: AppFont.font),
                        borderWidth: 1.5,
                        borderRadius: 8,
                        borderColor: appColors.black,
                        boxColor: appColors.black,
                        arrowColor: appColors.black,
                        arrowHeight: 7.0,
                        arrowWidth: 15.0,
                        shadowBlurRadius: 4.0,
                        shadowOffset: Offset(1, 1),
                        shadowColor:
                            AppColors.staticblack.withValues(alpha: 0.2),
                        itemRect: overlayrect ?? Rect.zero,
                      ),
                    );
                  }
                },
                onTap: () {
                  if (widget.calendarType == 'host') {
                    if (isHostBooked) {
                      if (widget.selectedDates != null &&
                          widget.selectedDates!.isNotEmpty) {
                        isOnTapEnable = isOnTapEnable &&
                            (widget.bookedDates![calenderDate]![0] ==
                                        'firstHalf' &&
                                    calenderDate!.isBefore(
                                        widget.selectedDates!.first) ||
                                (widget.bookedDates![calenderDate]![0] ==
                                        'secondHalf' &&
                                    !calenderDate!.isBefore(
                                        widget.selectedDates!.first)));
                      } else {
                        isOnTapEnable = isOnTapEnable &&
                            widget.bookedDates![calenderDate]![0] ==
                                'firstHalf';
                      }
                    }
                  }
                  if (isOnTapEnable) {
                    switch (widget.calendarOption) {
                      case CalendarOptions.RANGE_SELECTION:
                        rangeSelectedTapEvent(calenderDate!,
                            blockedHalf:
                                isHostBlock && widget.blockedDates != null
                                    ? widget.blockedDates![calenderDate]
                                    : null);
                        break;
                      case CalendarOptions.SINGLE:
                        singleSelectedTapEvent(calenderDate!);
                        break;
                      default:
                        rangeSelectedTapEvent(calenderDate!,
                            blockedHalf:
                                isHostBlock && widget.blockedDates != null
                                    ? widget.blockedDates![calenderDate]
                                    : null);
                        break;
                    }
                  }
                },
                child: Container(
                  height: boxHeight,
                  key: _keys[calenderDate],
                  alignment: Alignment.center,
                  decoration: isDateFirstandLast &&
                          calendermillisec == startDate &&
                          startDate != endDate
                      ? getDecoration(
                          primaryColor: widget.selectedDayBGColor,
                          isRect: true,
                          isStartRadius: true,
                          isHostSpecialPrice: isHostSpecialPrice)
                      : isDateFirstandLast &&
                              calendermillisec == endDate &&
                              startDate != endDate
                          ? getDecoration(
                              primaryColor: widget.selectedDayBGColor,
                              isRect: true,
                              isEndRadius: true,
                              isHostSpecialPrice: isHostSpecialPrice)
                          : isDatesInRange && startDate != endDate
                              ? BoxDecoration(
                                  color: widget.selectedDayBGColor,
                                )
                              : isDateFirstandLast && startDate == endDate
                                  ? getDecoration(
                                      primaryColor: widget.selectedDayBGColor,
                                      isHostSpecialPrice: isHostSpecialPrice)
                                  : isHostSpecialPrice
                                      ? BoxDecoration(
                                          color: appColors.discountAmountColor,
                                          shape: BoxShape.circle)
                                      : isHostBooked &&
                                              widget.calendarType == 'host'
                                          ? BoxDecoration(
                                              color:
                                                  appColors.calenderBookedColor,
                                              shape: BoxShape.circle)
                                          : isHostBlock &&
                                                  widget.calendarType == 'host'
                                              ? BoxDecoration(
                                                  color: appColors.errorRed,
                                                  shape: BoxShape.circle)
                                              : null,
                  margin: pad(
                      h: 2.5,
                      start: dayperWeek == 0 ? _calendarPadding : 0,
                      end: dayperWeek == 6 ? _calendarPadding : 0),
                  child: Container(
                      height: boxHeight!,
                      width: ((deviceWidth - (_calendarPadding * 2)) / 7),
                      alignment: Alignment.center,
                      decoration: isDateFirstandLast &&
                              calendermillisec == startDate &&
                              startDate != endDate
                          ? getDecoration(
                              primaryColor: widget.selectedDayBGColor,
                              isRect: true,
                              isStartRadius: true,
                              isHostSpecialPrice: isHostSpecialPrice)
                          : isDateFirstandLast &&
                                  calendermillisec == endDate &&
                                  startDate != endDate
                              ? getDecoration(
                                  primaryColor: widget.selectedDayBGColor,
                                  isRect: true,
                                  isEndRadius: true,
                                  isHostSpecialPrice: isHostSpecialPrice)
                              : ((isDatesInRange && startDate == endDate))
                                  ? getDecoration(
                                      primaryColor: widget.selectedDayBGColor,
                                      isHostSpecialPrice: isHostSpecialPrice)
                                  : ((isDatesInRange && startDate != endDate))
                                      ? BoxDecoration(
                                          color: widget.selectedDayBGColor,
                                        )
                                      : calendermillisec != null &&
                                              currentmillisec != null &&
                                              currentmillisec ==
                                                  calendermillisec &&
                                              calendermillisec != startDate
                                          ? BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  width: 1,
                                                  color: appColors.black),
                                            )
                                          : null,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomText(
                            text: calenderDate != null
                                ? calenderDate.day.toString()
                                : "",
                            textAlign: TextAlign.center,
                            size: AppDimen.textSize_14,
                            color: isInvalidateDate
                                ? widget.unavailableDayTextColor
                                : isDatesInRange
                                    ? widget.selectedDayTextColor
                                    : (isBlock || fullyblock) &&
                                            (widget.isBlockedDateStrikeOut ??
                                                false)
                                        ? widget.unavailableDayTextColor
                                        : isBlock || fullyblock
                                            ? AppColors.staticwhite
                                            : appColors.black,
                          ),
                          if ((isBlock || fullyblock) &&
                              (widget.isBlockedDateStrikeOut ?? false))
                            CustomContainer(
                              height: 1,
                              width: 14,
                              color: appColors.black,
                            ),
                        ],
                      )),
                ),
              );
            });
          });
          Widget row = listofitems.toRow();
          dayTableRows.add(row);
        }
      }
      _monthDaysWidgets[monthname] = dayTableRows;
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
        if (widget.bookedDates != null &&
            widget.bookedDates!.containsKey(dateOnly)) {
          if (widget.bookedDates![dateOnly] != null &&
              widget.bookedDates![dateOnly]!.isNotEmpty &&
              widget.bookedDates![dateOnly]![0] == 'full') {
            return true;
          }
        }
      }
    }
    return false;
  }

  void rangeSelectedTapEvent(DateTime selectedDay, {String? blockedHalf}) {
    if (widget.selectedDates!.isEmpty ||
        widget.selectedDates!.first.compareTo(selectedDay) > 0) {
      if (widget.calendarType == 'availability') {
        DateTime enddate = selectedDay;
        if ((lastDay?.millisecondsSinceEpoch ?? 0.0) <
            enddate.millisecondsSinceEpoch) {
          AppToast().show(
              message:
                  '${error_msg_host_requires_a_minimum_stay.tr} ${widget.minMaxNights?['minnight']} ${label_day.trPlural(dayPlural.tr, widget.minMaxNights?['minnight'])}');
          return;
        }
        bool isallow = (_availableDateTime != null &&
                _availableDateTime! > enddate.millisecondsSinceEpoch) ||
            _availableDateTime == null;
        debugPrint('isallow:1111: $isallow -- $blockedHalf');
        if (isallow && (blockedHalf == 'firstHalf' || blockedHalf == null)) {
          widget.selectedDates!.value = [selectedDay, enddate];
        }
      } else {
        widget.selectedDates!.value = [selectedDay, selectedDay];
      }
    } else if (widget.selectedDates!.first
            .compareTo(widget.selectedDates!.last) ==
        0) {
      if (widget.calendarType == 'availability' &&
          isHaveInBetweenBlockDays(widget.selectedDates!.first, selectedDay)) {
        AppToast().show(message: those_dates_are_not_available.tr);
        widget.selectedDates!.value = [selectedDay, selectedDay];
        return;
      }
      widget.selectedDates!.value = [widget.selectedDates!.first, selectedDay];
    } else if (widget.calendarType == 'availability') {
      DateTime enddate = widget.selectedDates!.isEmpty ||
              !(selectedDay.isBefore(widget.selectedDates!.first))
          ? selectedDay.add(Duration(days: 0))
          : widget.selectedDates!.last;
      debugPrint('isallow: $_isDisableselectedDate -- $blockedHalf');
      if (!_isDisableselectedDate! &&
          !widget.selectedDates!.contains(selectedDay)) {
        if (blockedHalf == widget.blockedHalf || blockedHalf == null) {
          if (isHaveInBetweenBlockDays(
              widget.selectedDates!.first, selectedDay)) {
            AppToast().show(message: those_dates_are_not_available.tr);
            widget.selectedDates!.value = [selectedDay, selectedDay];
            return;
          }
          widget.selectedDates!.value = [
            widget.selectedDates!.first,
            selectedDay
          ];
        }
      } else {
        _isDisableselectedDate = false;
        DateTime enddate = selectedDay.add(Duration(days: 0));
        bool isallow = (_availableDateTime != null &&
                _availableDateTime! > enddate.millisecondsSinceEpoch) ||
            _availableDateTime == null;
        if (isallow) {
          if ((lastDay?.millisecondsSinceEpoch ?? 0.0) <
              enddate.millisecondsSinceEpoch) {
            AppToast().show(
                message:
                    '${error_msg_host_requires_a_minimum_stay.tr} ${widget.minMaxNights?['minnight']} ${label_day.trPlural(dayPlural.tr, widget.minMaxNights?['minnight'])}');
            return;
          }
          widget.selectedDates!.value = [selectedDay, enddate];
        }
      }
    } else {
      DateTime startdate = selectedDay;
      if (widget.selectedDates!.last.isBefore(selectedDay)) {
        startdate = widget.selectedDates!.first;
      }
      widget.selectedDates!.value = [startdate, selectedDay];
    }
    widget.selectedDates!.refresh();
  }

  void singleSelectedTapEvent(DateTime selectedDay) {
    widget.selectedDates!.value = [selectedDay, selectedDay];
    widget.selectedDates!.refresh();
  }

  @override
  Widget build(BuildContext context) {
    current.value = widget.initialDateTime ?? DateTime.now();
    print("current--->${widget.isBlockedDateStrikeOut}");
    return _showCalendarList();
  }

  ListView _showCalendarList() {
    return ListView.builder(
      itemCount: _monthNames.length,
      shrinkWrap: true,
      cacheExtent: 999,
      padding: EdgeInsets.only(
          bottom: widget.calendarType == 'host' ? bottomPadForExtendBody : 0),
      key: widget.calendarKey,
      addAutomaticKeepAlives: true,
      itemBuilder: (context, index) {
        final narrowWeekdays = MaterialLocalizations.of(context).narrowWeekdays;
        _dayOfWeek ??= [
          ...narrowWeekdays.skip(_firstDayOfWeekIndex),
          ...narrowWeekdays.take(_firstDayOfWeekIndex),
        ];
        return [
          (overALLThemeType == 2 ? 10.0 : AppDimen.startMargin).toHeight(),
          CustomTitleText(
            text: _monthNames[index],
            size: AppDimen.textSize_20,
            color: appColors.textColor,
            fontWeight: FontWeight.w500,
            textAlign: widget.monthTextAlign,
          ).toPad(start: 10 + _calendarPadding),
          10.toHeight(),
          [
            _calendarPadding.toWidth(),
            for (var i in _dayOfWeek!)
              CustomContainer(
                alignment: Alignment.center,
                padding: pad(h: 10, w: 5),
                width: ((deviceWidth - (_calendarPadding * 2)) / 7),
                body: AdaptiveFittedText(
                  text: i,
                  color: widget.unavailableDayTextColor,
                  fontWeight: AppFont.medium,
                  size: AppDimen.textSize_16,
                ),
              ),
            _calendarPadding.toWidth(),
          ].toRow(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround),
          for (Widget? row in _monthDaysWidgets[_monthNames[index]]!) row!,
          Obx(
            () => widget.selectedDates != null &&
                    widget.selectedDates!.value.isNotEmpty &&
                    _monthNames.length - 1 == index
                ? 35.toHeight()
                : overALLThemeType == 2
                    ? 0.toHeight()
                    : 15.toHeight(),
          ),
          widget.isPaddedDividerNeed == null
              ? 0.toHeight()
              : widget.isPaddedDividerNeed!
                  ? filterDivider.toPad(horizontal: AppDimen.startMargin)
                  : filterDivider,
        ].toColumn(
            key: GlobalObjectKey(_monthNames[index]),
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max);
      },
    );
  }

  BoxDecoration getDecoration(
      {required Color primaryColor,
      bool? isRect,
      bool? isStartRadius,
      bool? isEndRadius,
      bool? isHostSpecialPrice}) {
    debugPrint("getDecoration: $isRect --- $isStartRadius --- $isEndRadius");
    return BoxDecoration(
      shape: isRect != null && isRect ? BoxShape.rectangle : BoxShape.circle,
      borderRadius: isStartRadius != null || isEndRadius != null
          ? BorderRadiusDirectional.only(
              topStart: Radius.circular(
                  isStartRadius != null && isStartRadius ? 30 : 0),
              bottomStart: Radius.circular(
                  isStartRadius != null && isStartRadius ? 30 : 0),
              topEnd:
                  Radius.circular(isEndRadius != null && isEndRadius ? 30 : 0),
              bottomEnd:
                  Radius.circular(isEndRadius != null && isEndRadius ? 30 : 0),
            )
          : null,
      color: primaryColor,
    );
  }
}
