import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/intl.dart' show DateFormat;
import 'package:permission_handler/permission_handler.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/constant.dart' as Constants;
import 'package:gozy/constant.dart';
import 'package:gozy/graphql/__generated__/listing_fragment.req.gql.dart';
import 'package:gozy/pref/app_preference.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/screens/binding/main_binding.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/guest/view_message/view_message_controller.dart';
import 'package:gozy/screens/views/home/home_controller.dart';
import 'package:gozy/screens/views/splash/splash.dart';
import 'package:gozy/utils/common_api_controller.dart';
import 'package:gozy/utils/text_editing_controller.dart';
import 'package:gozy/widgets/common/custom_dialog/custom_dialog.dart';
import 'package:gozy/widgets/common/custom_text/custom_title_text.dart';
import 'package:gozy/widgets/common_extension_functions.dart';
import 'package:gozy/widgets/common/custom_container/custom_container.dart';
import 'package:socket_io_client/socket_io_client.dart';

import 'app_localizations.dart';
import 'model/reason_guest_model.dart';
import 'screens/views/guest/inbox/inbox_controller.dart';
import 'screens/views/guest/my_trips/my_trip_list_controller.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class App extends StatelessWidget {
  static final App _instance = App._internal();
  LocalizationService localizationService = LocalizationService();
  final AppPreference appPreference = Get.find();
  late Directory appDocumentsDir;
  static List<String>? assetManifest;

  Splash splash = Splash();

  App._internal();

  factory App() {
    if (Platform.isIOS) {
      Get.rootController.defaultPopGesture = false;
    }

    return _instance;
  }

  @override
  Widget build(BuildContext context) {
    if (assetManifest == null) {
      AssetManifest.loadFromAssetBundle(rootBundle).then((value) {
        assetManifest = value.listAssets();
      });
    }
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        //  showPerformanceOverlay: true,
        initialBinding: MainBinding(),
        defaultTransition: Transition.leftToRight,
        translations: localizationService,
        title: APP_NAME,
        localizationsDelegates: [
          DefaultWidgetsLocalizations.delegate,
          DefaultMaterialLocalizations.delegate,
          FallbackLocalizationDelegate()
        ],
        home: splash,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: MediaQuery.textScalerOf(context).clamp(maxScaleFactor: 1.5),
          ),
          child: child!,
        ));
  }

  static Map<String, String> generateTimeList({required String locale}) {
    final Map<String, String> timeList = {};
    final DateFormat formatter = DateFormat.jm(locale);
    double timeIndicator = 0.0;
    DateTime currentTime = DateTime(2000, 1, 1, 0, 0);
    for (int hour = 0; hour < 24; hour++) {
      for (int minute = 0; minute < 60; minute += 30) {
        currentTime = DateTime(
            currentTime.year, currentTime.month, currentTime.day, hour, minute);
        timeList[timeIndicator.toString()] = formatter.format(currentTime);
        timeIndicator = timeIndicator + 0.5;
      }
    }
    timeList[timeIndicator.toString()] = formatter.format(DateTime(
        currentTime.year,
        currentTime.month,
        currentTime.day,
        currentTime.hour,
        currentTime.minute + 29));
    return timeList;
  }

  PreferredSize showAppbar(BuildContext context,
      {Widget? backIconWidget,
      Color? AppBarbgColor,
      Function? backPressFunction,
      String? AppbarTitle,
      Widget? AppbarAction,
      double? appBartextFontSize,
      FontWeight? appBarTextFontWeight,
      int? titleLines,
      CrossAxisAlignment? crossAxisAlignment,
      bool isEnableTextlineHeight = false,
      double appBarSize = 70}) {
    double initialappBarSize;
    initialappBarSize = appBarSize;
    appBartextFontSize ??= AppDimen.textSize_22;
    if (titleLines != null) {
      double size = appBartextFontSize * (titleLines) + 15;
      if (appBarSize < size && isEnableTextlineHeight) {
        appBarSize = size;
      } else if (appBarSize < size) appBarSize = appBarSize + 15;
    }

    return PreferredSize(
      preferredSize: Size.fromHeight(appBarSize),
      child: CustomContainer(
        height: appBarSize,
        width: deviceWidth,
        color: AppBarbgColor,
        body: [
          CustomContainer(
            alignment: AlignmentDirectional.center,
            height: initialappBarSize,
            onTap: () {
              if (backIconWidget != null) {
                if (backPressFunction != null) {
                  backPressFunction();
                } else {
                  Get.back();
                }
              }
            },
            body: backIconWidget ?? AppDimen.startMargin.toWidth(),
          ),
          if (AppbarTitle != null)
            CustomTitleText(
              text: AppbarTitle,
              fontWeight: appBarTextFontWeight,
              size: appBartextFontSize,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: intl.Bidi.isRtlLanguage(Get.locale?.languageCode)
                  ? TextAlign.end
                  : TextAlign.start,
              textDirection: TextDirection.ltr,
            ).toStretch(),
          if (AppbarTitle == null) Spacer(),
          if (AppbarAction != null) AppbarAction else 20.toWidth()
        ]
            .toRow(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: crossAxisAlignment)
            .toScroll(),
      ),
    );
  }

  MethodChannel appChannel = const MethodChannel('ConstantValues');

  void closeApp() {
    debugPrint('closeApp called');
    if (Platform.isAndroid) {
      appChannel.invokeMethod('closeApp');
      SystemNavigator.pop();
    } else {
      exit(0);
    }
  }

  Future<String> getNativeLocation() async {
    try {
      String location = await appChannel.invokeMethod('getLocation');
      return location;
    } on PlatformException catch (e) {
      print("Failed to get location level: '${e.message}'.");
      return "";
    }
  }

  bool hasTextOverflow(String text, TextStyle style,
      {double minWidth = 0,
      double maxWidth = double.maxFinite,
      int? maxLines}) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: maxLines,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: minWidth, maxWidth: maxWidth);
    return textPainter.didExceedMaxLines;
  }

  Future<bool> isLocationServiceEnable() async {
    try {
      bool location = await appChannel.invokeMethod('CheckLocationService');
      return location;
    } on PlatformException catch (e) {
      print("Failed to get location service: '${e.message}'.");
      return false;
    }
  }

  Future<String> getSecurityKey() async {
    try {
      String securityKey = await appChannel.invokeMethod('getsecuritykey');
      print("key --> $securityKey");
      Constants.securityKey = securityKey;
      return securityKey;
    } on PlatformException catch (e) {
      print("Failed to get security key: '${e.message}'.");
      return "";
    }
  }

  Future<String> getVersion() async {
    return await appChannel.invokeMethod(
      "appversion",
    );
  }

  Future<void> setMapKey() async {
    try {
      await appChannel.invokeMethod(
          'setMapKey', {'key': SECURE_MAP_KEY ?? "sample flutter"});
    } on PlatformException catch (e) {
      print("Failed to get a key: '${e.message}'.");
    }
  }

  Future<File> getDownloadedFile({
    required String url,
    isUpdate = false,
    String? lang,
  }) async {
    String filename = url.split("/").last;
    appDocumentsDir = await getApplicationDocumentsDirectory();
    String filePath = '${appDocumentsDir.path}/$filename';
    File file = File(filePath);

    if (isUpdate || !await file.exists()) {
      http.Response response = await http.get(Uri.parse(url));
      final decoded = jsonDecode(utf8.decode(response.bodyBytes));
      final Map<String, dynamic> data =
          decoded is Map && decoded['data'] != null ? decoded['data'] : {};
      await file.writeAsString(
        const JsonEncoder.withIndent('  ').convert(data),
      );
    }
    downloadedLanguages.add(lang!);
    AppPreference appPreference = Get.find();
    appPreference.downloadedLanguages = downloadedLanguages.join(',');
    return file;
  }

  Future<void> getMapKey() async {
    var result = await appChannel.invokeMethod(
      "getmapkey",
    );
    SECURE_MAP_KEY = result;
  }

  Future<void> getSDKVersion() async {
    appDocumentsDir = await getApplicationDocumentsDirectory();
    var result = await appChannel.invokeMethod(
      "getsdkversion",
    );
    sdkversion = result;
  }
  Future<bool> EnableLocationService() async {
    try {
      bool location = await appChannel.invokeMethod('EnableLocationService');
      return location;
    } on PlatformException catch (e) {
      print("Failed to enable location service: '${e.message}'.");
      return false;
    }
  }

  void viewMessageSocketListener(String id) {
    BaseController.socketIO.onDisconnect((data) {
      isSocketConnected.value = 0;
    });
    BaseController.socketIO.onConnect((data) {
      if (isSocketConnected.value == 0) {
        HomeController controller = Get.find();
        if (controller.rxSelectedTab.value == 3 &&
            Get.currentRoute == '/guestHomePage') {
          isSocketConnected.value = 4;
        } else {
          isSocketConnected.value = 3;
        }
        controller.checkNetwork(controller.getUnreadCount);
      }
      debugPrint("connected... $data");
    });

    debugPrint(
        "viewMessageSocketListener: id: $id -- ${BaseController.socketIO.connected}");
    BaseController.socketIO.off("viewMessage-$id");
    BaseController.socketIO.on("viewMessage-$id", (data) {
      isSocketDataUpdate = true;
      debugPrint("viewMessageSocketListener: ${data}");

      if (data["data"]["status"] == 200) {
        App.updateFCMData(data["data"]);
      } else {
        HomeController controller = Get.find();
        controller.showSnackBar(data.toString());
      }
    });
  }

  void userLogoutSocketListener(
    String id,
  ) {
    BaseController.socketIO.off("userLogout-$id");
    BaseController.socketIO.on("userLogout-$id", (data) {
      isSocketDataUpdate = true;
      debugPrint("userLogoutSocketListener: ${data["data"]}");
      if (data["data"]["status"] == 200) {
        HomeController controller = Get.find();
        showAlertDialog(
            contentText: data["data"]['errorMessage'],
            okButtonContent: 'Okay',
            onOkPressed: () {
              controller.clearLoginSession();
            });
      }
    });
  }

  static void updateFCMData(Map<String, dynamic> message) {
    final String screenType = message['screenType'] ?? '';
    final String currentRoute = Get.currentRoute;

    // 1. Update Global States (Unread counts)
    if ((screenType == 'message' || screenType == 'trips') &&
        currentRoute != '/ViewMessagePage') {
      Get.find<HomeController>().getUnreadCount();
    }

    debugPrint('updateFCMData: $screenType --- $currentRoute');
    // 2. Delegate logic based on screenType
    switch (screenType) {
      case 'becomeahost':
        _handleBecomeAHost(message, currentRoute);
        break;
      case 'message':
        _handleMessageNotification(message, currentRoute);
        break;
      case 'trips':
        _handleTripsNotification(message, currentRoute);
        break;
    }
  }

