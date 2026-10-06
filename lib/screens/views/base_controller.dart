import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart'
    as map;
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:intl/intl.dart' as intl;
import 'package:lottie/lottie.dart';
import 'package:mime/mime.dart';
import 'package:gozy/app_localizations.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/constant.dart' as Constants;
import 'package:gozy/constant.dart';
import 'package:gozy/widgets/bottom_sheet/bottom_sheet_refresh_controller.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.data.gql.dart';
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.req.gql.dart';
import 'package:gozy/graphql/__generated__/listing_fragment.data.gql.dart';
import 'package:gozy/graphql/__generated__/listing_fragment.req.gql.dart';
import 'package:gozy/graphql/__generated__/reservation_fragment.data.gql.dart';
import 'package:gozy/graphql/__generated__/reservation_fragment.req.gql.dart';
import 'package:gozy/model/country_code_model.dart';
import 'package:gozy/pref/app_preference.dart';
import 'package:gozy/resources/app_colors.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/resources/app_style.dart';
import 'package:gozy/utils/localized_date_time.dart';
import 'package:gozy/screens/views/auth/login/login.dart';
import 'package:gozy/screens/views/home/home_controller.dart';
import 'package:gozy/widgets/common/custom_dialog/custom_dialog.dart';
import 'package:gozy/utils/country_codes.dart';
import 'package:gozy/widgets/app_toast.dart';
import 'package:gozy/widgets/checkbox_group.dart';
import 'package:gozy/widgets/common/custom_painter/custom_map_marker.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/conditional_parent_widget.dart';
import 'package:gozy/widgets/common/custom_container/custom_container.dart';

import 'package:gozy/widgets/gradient_border_container.dart';
import 'package:gozy/widgets/rect_getter.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../resources/app_dimen.dart';
import '../../resources/app_layout.dart';
import '../../utils/custom_multipart_request.dart';
import '../../widgets/custom_text.dart';
import '../binding/auth_binding.dart';
import 'guest/searched/searched_listings_controller.dart';
import 'home/home_navigator.dart';
import 'home/home_page.dart';
import 'home_item_detail/home_item_detail_controller.dart';
import 'home_item_detail/home_item_detail_navigator.dart';
import 'splash/splash.dart';

part 'base_controller_part2.dart';
part 'base_controller_part3.dart';

AppTheme appTheme = AppTheme();
AppColors appColors = AppColors();

