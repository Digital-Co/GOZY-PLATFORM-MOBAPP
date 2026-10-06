import 'dart:async';
import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:get_secure_storage/get_secure_storage.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/firebase_options.dart';
import 'package:gozy/pref/app_preference.dart';
import 'package:gozy/widgets/error_widget.dart';

import 'app.dart';
import 'screens/views/base_controller.dart';



FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =FlutterLocalNotificationsPlugin();
 NotificationAppLaunchDetails? notificationAppLaunchDetails;


@pragma('vm:entry-point')
Future<void> _firebaseMessagingBGHandler(RemoteMessage message) async {

}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  await Firebase.initializeApp(
    name: APP_NAME.replaceAll(' ', '_'),
    options: DefaultFirebaseOptions.currentPlatform,
  );
  ErrorWidget.builder = (errorDetails) {
    return  ErrorWidgetPage(
      errorTitle: errorDetails.exceptionAsString(),
      exception: errorDetails.stack.toString(),
    );
  };
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBGHandler);
  FlutterError.onError = (errorDetails){
    ErrorWidgetPage(
      errorTitle: errorDetails.exceptionAsString(),
      exception: errorDetails.stack.toString(),
    );
    FirebaseCrashlytics.instance.recordFlutterFatalError;
  };
  await runZonedGuarded(() async {
    await GetSecureStorage.init(container: "${APP_NAME}SharedPref");
    Get.put(AppPreference());
    Get.isLogEnable = kDebugMode;

    notificationAppLaunchDetails = await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    listenFirebase();
    FlutterError.onError = (FlutterErrorDetails details) {
      if (kDebugMode) FlutterError.dumpErrorToConsole(details);
      FirebaseCrashlytics.instance.recordFlutterError(details);
    };

    runApp(App(),);
  }, (error, stackTrace) {
    debugPrint("Firebase error: main $error");
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
  InternetConnection internetConnection = InternetConnection();
  internetConnection.onStatusChange.listen((InternetStatus status) {
    internetStatus = status;
  });
}



void listenFirebase() {
  FirebaseMessaging.onMessage.listen((event) async{
    debugPrint("listenFirebase: ${event.data}");
    if(event.data.isNotEmpty) {
      AndroidNotificationChannel  channel =  AndroidNotificationChannel(
        notificationChannelId,
        notificationChannelName,
        importance: Importance.max,
      );
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);

      Map<String, dynamic> map = json.decode(event.data['content']);

      showNotification(map['title'], map['message'], map);
    }
  });
}


Future<void> showNotification(String title, String body, Map<String, dynamic> message) async {
  Future.delayed(const Duration(milliseconds: 500)).then((value) {
    debugPrint("showNotification isSocketDataUpdate: $isSocketDataUpdate --- $isSocketConnected");
    if(!isSocketDataUpdate && isSocketConnected.value ==1) {
      App.updateFCMData(message);
    } else {
      isSocketDataUpdate = false;
    }
  });
   MessagingStyleInformation? messagingStyleInformation;

   var android =  AndroidNotificationDetails(notificationChannelId, notificationChannelName,
      channelDescription: notificationChannelDesc,
      importance: Importance.max,
      priority: Priority.high,
      icon: 'ic_logo_push',
      styleInformation: messagingStyleInformation ?? BigTextStyleInformation(''),
      color: appColors.primaryColor);


  var iOS = const DarwinNotificationDetails(
      presentSound: true, presentAlert: true, presentBadge: true,
    categoryIdentifier: APP_NAME,
  );

  var platform = NotificationDetails(android: android, iOS: iOS);
   flutterLocalNotificationsPlugin =FlutterLocalNotificationsPlugin();
  var androidInitilize = const AndroidInitializationSettings('ic_logo_push');
  var iOSinitilize =  DarwinInitializationSettings( notificationCategories: []);
  var initilizationsSettings = InitializationSettings(android: androidInitilize, iOS: iOSinitilize);

   flutterLocalNotificationsPlugin.initialize(
    settings: initilizationsSettings,
    onDidReceiveNotificationResponse: onDidReceiveNotificationResponse
   );
   await flutterLocalNotificationsPlugin.show(
     id: 1,
     title: title,
     body: body,
     notificationDetails: platform,
     payload: json.encode(message)
   );
}


@pragma('vm:entry-point')
void onDidReceiveNotificationResponse(NotificationResponse notificationResponse)  {
  final point = StackTrace.current.toString().split('\n')[1];
  print('setFCMNavigation --- test9 $point');
App().setFCMNavigation(notificationResponse: notificationResponse);
}

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
  App().setFCMNavigation(notificationResponse: notificationResponse);
}