// --- Helper Handlers ---

  static void _handleBecomeAHost(
      Map<String, dynamic> message, String currentRoute) {
    if (message['userType'] != 'host') return;

    final fragmentReq = GviewListingDetailsFragmentReq(
        (b) => b..idFields = {'id': message['listId']});
    final itemInfo = FerryLoggerClient.client?.cache.readFragment(fragmentReq);
    final AppPreference preference = Get.find();

    if (itemInfo != null) {
      final bool isCorrectPage = currentRoute == '/StepFinalScreen' ||
          (currentRoute == '/guestHomePage' && (preference.isOwner ?? false));
      if (isCorrectPage) Get.forceAppUpdate();
    }
  }

  static void _handleMessageNotification(
      Map<String, dynamic> message, String currentRoute) {
    debugPrint(
        "isVerifyGuestHost: ${isVerifyGuestHost(message: message)}  ---- ${message}");

    final ViewMessageController controller = Get.find();
    AppPreference preference = Get.find();

    if (currentRoute == '/ViewMessagePage') {
      if (message['actionType'] == 'preApproved' && preference.isOwner!) {
        return;
      }
      _syncThreadMessage(controller, message);
    } else if (currentRoute == '/guestHomePage') {
      _syncHomeInbox(controller, message);
    }
  }

  static void _handleTripsNotification(
      Map<String, dynamic> message, String currentRoute) {
    debugPrint("_handleTripsNotification: ${message}");
    if (currentRoute == '/ViewMessagePage') {
      if (!isVerifyGuestHost(message: message)) return;
      _syncTripViewMessage(message);
    } else if (currentRoute == '/guestHomePage') {
      _syncTripHomePage(message);
    }
  }