class BaseController extends FullLifeCycleController
    with FullLifeCycleMixin
    implements DisposableInterface {
  RxBool isLoading = false.obs;
  RxBool isTapEnabled = true.obs;
  bool isSaveAndExit = false;
  SnackbarController? retrySnackController;
  var isRxBottomSheetLoading =
      ReactiveVariable("isRxBottomSheetLoading", false);
  HomeNavigator? homeNavigator;
  final Connectivity _connectivity = Connectivity();
  final AppPreference appPreference = Get.find();
  var passwordCount = 8;

  static const double imagePixelRatio = 2.5;

  late HomeItemDetailController controllers = Get.find();

  late AnimationController _animationController;
  late OverlayEntry transitionOverlayEntry;
  late Animation<Rect?> rectAnimation;
  Widget _transitionWidget = const SizedBox.shrink();
  GlobalKey<RectGetterState>? _startkey, _endkey;
  BuildContext? _buildContext;
  CustomMultipartRequest? customMultipartRequest;
  static Socket socketIO = io(
      '${Constants.UPLOAD_URL}/',
      OptionBuilder()
          .setQuery({
            "auth": "---",
            "info": "new connection",
            "timestamp": DateTime.now().toString()
          })
          .setTransports(['websocket'])
          .setExtraHeaders({'auth': Constants.authToken})
          .enableAutoConnect()
          .build());
  Function? netOFFFunction;
  double previousprogress = 0.0;
  RxString uploadProgress = '0'.obs;

  void change({required ReactiveVariable rxVariable, required dynamic value}) {
    rxVariable.updateValue(value);
    update([rxVariable.id]);
  }

  void resetFerryClient({bool isCacheClear = true}) {
    final point = StackTrace.current.toString().split('\n')[1];
    print('getLink --resetFerryClient --- test9 $point');
    if (isCacheClear) {
      FerryLoggerClient.client?.cache.clear();
    }

    getLink();
  }

  AppLifecycleListener registerLifeCycleListener({
    VoidCallback? onResume,
    VoidCallback? onPause,
  }) {
    return AppLifecycleListener(
      onShow: () => debugPrint('show'),
      onResume: () {
        debugPrint('resume');
        if (onResume != null) {
          onResume();
        }
      },
      onHide: () => debugPrint('hide'),
      onInactive: () {
        debugPrint('onInactive');
        if (onPause != null) {
          onPause();
        }
      },
      onPause: () {
        debugPrint('onPause');
        if (onPause != null) {
          onPause();
        }
      },
      onDetach: () => debugPrint('detach'),
      onRestart: () => debugPrint('restart'),
    );
  }

  void hideKeyBoard() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  void hideSnackBar() {
    if (Get.context != null) {
      ScaffoldMessenger.maybeOf(Get.context!)?.hideCurrentSnackBar();
    }
    Get.closeAllSnackbars();
  }

  void showSnackBar(
    String? msg, {
    bool isltralign = false,
    double? borderRadius,
  }) {
    print("msg----> $msg");
    if (msg == null) return;

    SnackbarController? controller;

    void closeSnackBar() async {
      try {
        if (controller != null) {
          await controller?.close();
        }
      } catch (e) {
        debugPrint("closeSnackBar error: $e");
      }
    }

    controller = Get.showSnackbar(
      GetSnackBar(
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: appColors.black,
        margin: const EdgeInsets.all(12),
        borderRadius: borderRadius ??
            appLayoutMap[AppLayout.buttonType]?.borderRadius ??
            0,
        borderWidth: 2,
        animationDuration: Duration.zero,
        borderColor: appColors.snackBarBorderColor,
        duration: const Duration(milliseconds: 5000),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        messageText: ConditionalParentWidget(
          condition: isltralign,
          parentBuilder: (Widget child) => Directionality(
            textDirection: ui.TextDirection.ltr,
            child: child,
          ),
          child: Text(
            msg,
            textAlign: intl.Bidi.isRtlLanguage(Get.locale?.languageCode)
                ? TextAlign.end
                : TextAlign.start,
            style: TextStyle(
              fontFamily: AppFont.font,
              fontWeight: FontWeight.w500,
              color: appColors.white,
            ),
          ),
        ),
        mainButton: IconButton(
          icon: Icon(Icons.close, color: appColors.white),
          onPressed: closeSnackBar,
        ),
      ),
    );
  }

  String getAddressText(
      {required dynamic itemInfo, bool isAfterBooking = false}) {
    List<String> addressParts = [];

    if (itemInfo.street != null && isAfterBooking) {
      addressParts.add(itemInfo.street);
    }
    if (itemInfo.city != null) {
      addressParts.add(itemInfo.city);
    }
    if (itemInfo.state != null) {
      addressParts.add(itemInfo.state);
    }
    if (itemInfo.country != null) {
      addressParts.add(itemInfo.country);
    }
    if (itemInfo.zipcode != null && isAfterBooking) {
      addressParts.add(itemInfo.zipcode);
    }
    return addressParts.join(', ');
  }

  void showUserLogout({String? msg, bool? isHomePage}) async {
    print(
        "showUserLogoutmsg:1 ${appPreference.defaultLanguages} --- ${appPreference.preferredLanguage} --- ${appPreference.downloadedLanguages}");
    appPreference.removePreference();
    resetFerryClient();
    FirebaseMessaging.instance.deleteToken().then((value) {
      getFCMToken();
    });
    appPreference.preferredCurrency = defaultCurrency;
    changeTheme(isEnableForceUpdate: false);
    await LocalizationService.readJson(
        language: appPreference.defaultLanguages ?? defaultLanguage,
        isUpdate: false);
    changeLanguage();
    if (isHomePage != null && isHomePage) {
      resetLogin(isLogin: false);
    }
    Constants.verificationEmail = null;
    Constants.confirmationCode = null;
  }

  void showSnackBarWithRetry(Function calledFunction,
      {String? msg,
      bool isNeedRetry = true,
      double? borderRadius,
      bool? isMessageTextWidget}) {
    String messageContent = you_are_offline.tr == you_are_offline
        ? 'You are offline'
        : you_are_offline.tr;
    String retryContent =
        label_retry.tr == label_retry ? 'Retry' : label_retry.tr;

    SnackbarController? localController;

    void closeSnackBar() async {
      try {
        if (localController != null) {
          await localController?.close();
        } else if (retrySnackController != null) {
          await retrySnackController?.close();
        }
      } catch (e) {
        debugPrint("closeSnackBar error: $e");
      }
    }

    if (Get.isSnackbarOpen) {
      Get.closeAllSnackbars();
    }

    GetSnackBar snackBar = GetSnackBar(
      messageText:
          CustomText(text: msg ?? messageContent, color: appColors.white),
      snackPosition: SnackPosition.BOTTOM,
      borderWidth: 2,
      borderRadius:
          borderRadius ?? appLayoutMap[AppLayout.buttonType]?.borderRadius ?? 0,
      backgroundColor: appColors.black,
      duration:
          isNeedRetry ? const Duration(days: 1) : const Duration(seconds: 5),
      margin: const EdgeInsets.all(16),
      animationDuration: const Duration(milliseconds: 400),
      mainButton: isNeedRetry
          ? TextButton(
              onPressed: () {
                closeSnackBar();
                debugPrint("showSnackBarWithRetry ontap:");
                checkNetwork(calledFunction);
              },
              child: Text(
                retryContent,
                style: TextStyle(color: appColors.secondaryColor),
              ),
            )
          : IconButton(
              icon: Icon(Icons.close, color: appColors.white),
              onPressed: () {
                closeSnackBar();
              },
            ),
    );
    localController = Get.showSnackbar(snackBar);
    retrySnackController = localController;
  }

  bool isValidEmail(String email) {
    debugPrint(
        "isValidEmailcheck: ${email.isEmpty}----${(email.isEmail && (email[email.length - 1].isAlphabetOnly || email[email.length - 1].isNumericOnly))}");
    if (email.isEmpty) {
      return false;
    } else {
      return (email.isEmail &&
          (email[email.length - 1].isAlphabetOnly ||
              email[email.length - 1].isNumericOnly));
    }
  }

  void checkNetwork(Function calledFunction, {bool isNeedRetry = true}) {
    netOFFFunction = calledFunction;
    if (internetStatus == InternetStatus.connected) {
      if (netOFFFunction != null) netOFFFunction!();
    } else {
      internetConnection.hasInternetAccess.then((isconnect) {
        print('checkernetwork status: $internetStatus --- $isconnect');
        if (isconnect) {
          internetStatus = InternetStatus.connected;
          if (netOFFFunction != null) netOFFFunction!();
        } else {
          if (netOFFFunction != null) {
            showSnackBarWithRetry(
              netOFFFunction!,
              isNeedRetry: isNeedRetry,
            );
          }
        }
      });
    }
  }

  Future<bool> isNetworkConnected({bool isshowToast = true}) async {
    List<ConnectivityResult> connectivityResult;
    connectivityResult = await (_connectivity.checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      if (isshowToast) {
        showToast(you_are_offline.tr);
      }
      return false;
    } else {
      hideSnackBar();
      bool isnetConnected = await internetConnection.hasInternetAccess;
      if (!isnetConnected) {
        if (isshowToast) {
          showToast(you_are_offline.tr);
        }
      }
      return isnetConnected;
    }
  }

  Future<String> getMultilangContent({required String content}) async {
    String url =
        "https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=${appPreference.preferredLanguage}&dt=t&q=$content";
    debugPrint('url: $url');
    var uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      String data = response.body;
      List<dynamic> decodedData = jsonDecode(data);
      return decodedData[0][0][0];
    } else {
      return content;
    }
  }

  String? getDynamicValue(dynamic dynamicValue) {
    if (dynamicValue == null) return null;
    try {
      Map<String, dynamic> data;
      if (dynamicValue is Map<String, dynamic>) {
        data = dynamicValue;
      } else {
        data = dynamicValue.toJson();
      }
      String? value = data[appPreference.preferredLanguage]?.toString().trim();
      if (value == null || value.isEmpty) {
        value = data[defaultLanguage]?.toString().trim();
      }
      if (value!.isEmpty) return null;
      return value;
    } catch (e) {
      return null;
    }
  }

  String getLocalizedItemName(dynamic item) {
    if (item == null) return "";
    try {
      Map<String, dynamic> itemMap =
          item is Map<String, dynamic> ? item : item.toJson();
      return itemMap['itemName']?.toString() ?? "";
    } catch (e) {
      debugPrint("getLocalizedItemName error: $e");
      try {
        if (item is Map) {
          return item['itemName']?.toString() ?? "";
        }
        return "";
      } catch (ee) {
        return "";
      }
    }
  }

  getcheckinTime(String time) {
    return bookingTimeList?[time];
  }

  Future<Size> getImageSize({required ImageProvider image}) async {
    final config = image.resolve(ImageConfiguration());
    ImageStreamCompleter? imageStream = config.completer;

    final completer = Completer<ImageInfo>();
    imageStream?.addListener(ImageStreamListener((info, _) {
      completer.complete(info);
    }));
    final info = await completer.future;
    return Size(info.image.width.toDouble(), info.image.height.toDouble());
  }

  double convertTo24Hour(String timeString) {
    if (timeString.isEmpty) return 0.0;
    try {
      final locale = (Get.locale ?? const Locale('en')).toLanguageTag();
      final dateTime = LocalizedDateTime.tryParseTime(timeString, locale);
      if (dateTime == null) return 0.0;

      double hour = double.parse(intl.DateFormat('H').format(dateTime));
      double minute = double.parse(intl.DateFormat('m').format(dateTime));

      return hour + (minute / 60.0);
    } catch (e) {
      debugPrint("convertTo24Hour error: $e");
      return 0.0;
    }
  }

  String getStartTime({
    required String checkinTime,
    required String checkoutTime,
  }) {
    String starttime = '';
    String checkinstart = checkinTime;
    String checkinend = checkoutTime;
    debugPrint("checkinstart: $checkinstart----$checkinend");
    const flexible = 'Flexible';

    starttime = switch ((checkinstart, checkinend)) {
      (flexible, flexible) => label_flexible_checkin_time.tr,
      (var start, flexible) when start != flexible =>
        '${label_from.tr}: ${getcheckinTime(start)}',
      (flexible, var end) when end != flexible =>
        '${label_upto.tr}: ${getcheckinTime(end)}',
      (var start, var end) =>
        '${getcheckinTime(start)} - ${getcheckinTime(end)}',
    };
    return starttime;
  }

  String formatBookingTime(String? time) {
    if (time == null ||
        time.isEmpty ||
        time.contains('null') ||
        time.contains('undefined')) return "";
    try {
      double timeValue = double.parse(time);
      int hours = timeValue.floor();
      int minutes = ((timeValue - hours) * 60).round();
      String period = hours >= 12 ? 'PM' : 'AM';
      int displayHours = hours % 12;
      if (displayHours == 0) displayHours = 12;
      String minuteStr = minutes.toString().padLeft(2, '0');
      return "$displayHours:$minuteStr $period";
    } catch (e) {
      return time;
    }
  }

  Widget reservationDateInfo({
    required String checkinDate,
    required String checkoutDate,
    required String checkinTime,
    required String checkoutTime,
    String isFrom = '',
    Color? headerColor,
    Color? dateColor,
    Color? timeColor,
    double? headerFontSize,
    CrossAxisAlignment endCrossAxisAlignment = CrossAxisAlignment.end,
    double? fontSize,
    FontWeight? fontWeight,
    bool isFromCancelTrip = false,
    FontWeight? headerFontWeight,
    GestureTapCallback? onTap,
  }) {
    String startdate =
        getDateFormat(dateFormat: reservationDateformat, milliSec: checkinDate)
            .$1;
    String enddate =
        getDateFormat(dateFormat: reservationDateformat, milliSec: checkoutDate)
            .$1;
    return IntrinsicHeight(
      child: [
        Expanded(
          child: toOnTap(
              child: _customDateTimeView(
                  headerFontWeight: headerFontWeight ?? AppFont.medium,
                  headerText: label_trip_start.tr,
                  date: startdate,
                  time: isFrom == "review_pay"
                      ? checkinTime
                      : formatBookingTime(checkinTime),
                  crossAxisAlignment: CrossAxisAlignment.start,
                  headerColor: headerColor,
                  headerFontSize: headerFontSize,
                  dateColor: dateColor,
                  timeColor: timeColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight),
              onTap: onTap ??
                  () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    if (!isFromCancelTrip) {
                      controllers.homeItemDetailNavigator
                          ?.navigateScreen(HomeItemDetailScreen.Calendar, "");
                    }
                  }),
        ),
        Align(
          alignment: Alignment.center,
          child: ViewdetailArrowsvg!.toSVG(
              quarterTurns:
                  intl.Bidi.isRtlLanguage(Get.locale?.languageCode) ? 2 : 0,
              size: 15,
              colour: appColors.black,
              replaceableValues: {
                'stroke-width="0.1"': 'stroke-width="0.5"'
              }).toPad(end: 24),
        ),
        Expanded(
          child: toOnTap(
              child: _customDateTimeView(
                  headerFontWeight: headerFontWeight ?? AppFont.medium,
                  headerText: label_trip_end.tr,
                  date: enddate,
                  time: isFrom == "review_pay"
                      ? checkoutTime
                      : formatBookingTime(checkoutTime),
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textAlign: TextAlign.start,
                  headerColor: headerColor,
                  headerFontSize: headerFontSize,
                  dateColor: dateColor,
                  timeColor: timeColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight),
              onTap: onTap ??
                  () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    if (!isFromCancelTrip) {
                      controllers.homeItemDetailNavigator
                          ?.navigateScreen(HomeItemDetailScreen.Calendar, "");
                    }
                  }),
        )
      ].toRow(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start),
    );
  }

  Widget _customDateTimeView(
      {required String headerText,
      required String date,
      required String time,
      required CrossAxisAlignment crossAxisAlignment,
      TextAlign textAlign = TextAlign.start,
      Color? headerColor,
      Color? dateColor,
      Color? timeColor,
      double? headerFontSize,
      double? fontSize,
      FontWeight? fontWeight,
      FontWeight? headerFontWeight}) {
    return [
      CustomText(
        text: headerText,
        size: headerFontSize ?? AppDimen.textSize_14,
        fontWeight: headerFontWeight ?? AppFont.medium,
        color: headerColor ?? appColors.customTextColor,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        textAlign: textAlign,
      ),
      6.toHeight(),
      CustomText(
          text: date,
          size: fontSize ?? AppDimen.textSize_14,
          fontWeight: fontWeight ?? AppFont.regular,
          color: dateColor ?? appColors.customTextColor,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          textDirection: TextDirection.ltr,
          textAlign: textAlign),
      4.toHeight(),
      CustomText(
          text: time,
          size: fontSize ?? AppDimen.textSize_14,
          fontWeight: fontWeight ?? AppFont.regular,
          color: timeColor ?? appColors.customTextColor,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          textDirection: TextDirection.ltr,
          textAlign: textAlign),
    ].toColumn(
        mainAxisSize: MainAxisSize.min, crossAxisAlignment: crossAxisAlignment);
  }

  String getCurrencySymbol({String? currency}) {
    final code = currency ?? appPreference.preferredCurrency;

    final format = intl.NumberFormat.simpleCurrency(name: code);
    final symbol = format.currencySymbol;

    const overrides = {
      'HKD': 'HK\$',
      'MXN': 'MX\$',
      'NZD': 'NZ\$',
      'CNY': 'CN¥',
      'AUD': 'A\$',
      'CAD': 'CA\$',
      'ZAR': 'R',
    };

    final rawSymbol = overrides[code] ?? symbol;
    return '\u202A$rawSymbol\u202C';
  }

  DateTime getDateFromString(String date) {
    intl.DateFormat format = intl.DateFormat(dobAPIFormat);
    DateTime dateTime = format.parse(date);
    return dateTime;
  }

  Map<String, bool> checkUserVerficiation() {
    debugPrint("appPreference.isUserVerified: ${appPreference.isUserVerified}");
    Map<String, bool> results = {};
    results[label_error_msg_email_is_not_verified_please_verify_it.tr] =
        !((appPreference.isUserVerified?['isEmailConfirmed']) ?? false);
    return results;
  }

  bool isRTL() {
    return intl.Bidi.isRtlLanguage(Get.locale?.languageCode);
  }

  @override
  void onDetached() {}

  @override
  void onHidden() {}

  @override
  void onInactive() {}

  @override
  void onPaused() {}

  @override
  void onResumed() {
    init();
  }

  Future<void> init() async {
    homeNavigator = HomeNavigator();
  }
}

enum LottieLoaders {
  world_loader,
  three_dots_loader,
}

class ReactiveVariable<T> {
  final String id;
  T value;

  ReactiveVariable(this.id, this.value);

  void updateValue(T newValue) {
    value = newValue;
  }
}
