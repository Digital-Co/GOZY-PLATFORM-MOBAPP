import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/resources/app_layout.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/utils/localized_date_time.dart';
import '../../constant.dart';
import '../common/custom_dialog/custom_dialog.dart';
import 'date_picker_constants.dart';
import 'date_picker_widget.dart';

enum DateTimePickerMode {
  date,
  datetime,
}

class DatePicker {
  static void showSimpleDatePicker(
    BuildContext context, {
    DateTime? firstDate,
    DateTime? lastDate,
    AppLayout? appLayout,
    DateTime? initialDate,
    String? dateFormat,
    required ValueChanged<dynamic> onConfirmDate,
    Locale? locale,
    required BaseController controller,
    DateTimePickerMode pickerMode = DateTimePickerMode.date,
    TextStyle? itemTextStyle,
    String? titleText,
    String? confirmText,
    String? cancelText,
    String? okButtonContent,
    bool looping = false,
    bool reverse = false,
  }) {
    firstDate ??= DateTime.parse(DATE_PICKER_MIN_DATETIME);
    lastDate ??= DateTime.parse(DATE_PICKER_MAX_DATETIME);

    initialDate ??= DateTime.now();
    final localeName =
        (locale ?? Get.locale ?? const Locale('en')).toLanguageTag();
    var selectedDate = (
      LocalizedDateTime.shortDate(initialDate, localeName),
      initialDate,
    ).obs;

    showAlertDialog(
      title: titleText ??
          label_set_your.trParams({'field': label_birth_date.tr.toLowerCase()}),
      appLayout: appLayout,
      padding: pad(w: 18, h: 10),
      content: DatePickerWidget(
        firstDate: firstDate,
        lastDate: lastDate,
        initialDate: initialDate,
        dateFormat: dateFormat,
        locale: locale ?? Get.locale,
        titleText:
            titleText ?? label_set_your.trParams({'field': label_birthday.tr}),
        selectedDate: selectedDate,
        onChange: ((DateTime date, list) {
          selectedDate.value = (
            LocalizedDateTime.shortDate(date, localeName),
            date,
          );
        }),
        looping: looping,
      ),
      onOkPressed: () {
        onConfirmDate(selectedDate.value);
        Get.back();
      },
      okButtonContent: okButtonContent ?? label_okay.tr,
      cancelButtonContent: label_cancel.tr,
    );
  }
}