// --- Logic Implementation Modules ---

  static void _syncThreadMessage(
      ViewMessageController controller, Map<String, dynamic> message) {
    if (controller.threadid.toString() != message['threadId'].toString()) {
      controller.updateOtherThread(message);
      return;
    }

    if (message['content'] != null || message['messageContent'] != null) {
      print(
          "controller.updatePendingViewMessage: ${controller.updatePendingViewMessage}");
      if (controller.updatePendingViewMessage) {
        controller.update();
        controller.updatePendingViewMessage = false;
      } else {
        // controller.getThreads();
        controller.bookingUserId = message['senderId'] ??
            (message['guestId'].toString() !=
                    controller.appPreference.userID.toString()
                ? message['guestId']
                : message['hostId']);
        controller.updateSentMessageThreads(
            messageType: 'message',
            message: message['content'] ?? message['messageContent']);
        controller.update();
      }
    } else {
      if (message['actionType'].toString().toLowerCase() == 'newmessage') {
        controller.getThreads();
      } else {
        controller.updateReservationStatusFromViewMsg(
          updatingStatus: message['actionType'].toString().toLowerCase(),
          threadItemFortype: controller.threadItemForType,
          isFromNotification: true,
        );
        controller.update();
      }
    }
  }

  static void _syncHomeInbox(
      ViewMessageController controller, Map<String, dynamic> message) {
    final String status = message['actionType']?.toString().toLowerCase() ?? '';
    final String action = message['actionType']?.toString().toLowerCase() ?? '';

    if (message['content'] == null && status.contains('preapprove')) {
      message['screenType'] = 'preApproved';
    } else if (action.contains('newenquiry')) {
      message['screenType'] = 'inquiry';
    }
    debugPrint("_syncHomeInbox called: ${message}");
    controller.updateReceivedMessage(message);
  }

  static void _syncTripHomePage(Map<String, dynamic> message) {
    final HomeController home = Get.find();

    if (home.rxSelectedTab.value == 2) {
      // Trips Tab
      final MyTripListController trips = Get.find();
      final String state = message['actionType']?.toString() ?? '';

      if (state.contains('cancelled')) {
        trips.getMyListData();
      } else {
        trips.updateReservationStatusFragment(
          reservationId: int.parse(message['reservationId'].toString()),
          reservationStatus: message['actionType'],
        );
      }
    } else if (home.rxSelectedTab.value == 3) {
      final InboxController inbox = Get.find();
      final ViewMessageController viewMsg = Get.find();

      inbox.getAllThreads();

      message['screenType'] = message['userType'] == 'guest'
          ? 'cancelledbyhost'
          : 'cancelledbyguest';
      viewMsg.updateReceivedMessage(message);
    }
  }

  static void _syncTripViewMessage(Map<String, dynamic> message) {
    final ViewMessageController controller = Get.find();
    if (controller.threadid.toString() != message['threadId'].toString()) {
      controller.updateOtherThread(message);
      return;
    }

    controller.updatingStatus.value = '';
    final String? content = message['content'] ?? message['messageContent'];

    if (content != null) {
      controller.cancellationMessageController = CustomTextEditingController()
        ..text = content;
    }

    if (message['reservationId'] != null)
      controller.reservationId = message['reservationId'];

    // Map status strings
    String status = message['actionType'].toString();
    if (status == 'cancel' || status.toLowerCase() == 'cancelreservation') {
      controller.bookingUserId = message['senderId'] ??
          (message['userType'] == 'guest'
              ? message['hostId']
              : message['guestId']);
      status = message['userType'] == 'guest'
          ? 'cancelledbyhost'
          : 'cancelledbyguest';
    } else if (status == 'pending') {
      controller.bookingUserId = message['senderId'] ??
          (message['userType'] == 'guest'
              ? message['guestId']
              : message['hostId']);
      status = 'requesttobook';
    } else if (status.toLowerCase() == 'newbooking') {
      controller.bookingUserId = message['senderId'] ??
          (message['userType'] == 'guest'
              ? message['guestId']
              : message['hostId']);
      status = 'approved';
    }

    final String? overrideSenderId = controller.bookingUserId;

    controller.updateReservationStatusFromViewMsg(
      updatingStatus: status,
      messageContent: content,
      threadItemFortype: controller.threadItemForType,
      isFromNotification: true,
    );

    if (content != null && !status.toLowerCase().contains('cancel')) {
      if (overrideSenderId != null) {
        controller.bookingUserId = overrideSenderId;
      }
      controller.updateSentMessageThreads(
          messageType: 'message', message: content);
    }
  }

  static bool isVerifyGuestHost({required Map message}) {
    AppPreference preference = Get.find();
    debugPrint(
        " preference.userID: ${preference.userID} --- ${message['guestId']}");
    return ((message['userType'] == 'renter' &&
            !preference.isOwner! &&
            preference.userID.toString() == message['guestId'].toString()) ||
        (message['userType'] == 'owner' &&
            preference.isOwner! &&
            preference.userID.toString() == message['hostId'].toString()));
  }

  void setFCMNavigation(
      {required NotificationResponse notificationResponse}) async {
    // Ensure auth state is fully loaded before handling notification
    // navigation. Prevents "User not logged in" on iOS cold-start.
    await StatefulWrapperState.waitForAuthReady();
    Map<String, dynamic> payloadMap =
        json.decode(notificationResponse.payload ?? '');
    final ViewMessageController viewMessageController = Get.find();
    if (viewMessageController.threadid == payloadMap['threadId'] &&
        Get.currentRoute == '/ViewMessagePage') {
      await Future.delayed(Duration(milliseconds: 20));
    } else {
      await Future.delayed(FCMClickFunctionDuration);
    }
    splash.state.moveToFCMPage(
        payload: notificationResponse.payload ?? '',
        notificationResponse: notificationResponse);
  }

  bool _isNotificationPermissionCalled = false;

  Future<PermissionStatus> getNotificationPermission() async {
    if (_isNotificationPermissionCalled) {
      return await Permission.notification.status;
    }
    final status = await Permission.notification.status;
    if (status.isGranted || status.isPermanentlyDenied) {
      return status;
    } else {
      _isNotificationPermissionCalled = true;
      return await Permission.notification.request();
    }
  }

  List<String> getTargetedGuestLabels() {
    return [
      "label_all".tr,
      "label_tourism_and_sightseeing".tr,
      "label_business_travelers".tr,
      "label_city_without_cars".tr,
      "label_students_young_adults".tr,
      "label_emergency_renters".tr,
      "label_others".tr,
    ];
  }

  List<String> getReasonBooking() {
    return [
      "label_family_outing".tr,
      "label_business_trip".tr,
      "label_moving_items".tr,
      "label_tourism_or_sightseeing".tr,
      "label_local_commute".tr,
      "label_others".tr
    ];
  }
  List<ReasonGuestsModel> buildReasonList({
    required List<ReasonGuestsModel> reasons,
    required List<String> labelsString,
  }) {


    return reasons.asMap().entries.map((entry) {
      final index = entry.key;
      final item = entry.value;

      return ReasonGuestsModel(
        id: item.id ?? 0,
        itemValue:  index < labelsString.length
            ? labelsString[index]
            : (item.label ?? ""),
        label: index < labelsString.length
            ? labelsString[index]
            : (item.label ?? ""),
        itemName:  index < labelsString.length
            ? labelsString[index]
            : (item.label ?? ""),
      );
    }).toList();
  }

  String getTransmissionContent({required String transmission}) =>
      transmission == "0" ? label_manual.tr : label_automatic.tr;
}
