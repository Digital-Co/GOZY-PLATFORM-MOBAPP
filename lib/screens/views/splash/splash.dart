import 'dart:async';
import 'dart:convert';

import 'package:app_links/app_links.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:gozy/app.dart';
import 'package:gozy/app_localizations.dart';
import 'package:gozy/constant.dart' as Constants;
import 'package:gozy/constant.dart';
import 'package:gozy/generated/assets.dart';
import 'package:gozy/main.dart';
import 'package:gozy/resources/app_colors.dart';
import 'package:gozy/screens/binding/auth_binding.dart';
import 'package:gozy/screens/binding/main_binding.dart';
import 'package:gozy/screens/binding/profile_binding.dart';
import 'package:gozy/screens/views/auth/get_started/get_started.dart';
import 'package:gozy/screens/views/auth/login/login.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/guest/my_trips/my_trip_list_controller.dart';
import 'package:gozy/screens/views/guest/view_message/view_message.dart';
import 'package:gozy/screens/views/guest/view_message/view_message_controller.dart';
import 'package:gozy/screens/views/home/home_controller.dart';
import 'package:gozy/screens/views/home/home_page.dart';
import 'package:gozy/screens/views/home_item_detail/home_item_detail.dart';
import 'package:gozy/screens/views/owner/owner_property_list/owner_property_list_controller.dart';
import 'package:gozy/screens/views/owner/step_final/step_final_page.dart';
import 'package:gozy/screens/views/profile/edit_profile/edit_profile.dart';
import 'package:gozy/screens/views/profile/user_role_changer.dart';
import 'package:gozy/screens/views/splash/splash_controller.dart';
import 'package:gozy/screens/views/splash/splash_navigator.dart';
import 'package:gozy/utils/common_api_controller.dart';
import 'package:gozy/widgets/common_extension_functions.dart';

import '../../../pref/app_preference.dart';
import '../../../resources/app_lang.dart';
import '../../../widgets/common/custom_dialog/custom_dialog.dart';
import '../auth/resetPassword/resetpassword.dart';
import '../auth/signup/signup.dart';
import '../home_item_detail/home_item_detail_controller.dart';
import '../profile/edit_profile/edit_profile_controller.dart';
import '../profile/reviews/app_review_navigator.dart';
import '../profile/reviews/app_reviews_controller.dart';

class Splash extends StatefulWidget {
  StatefulWrapperState state = StatefulWrapperState();

  Splash({super.key});

  @override
  StatefulWrapperState createState() => state;
}

class StatefulWrapperState extends State<Splash> with TickerProviderStateMixin implements SplashNavigator {
  late SplashController controller;
  final AppPreference appPreference = Get.find();
  static bool _isLinkRedirectionEnable = false;
  final Duration _minSplashDuration = const Duration(milliseconds: 2000);
  Duration remainingTime = const Duration(milliseconds: 2000);
  Timer? navigationTimer;
  bool isAnmiateLogo = false;
  late DateTime _splashStartTime;

  static final Completer<void> _authReadyCompleter = Completer<void>();
  static bool _isAuthReady = false;

  static Future<void> waitForAuthReady() async {
    if (_isAuthReady) return;
    await _authReadyCompleter.future;
  }

  static void markAuthReady() {
    if (!_isAuthReady) {
      _isAuthReady = true;
      if (!_authReadyCompleter.isCompleted) {
        _authReadyCompleter.complete();
      }
    }
  }
  String logoOuter =
      '''<svg xmlns="http://www.w3.org/2000/svg" width="600" height="600" fill="none"><g fill="#000" stroke="#000">
    <path stroke-miterlimit="10" stroke-width="11.576" d="M524.277 300c0-123.666-100.611-224.276-224.229-224.276-123.617 0-224.276 100.61-224.276 224.276s100.611 224.277 224.276 224.277S524.277 423.666 524.277 300ZM300.048 514.003c-118.022 0-214.003-95.98-214.003-213.955 0-117.974 95.981-214.003 214.003-214.003 118.023 0 213.955 95.981 213.955 214.003 0 118.023-95.981 213.955-213.955 213.955Z"/>
    <path stroke-linecap="square" stroke-linejoin="round" stroke-width="11.576" d="M589.678 350.113c2.798-16.351 4.582-32.991 4.582-50.113s-1.061-24.984-2.604-37.235v-.096c-3.762-29.566-11.913-57.782-23.826-83.923v-.096c-12.155-26.721-28.168-51.222-47.316-72.927-.048-.192-.144-.434-.144-.434l-.193.097a295.2 295.2 0 0 0-66.56-55.9c-.048-.145-.193-.338-.193-.338l-.144.145c-24.598-15.145-51.56-26.624-80.209-34.004l-.145-.144v.096c-23.344-5.932-47.653-9.453-72.781-9.453s-9.213.482-13.843.675c-.096 0-.289-.096-.289-.096v.144c-29.904 1.399-58.601 7.283-85.466 17.026h-.193v.145c-27.637 9.984-53.296 23.97-76.399 41.286a2 2 0 0 1-.482.144v.194c-24.647 18.665-46.399 40.9-64.196 66.27l-.097.096C25.563 179.421 5.788 237.395 5.788 300c0 162.251 132.009 294.212 294.212 294.212 118.846-2.426 198.376-76.458 211.254-89.903l.193-.097v-.096c20.161-20.933 37.186-44.807 50.547-70.997l.144-.097v-.096c13.023-25.659 22.38-53.489 27.492-82.765v-.097zM275.45 583.36c-1.495-.579-4.148-1.736-7.717-3.665-5.354-2.943-12.347-7.525-18.473-13.264l-4.533-4.245c-1.592-1.398-2.653-3.086-3.955-4.582-2.412-3.086-5.065-5.835-6.463-8.681-3.28-5.45-5.45-9.068-5.45-9.068l-1.11.434s1.737 3.955 4.389 9.888c1.11 3.087 3.425 6.174 5.547 9.694 1.157 1.689 2.074 3.666 3.521 5.258l4.148 5.064c3.328 4.003 6.993 7.476 10.611 10.611-21.849-3.425-42.878-9.116-62.75-17.171-1.254-1.061-3.472-2.845-6.318-5.836-4.244-4.389-9.598-10.803-13.746-18.038-2.026-3.666-4.244-7.235-5.498-10.997-1.399-3.666-3.135-7.042-3.618-10.177-1.543-6.222-2.556-10.273-2.556-10.273l-1.206.145s.531 4.244 1.303 10.707c.144 3.328 1.495 6.897 2.459 10.9.869 4.052 2.605 8.055 4.341 12.155 2.026 4.775 4.486 9.164 6.994 13.167-19.63-9.598-38.151-21.174-54.936-34.92-.916-1.35-2.46-3.714-4.244-7.283-2.798-5.45-6.029-13.167-7.862-21.318-.868-4.052-1.881-8.151-2.026-12.106-.241-3.907-.964-7.621-.53-10.756.337-6.366.578-10.611.578-10.611l-1.157-.241s-.772 4.245-1.929 10.659c-.82 3.232-.579 7.042-.82 11.142-.386 4.148.144 8.489.579 12.878.482 5.064 1.543 9.984 2.749 14.566C90 492.588 75.723 476.238 63.617 458.199c-.482-1.495-1.254-4.292-2.025-8.488-1.061-6.029-1.881-14.325-1.254-22.669.337-4.196.578-8.392 1.64-12.203.916-3.81 1.35-7.524 2.652-10.418 2.219-5.98 3.714-9.984 3.714-9.984l-1.061-.53s-1.978 3.81-4.968 9.598c-1.736 2.845-2.653 6.559-4.1 10.418-1.543 3.81-2.363 8.151-3.231 12.444-1.013 5.112-1.447 10.176-1.64 15-10.756-18.666-19.485-38.537-25.804-59.566 0-1.544 0-4.534.579-8.778.772-6.078 2.412-14.277 5.498-21.994 1.544-3.859 2.99-7.814 5.113-11.142 1.977-3.376 3.52-6.848 5.643-9.212a907 907 0 0 1 6.463-8.392l-.82-.868s-3.038 3.087-7.62 7.717c-2.508 2.219-4.438 5.45-6.946 8.73-2.604 3.183-4.63 7.09-6.752 10.948-2.556 4.679-4.438 9.454-6.03 14.036-4.581-20.258-7.234-41.19-7.234-62.798 0-21.607.097-1.254.097-1.881.482-1.495 1.398-4.341 3.135-8.247 2.508-5.595 6.51-12.926 11.72-19.438 2.604-3.279 5.16-6.607 8.2-9.164 2.893-2.604 5.353-5.45 8.102-7.09 5.21-3.762 8.682-6.222 8.682-6.222l-.579-1.061s-3.81 2.074-9.502 5.113c-3.038 1.399-5.884 3.907-9.212 6.27-3.472 2.315-6.511 5.45-9.694 8.489-3.714 3.665-6.946 7.669-9.791 11.527 1.688-21.945 5.546-43.264 11.961-63.569.82-1.254 2.556-3.81 5.547-7.187 4.051-4.582 10.032-10.466 16.929-15.096 3.473-2.363 6.897-4.823 10.514-6.367 3.57-1.688 6.753-3.665 9.84-4.437 6.077-2.026 10.08-3.376 10.08-3.376l-.193-1.158s-4.244.869-10.61 2.123c-3.28.434-6.753 2.025-10.66 3.328-3.955 1.205-7.813 3.279-11.769 5.257-4.678 2.411-8.874 5.257-12.78 8.151 8.102-20.499 18.375-39.839 30.77-57.733a68 68 0 0 1 6.801-4.727c5.21-3.231 12.637-7.042 20.644-9.502 4.003-1.205 7.958-2.556 11.913-2.99 3.858-.53 7.524-1.495 10.707-1.35l10.611-.242.145-1.157s-4.293-.482-10.756-1.109c-3.28-.579-7.042 0-11.141 0-4.148 0-8.44.82-12.782 1.543-5.112.965-9.984 2.412-14.517 4.003 14.807-18.521 31.977-35.064 50.884-49.389 1.64-.53 4.051-1.399 7.379-2.17 5.981-1.399 14.18-2.75 22.524-2.605 4.197.097 8.393 0 12.251.868 3.859.627 7.621.917 10.611 2.026 6.077 1.881 10.177 3.087 10.177 3.087l.531-1.11-9.888-4.34c-2.942-1.544-6.704-2.267-10.611-3.425-3.907-1.35-8.296-1.833-12.685-2.46-5.257-.771-10.369-.868-15.193-.723 18.232-12.01 37.959-21.849 58.795-29.47 1.736-.096 4.389-.144 8.054.097 6.126.386 14.373 1.495 22.331 4.148l5.933 1.93c2.026.578 3.714 1.687 5.547 2.459 3.472 1.785 7.041 3.087 9.549 5.064 5.306 3.57 8.827 5.933 8.827 5.933l.771-.917s-3.279-2.845-8.151-7.09c-2.363-2.315-5.739-4.148-9.115-6.414-1.785-1.061-3.473-2.412-5.451-3.232l-5.932-2.846c-4.823-2.267-9.695-3.858-14.373-5.16 20.788-6.078 42.588-9.647 65.064-10.804 1.64.434 4.196 1.11 7.524 2.363 5.74 2.17 13.312 5.74 20.113 10.563 3.376 2.411 6.897 4.726 9.646 7.572 2.798 2.701 5.836 5.016 7.621 7.62 4.003 4.969 6.704 8.297 6.704 8.297l1.013-.627s-2.267-3.666-5.692-9.213c-1.543-2.893-4.244-5.594-6.848-8.778-2.508-3.328-5.836-6.222-9.068-9.164-3.955-3.569-8.151-6.56-12.251-9.115 22.476.289 44.229 3.376 65.161 8.633a56.6 56.6 0 0 1 6.656 4.63c4.871 3.762 11.045 9.357 16.158 15.917 2.556 3.327 5.209 6.607 6.993 10.128 1.881 3.376 4.052 6.511 5.064 9.502 2.364 5.932 3.955 9.839 3.955 9.839l1.158-.241s-1.109-4.196-2.749-10.466c-.627-3.28-2.46-6.608-3.955-10.467-1.399-3.858-3.762-7.572-5.981-11.43-2.749-4.63-5.932-8.682-9.116-12.444 21.27 6.849 41.287 16.35 60.049 27.781 1.157 1.302 2.797 3.232 4.823 6.125 3.569 5.017 7.813 12.203 10.755 19.968 1.447 3.907 3.039 7.862 3.714 11.72.772 3.81 1.978 7.428 2.026 10.612.53 6.366.868 10.61.868 10.61h1.206s.193-4.244.434-10.755c.386-3.28-.386-6.994-.723-11.093-.193-4.148-1.351-8.393-2.364-12.734-1.254-5.064-2.99-9.79-4.871-14.228 18.038 12.733 34.485 27.54 49.148 43.987.723 1.544 1.688 3.907 2.749 7.139 1.881 5.836 3.858 13.938 4.389 22.283.241 4.196.627 8.344.096 12.299-.337 3.906-.289 7.717-1.205 10.707-1.351 6.222-2.267 10.37-2.267 10.37l1.157.434s1.399-4.1 3.569-10.225c1.303-3.039 1.689-6.849 2.605-10.852 1.013-4.052 1.206-8.441 1.495-12.83.289-5.112 0-10.129-.482-14.855a284 284 0 0 1 33.955 55.9c.241 1.688.482 4.293.579 8.055.096 6.125-.435 14.421-2.364 22.572-1.013 4.052-1.881 8.199-3.521 11.769-1.495 3.617-2.508 7.234-4.292 9.935-3.135 5.547-5.209 9.261-5.209 9.261l.964.675s2.557-3.424 6.463-8.682c2.171-2.508 3.618-6.029 5.643-9.598 2.171-3.521 3.618-7.669 5.161-11.816 1.833-4.872 3.039-9.791 3.955-14.47a281.2 281.2 0 0 1 16.013 63.425 67 67 0 0 1-1.833 7.909c-1.736 5.885-4.63 13.746-8.874 20.933-2.123 3.569-4.196 7.235-6.801 10.225-2.508 2.99-4.582 6.174-7.042 8.199-4.63 4.389-7.717 7.332-7.717 7.332l.675.964s3.521-2.556 8.73-6.415c2.798-1.784 5.258-4.678 8.248-7.524 3.087-2.749 5.691-6.27 8.44-9.742 3.184-4.1 5.74-8.441 8.007-12.637.386 6.029.916 12.01.916 18.087 0 16.157-1.688 31.881-4.244 47.267a87 87 0 0 1-4.052 7.041c-3.376 5.065-8.44 11.721-14.662 17.364-3.087 2.749-6.125 5.691-9.502 7.717-3.279 2.218-6.173 4.582-9.115 5.739-5.692 2.894-9.55 4.727-9.55 4.727l.386 1.109s4.099-1.398 10.225-3.569c3.183-.868 6.415-2.942 10.08-4.726 3.762-1.737 7.283-4.341 10.901-6.849 4.292-3.087 8.054-6.463 11.479-9.888-5.161 21.608-12.734 42.251-22.573 61.688-1.157 1.206-3.038 3.087-5.884 5.402-4.727 3.907-11.527 8.73-19.1 12.347-3.762 1.737-7.572 3.618-11.382 4.582-3.762 1.062-7.235 2.557-10.418 2.846a1011 1011 0 0 0-10.515 1.736v1.158s4.341-.145 10.852-.386c3.328.097 6.994-.964 11.045-1.64 4.1-.53 8.248-1.977 12.444-3.328 4.92-1.591 9.453-3.713 13.65-5.884-11.19 18.907-24.454 36.415-39.599 52.187-1.495.868-3.81 2.025-7.138 3.424-5.643 2.315-13.601 4.968-21.849 6.125l-6.173.82c-2.074.434-4.1.193-6.029.242-3.907 0-7.669.337-10.804-.338-6.318-.868-10.515-1.399-10.515-1.399l-.337 1.109s4.196 1.11 10.466 2.798c3.135 1.061 6.994 1.157 11.045 1.736 2.026.145 4.148.675 6.318.531l6.56-.097c5.112-.096 10.032-.723 14.662-1.591-16.013 14.614-33.521 27.492-52.524 38.151a72 72 0 0 1-8.344 1.302c-6.077.579-14.469.724-22.669-.579-4.099-.675-8.296-1.254-12.009-2.604-3.714-1.206-7.428-1.93-10.177-3.473a3286 3286 0 0 0-9.647-4.485l-.675.964s3.714 2.267 9.212 5.74c2.701 1.929 6.319 3.183 10.033 4.919 3.713 1.833 7.958 2.942 12.202 4.196 4.968 1.399 9.984 2.267 14.711 2.798-19.389 9.164-39.791 16.399-61.254 21.029-1.544-.097-4.534-.386-8.73-1.254-5.981-1.254-14.035-3.521-21.511-7.187-3.714-1.881-7.573-3.617-10.708-5.98-3.231-2.267-6.511-4.052-8.73-6.367-4.726-4.244-7.91-7.09-7.91-7.09l-.916.772s2.846 3.28 7.09 8.199c1.977 2.605 5.064 4.872 8.151 7.621 2.99 2.894 6.704 5.161 10.418 7.62 4.341 2.846 8.875 5.065 13.264 6.994-13.264 1.881-26.72 3.183-40.466 3.183s-16.496-.53-24.599-1.206z"/>
</g></svg>''';
  String logoInner =
      '''<svg xmlns="http://www.w3.org/2000/svg" width="600" height="600" fill="none"><g fill="#000" stroke="#000">
      <path stroke-miterlimit="46" stroke-width="31.833" d="M395.209 415.322c.145-.145-21.849-21.898-71.045-70.226a1.457 1.457 0 0 0-2.074 0c-18.087 17.267-35.161 34.1-52.862 50.547-6.656 6.222-13.987 12.444-22.138 16.543-23.199 11.624-49.003-1.929-50.257-27.491-1.737-33.28-1.929-66.801 0-99.888 1.736-29.228 26.19-41.238 50.064-24.067 19.968 14.373 36.945 32.652 55.225 49.196 6.56 5.98 12.782 11.913 20.45 19.003.579.53 1.496.53 2.074 0 20.933-20.257 41.624-38.875 60.193-59.373 13.312-14.807 14.373-33.521 5.595-51.994-8.392-17.845-23.006-24.067-42.106-23.826-43.167.434-86.383.193-129.743.193h-17.411c-.869 0-1.061-1.495-1.061-2.798v-2.363c0-2.99.192-3.665.627-4.1.434-.434 1.061-.627 1.929-.627 48.135-.192 104.855-.868 152.942 0 21.704.435 37.379 12.251 44.904 32.894 4.196 11.576 5.16 22.717 2.99 33.135-2.749 13.312-9.936 22.139-16.736 30.049-11.383 13.119-29.277 31.929-55.418 53.295-.676.579-.724 1.64-.097 2.267l72.492 69.164c.482.483.627 1.254.241 1.833-1.784 3.039-7.138 11.576-8.778 8.73zm-79.389-77.653c-24.695-23.441-46.399-46.399-70.659-66.174-19.775-16.35-37.814-7.283-38.682 18.28-1.061 30.096-1.302 60.386.434 90.675.434 8.585 6.656 20.836 13.553 23.634 7.717 3.231 21.897 1.061 28.553-4.293 22.573-18.907 43.168-39.984 66.801-62.074z"/>
  </g></svg>''';

  Future<void> setCrashCollection() async {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(!kDebugMode);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 200)).then((value) {
        debugPrint("getFCMToken:  splash ${appPreference.deviceID} --- ${appPreference.accessToken}");
        controller.getFCMToken();
      });
    });
  }

  @override
  initState() {
    super.initState();
    _splashStartTime = DateTime.now();
    FocusManager.instance.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        basecontroller.update(['customTextFieldArea']);
        changeTextFieldFocus.value = !changeTextFieldFocus.value;
        changeTextFieldFocus.refresh();
      });
    });
    controller = Get.find<SplashController>();
    if (mounted) {
      _isLinkRedirectionEnable = false;
      if(isAnmiateLogo) {
        controller.animcontroller = AnimationController(vsync: this, duration: Duration(seconds: 2))..repeat();
      }
    }
    Future.delayed(const Duration(milliseconds: 200)).then((value) {
      controller.isLogoIconVisible.value = true;
    });

    controller = Get.find<SplashController>();
    controller.navigator = this;
    if (Get.currentRoute == '/') {
      controller.hideKeyBoard();
      App().getSecurityKey().then((value) {
        getKeyAndMoveHome();
      });
      controller.changeLanguage();
      setCrashCollection();
    }

    _init();
    App().getSDKVersion();
    FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage? message) {
      controller.isNetworkConnected(isshowToast: false).then((isNetConnected) async{
        if (isNetConnected) {
          if (message != null) {
            // Wait for auth state (token, settings, GraphQL client) to be
            // fully initialised before navigating. This prevents the
            // "User not logged in" issue on iOS cold-start via notification.
            await waitForAuthReady();
            await  Future.delayed(FCMClickFunctionDuration);
            moveToFCMPage(payload: message.data['content'] ?? '');
          }
        }
      });
    });

    FirebaseMessaging.onMessageOpenedApp.listen((event) async{
      debugPrint("OpenedApp Message Received-->   ${event.data.toString()}----${Get.previousRoute}");
      final ViewMessageController viewMessageController = Get.find();
      final Map<String, dynamic> contentMap = _payloadToMap(event.data['content']);
      final int? openedThreadId = _toNullableInt(contentMap['threadId']);
      if( openedThreadId != null && viewMessageController.threadid == openedThreadId && Get.currentRoute == '/ViewMessagePage'){
        await  Future.delayed(Duration(milliseconds: 20));
      } else {
        await  Future.delayed(FCMClickFunctionDuration);
      }
      moveToFCMPage(payload: event.data['content'] ?? '');
    });

    dotCenter120HeightLoader = Center(
        child: controller
            .getLoader(
                loader: LottieLoaders.three_dots_loader.name,
                changed: appThemeChanged.value,
                color: appColors.secondaryColor)
            .toResizeWidget(height: 120));
    dotCenter60HeightLoader = Center(
        child: controller
            .getLoader(
                loader: LottieLoaders.three_dots_loader.name,
                changed: appThemeChanged.value,
                color: appColors.secondaryColor)
            .toResizeWidget(height: 60));
  }

  Future _init() async {
    appColors = AppColors();
    if (controller.isDarkMode()) {
      print("isDarkMode : ${controller.isDarkMode}");
      appColors.changetoDarkMode();
    } else {
      appColors.changetolightMode();
    }
    versionCode = await App().getVersion();
    ViewdetailArrowsvg = await rootBundle.loadString(Assets.drawableViewdetailArrow);

    final appLaunchDetails = await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

    if (appLaunchDetails != null && appLaunchDetails.didNotificationLaunchApp) {
      if (appLaunchDetails.notificationResponse != null) {
        Map<String, dynamic> messagemap =
            json.decode(appLaunchDetails.notificationResponse?.payload ?? '');
        waitForAuthReady().then((_) {
          Future.delayed(const Duration(milliseconds: 600)).then((value) {
            debugPrint(
                'appLaunchDetails.notificationResponse: ${appLaunchDetails.notificationResponse?.notificationResponseType}-----: ${appLaunchDetails.notificationResponse?.payload}');
            if (messagemap["notificationId"].toString() != appPreference.notificationid) {
              onDidReceiveNotificationResponse(appLaunchDetails.notificationResponse!);
              appPreference.notificationid = messagemap["notificationId"].toString();
            }
          });
        });
      }
    }

    MainBinding();
    await controller.getLayoutSettings();
    final appLinks = AppLinks();
    appLinks.uriLinkStream.listen((uri) {
      StatefulWrapperState.handleDeepLink(uri);
    });
  }

  static Future<void> handleDeepLink(Uri uri) async {
    print("Uri.base.query:${uri.path}");
    final SplashController splashController = Get.find();
    final AppPreference appPreference = Get.find();

    await waitForAuthReady();

    Future.delayed(const Duration(milliseconds: 200)).then((value) async {
      print("uri.queryParameters--> ${uri.queryParameters}");
      StatefulWrapperState._isLinkRedirectionEnable = true;
      await splashController.getLayoutSettings();
      if (uri.path == '/password/verification') {
        if (uri.queryParameters["email"] == appPreference.email || appPreference.email!.isEmpty) {
          splashController.resetFerryClient(isCacheClear: false);
          splashController.navigator?.navigateScreen(SplashScreen.resetPassword, uri.queryParameters);
        } else {
          splashController.resetFerryClient(isCacheClear: false);
          showAlertDialog(
              okButtonContent: label_okay.tr,
              contentText: label_mail_mismatch.tr,
              onOkPressed: () {
                Get.back();
                splashController.navigator?.navigateScreen(SplashScreen.guestHome, {});
              });
        }
      } else if (uri.path.contains('/review/write')) {
        int? id = int.tryParse(uri.path.split("/").last);
        if (appPreference.accessToken != null && appPreference.accessToken!.isNotEmpty) {
          AppReviewsController controller = Get.find();
          controller.getPendingUserReview(id ?? 0, (reservationItem) {
            controller.appReviewsNavigator?.navigateScreen(AppReviewsScreen.writeReview,
                {'itemInfo': reservationItem, 'page': 'appReview', 'isFrom': 'splash'});
            controller.isPaginationLoader.value = true;
            isShowLoader = false;
          });
        } else {
          splashController.navigator?.navigateScreen(SplashScreen.login, {});
        }
      } else if (uri.path == '/user/verification') {
        print('test9${uri.queryParameters}');
        Constants.verificationEmail = uri.queryParameters["email"];
        Constants.confirmationCode = uri.queryParameters["confirm"];
        isTerminateMessage.value = true;
        splashController.navigator?.navigateScreen(
            SplashScreen.editProfile,
            (uri.queryParameters != null && uri.queryParameters.isNotEmpty)
                ? uri.queryParameters
                : {'isFromDocument': true});
      } else if (uri.path.contains('/cars/')) {
        await Future.delayed(const Duration(milliseconds: 200));
        print("hello1");
        if (Get.currentRoute == '/') splashController.resetFerryClient(isCacheClear: false);
        splashController.deeplinkListId = int.tryParse(uri.pathSegments.last.split('-').last);
        print("Uri.base.query:${uri.path} --- ${uri.pathSegments}--- ${splashController.deeplinkListId}");
        print("hello2");
        bool isNetconnected = await splashController.isNetworkConnected();
        if (isNetconnected) {
          print("hello3");
          if (currencyRates == null) {
            await splashController.getCurrencyRates();
          }
          Stripe.publishableKey = stripeKey;
          Stripe.instance.applySettings();
          if(Get.currentRoute.toLowerCase().contains('itemdetail')) {
            splashController.gethomeItemDetail();
          } else {
            splashController.pendingDeeplinkItemDetail = true;
            _isLinkRedirectionEnable = false;
            splashController.navigator?.navigateScreen(SplashScreen.guestHome, {});
          }
        }
      } else if (uri.path.contains('message') ||
          uri.queryParameters.containsKey('message')) {
        if (appPreference.accessToken != null && appPreference.accessToken!.isNotEmpty) {
          String refer = uri.queryParameters['type'] ?? uri.path;
          bool isRenter = refer.contains('renter') || refer.contains('guest');
          bool isOwner = refer.contains('owner') || refer.contains('host');
          if (isRenter && (appPreference.isOwner ?? false)) {
            appPreference.isOwner = false;
            splashController.navigator?.navigateScreen(SplashScreen.userRoleChanger, {'selectedTab': 3});
          } else if (isOwner && !(appPreference.isOwner ?? false)) {
            appPreference.isOwner = true;
            splashController.navigator?.navigateScreen(SplashScreen.userRoleChanger, {'selectedTab': 3});
          } else {
            if (Get.currentRoute == "/guestHomePage") {
              final HomeController homeController = Get.find();
              homeController.change(rxVariable: homeController.rxSelectedTab, value: 3);
            } else {
              splashController.navigator?.navigateScreen(SplashScreen.guestHome, {'selectedTab': 3});
            }
          }
        } else {
          splashController.navigator?.navigateScreen(SplashScreen.login, {});
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    controller.isLoading.value = false;
    bottomViewPadding = MediaQuery.viewPaddingOf(context).bottom;
    topViewPadding = MediaQuery.viewPaddingOf(context).top;
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height - bottomViewPadding;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Stack(
        children: [
          Assets.drawableSplash.toPng(
            width: deviceWidth,
            height: deviceHeight + bottomViewPadding,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  @override
  navigateScreen(SplashScreen screen, Map<String, dynamic> param, {int? ThemeType, bool? isviewMessage}) {
    debugPrint("navigateScreen: ${screen} --- ${isviewMessage} --- ${Get.currentRoute}");
    if(isviewMessage !=null && isviewMessage && screen == SplashScreen.guestHome && Get.currentRoute == '/ReservationDetail'){
      return;
    }
    bool isDarkmode = controller.isDarkMode();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: isDarkmode ? Brightness.dark : Brightness.light,
      statusBarIconBrightness: isDarkmode ? Brightness.light : Brightness.dark,
      systemNavigationBarIconBrightness: isDarkmode ? Brightness.light : Brightness.dark,
    ));
    var navigateScreens = switch (screen) {
      SplashScreen.guestHome =>
        param.isNotEmpty && param['isFromDeeplink'] != null && param['isFromDeeplink']
          ? Get.offAll(() => HomePage(),
            binding: MainBinding(),
            arguments: {'selectedTab': 0},
            routeName: "/guestHomePage",
          )
        : param.isNotEmpty && param['isFromauthRefresh'] != null && param['isFromauthRefresh']
            ? Get.to(() => HomePage(),
            binding: MainBinding(isDisableClearController: true),
            arguments: param,
            routeName: "/guestHomePage",
            transition: Transition.noTransition)
          : Get.to(() => HomePage(),
              binding: MainBinding(),
              arguments: param,
              routeName: "/guestHomePage",
              transition: Transition.noTransition),
      SplashScreen.getStarted => Get.to(
          () => GetStarted(),
          binding: AuthBinding(),
        ),
      SplashScreen.stepFinal => {
          Get.to(
            () => StepFinalScreen(),
            arguments: param,
          )?.then((result) {
            if (param['isRefresh']) {
              navigateScreen(SplashScreen.guestHome, {});
            }
          }),
        },
      SplashScreen.resetPassword =>
        Get.to(() => ResetPassword(), binding: AuthBinding(), arguments: param, routeName: "/resetPassword")
            ?.then((value) {
          if (_isLinkRedirectionEnable) {
            navigateScreen(SplashScreen.guestHome, {});
          }
        }),
      SplashScreen.editProfile => {navigateEditProfileScreen(param)},
      SplashScreen.signup => Get.to(
          () => Signup(),
          binding: AuthBinding(),
          arguments: param,
          transition: ThemeType == 1 ? Transition.noTransition : Transition.leftToRight,
          duration: Duration(milliseconds: ThemeType == 1 ? 500 : 250),
        )?.then((value) {
          if (param['updatelayout'] != null) {
            param['updatelayout']();
          }
        }),
      SplashScreen.login => Get.to(
          () => Login(),
          binding: AuthBinding(),
          arguments: param,
          transition: ThemeType == 1 ? Transition.noTransition : Transition.leftToRight,
          duration: Duration(milliseconds: ThemeType == 1 ? 500 : 250),
        )?.then((value) {
          debugPrint("loginparam: $param");
          if (param['isRefresh'] != null) {
            if (param['isRefresh'] != null && param['isRefresh']) {
              navigateScreen(SplashScreen.guestHome, {});
            } else {
              debugPrint("getback login called");
              Get.back();
            }
          } else if (param['updatelayout'] != null) {
            param['updatelayout']();
          }
        }),
      SplashScreen.userRoleChanger =>
        navigateToScreen(screen: UserRoleChangePage(), binding: ProfileBinding(), param: param),
      SplashScreen.homeItemDetail => Get.to(
          () => HomeItemDetailView(itemDetail: param['viewListingInfo']),
          routeName: 'itemdetail',
        )?.then((value) {
          if (Get.isRegistered<HomeItemDetailController>()) {
            HomeItemDetailController homeItemDetailController = Get.find();
            homeItemDetailController.itemInfo = null;
          }
          if (_isLinkRedirectionEnable) {
            navigateScreen(SplashScreen.guestHome, {"isFromDeeplink": true});
          }
        }),
      SplashScreen.viewMessage => navigateToScreen(
          screen: ViewMessagePage(),
          isEnableResetFerry: false,
          param: param,
        callback: (){
            print("_isLinkRedirectionEnable: ${_isLinkRedirectionEnable} --- ${param['isTerminateOpen']}");
          if (_isLinkRedirectionEnable) {
            navigateScreen(SplashScreen.guestHome, {},isviewMessage: true);
            if(param['isTerminateOpen']){
              Future.delayed(const Duration(milliseconds: 1500)).then((value) {
                HomeController homeController = Get.find();
                homeController.change(rxVariable: homeController.rxSelectedTab, value: 3);
              });
            }
          }
        }
        )
    };
    if (screen == SplashScreen.guestHome && controller.pendingDeeplinkItemDetail) {
      controller.pendingDeeplinkItemDetail = false;
      Future.delayed(const Duration(milliseconds: 500), () {
        controller.gethomeItemDetail();
      });
    }
  }

  void navigateEditProfileScreen(Map<String, dynamic> param) {
    if (param['changeEmail'] == '1') {
      controller.changeTheme(isEnableForceUpdate: true);
      Get.to(() => EditProfilePage(), binding: MainBinding(), arguments: param)
          ?.then((value) {
        if (_isLinkRedirectionEnable) {
          navigateScreen(SplashScreen.guestHome, {});
        }
      });
      return;
    }
    if (param['isFromDocument'] == true) {
      if (Get.currentRoute == '/EditProfilePage' || Get.currentRoute.contains("BOTTOMSHEET")) {
        EditProfileController editProfileController = Get.find();
        editProfileController.getProfile();
        if (Get.isBottomSheetOpen == true) {
          Get.back();
        }
      } else {
        Get.to(() => EditProfilePage(), binding: MainBinding())?.then((value) {
          if (isTerminateMessage.value || _isLinkRedirectionEnable) {
            navigateScreen(SplashScreen.guestHome, {});
          }
        });
      }
    }
    controller.changeTheme(isEnableForceUpdate: true);
    if (appPreference.accessToken?.isNotEmpty ?? false) {
      controller.confirmEmailVerification(email: param["email"], confirmCode: param["confirm"]).then((_) {
        Get.to(() => EditProfilePage(), binding: MainBinding(), arguments: param)?.then((value) {
          if (_isLinkRedirectionEnable) {
            navigateScreen(SplashScreen.guestHome, {});
          }
        });
      });
    } else {
      navigateScreen(SplashScreen.login, {'email': param["email"], 'confirmCode': param["confirm"]});
    }
  }

  void navigateToScreen(
      {required Widget screen,
      required Map<String, dynamic> param,
      Bindings? binding,
      bool isEnableResetFerry = true,
      VoidCallback? callback}) {
    if (isEnableResetFerry) {
      controller.resetFerryClient();
    }
    debugPrint('screen navigation: ${screen.runtimeType} --- $param');
    if (param['isreplaceroot'] != null && param['isreplaceroot'] ) {
      Get.offAndToNamed(
        screen.runtimeType.toString(),
        arguments: param,
      )?.then((value) {
        if (callback != null) {
          callback();
        }
      });
    } else {
      Get.to(
        () => screen,
        binding: binding,
        routeName: screen.runtimeType.toString(),
        arguments: param,
      )?.then((value) {
        if (callback != null) {
          callback();
        }
      });
    }
  }


  void _moveToHomeScreen() {
    debugPrint("remainingTime duration: $remainingTime");
    if (navigationTimer != null) {
      navigationTimer!.cancel();
    }
    if (remainingTime.isNegative) {
      remainingTime = Duration.zero;
    }
    navigationTimer = Timer(remainingTime, () {
      if (!_isLinkRedirectionEnable) {
        controller.resetFerryClient();
      }
      controller.changeLanguage();
      if (controller.appPreference.accessToken != null && controller.appPreference.accessToken!.isNotEmpty) {
        controller.getUnreadCount();
        controller.refreshProfileData();
      }
      debugPrint(
          "remainingTime duration: _isLinkRedirectionEnable $_isLinkRedirectionEnable --- ${Get.isDialogOpen}");
      if (!_isLinkRedirectionEnable && !Get.isDialogOpen! && !isTerminateMessage.value) {
        if (controller.appPreference.accessToken != null &&
            controller.appPreference.accessToken!.isNotEmpty) {
          navigateScreen(SplashScreen.guestHome, {});
        } else {
          navigateScreen(SplashScreen.getStarted, {});
        }
      }
    });
  }

  void moveToFCMPage(
      {required dynamic payload, bool isRefresh = false, NotificationResponse? notificationResponse}) {
    if (appPreference.userID != null && appPreference.userID!.isNotEmpty) {
      debugPrint(
          "navigateScreens: notificationResponse: $notificationResponse -- ${notificationResponse?.actionId} --- $isRefresh");
      final Map<String, dynamic> payloadMap = _payloadToMap(payload);
      appPreference.notificationid = payloadMap['notificationId'].toString();

      if ('id_reply' == notificationResponse?.actionId) {
        controller.resetFerryClient();
        String? replyText = notificationResponse?.input;
        final ViewMessageController viewMessageController = Get.find();
        viewMessageController
          ..messageType = 'message'
          ..sentMessageController.text = replyText ?? ''
          ..threadid = int.parse(payloadMap['threadId'])
          ..sentMessage();
      }
      debugPrint('notificationResponse!.id: ${notificationResponse?.id}');

      if (payloadMap['listingStatus'] != null &&
          (payloadMap['listingStatus'] == 'declined' || payloadMap['listingStatus'] == 'approved')) {
        if (appPreference.userID == payloadMap['userId']) {
          if (Get.previousRoute == '/Login') Get.close(1);
          if (Get.currentRoute == '/StepFinalScreen') {
            OwnerPropertyListController propertyListController = Get.find();
            propertyListController.stepFinalarguments.value = {
              'listid': payloadMap['listId'],
              'refreshlist': true
            };
          }

          navigateScreen(SplashScreen.stepFinal, {'listid': payloadMap['listId'], 'isRefresh': isRefresh});
        } else {
          controller.showToast(error_msg_oops_something_went_wrong_pls_try_again.tr);
        }
      } else if (payloadMap['screenType'] != null && payloadMap['screenType'] == 'trips') {
        debugPrint(
            'moveToFCMPage: $payloadMap ---- ${payloadMap['screenType'] != null && payloadMap['screenType'] == 'trips'}');
        isPastReservationSection = payloadMap['actionType'] == "cancelReservation" ? true : null;
        if (payloadMap['userType'] != null && payloadMap['userType'] == 'owner' && !appPreference.isOwner!) {
          appPreference.isOwner = true;
          navigateScreen(SplashScreen.userRoleChanger, {'selectedTab': 2, "isPast": isPastReservationSection});
        } else if (payloadMap['userType'] != null &&
            payloadMap['userType'] == 'renter' &&
            appPreference.isOwner!) {
          appPreference.isOwner = false;
          navigateScreen(SplashScreen.userRoleChanger, {'selectedTab': 2, "isPast": isPastReservationSection});
        } else {
          if (Get.currentRoute == '/guestHomePage') {
            HomeController controllerHome = Get.find();
            controllerHome.change(rxVariable: controllerHome.rxSelectedTab, value: 2);
            debugPrint("HomeController -----> ${controllerHome.hashCode}");
            Future.delayed(const Duration(milliseconds: 350)).then((value) {
              MyTripListController controller = Get.find();
              if (isPastReservationSection ?? false) {
                controller.updateTabIndex(1);
                isPastReservationSection = false;
              }
              controller.getMyListData();
            });
          } else {

            navigateScreen(SplashScreen.guestHome, {'selectedTab': 2, "isPast": isPastReservationSection});
          }
        }
      } else if (payloadMap['screenType'] != null && payloadMap['screenType'] == 'message') {
        debugPrint("get.currentroute:ioschec message ${Get.currentRoute} --- $payloadMap");
        if (payloadMap['userType'] != null && payloadMap['userType'] == 'owner' && !appPreference.isOwner!) {
          appPreference.isOwner = true;
          navigateScreen(
              SplashScreen.userRoleChanger, {'selectedTab': 3, 'threadId': payloadMap['threadId']});
        } else if (payloadMap['userType'] != null &&
            payloadMap['userType'] == 'renter' &&
            appPreference.isOwner!) {
          appPreference.isOwner = false;
          navigateScreen(
              SplashScreen.userRoleChanger, {'selectedTab': 3, 'threadId': payloadMap['threadId']});
        } else {
          if (Get.currentRoute != '/ViewMessagePage') {
            _isLinkRedirectionEnable = true;
            debugPrint("get.currentroute:ioschec  2 ${Get.currentRoute} --- ${payloadMap['threadId']}");
            navigateScreen(SplashScreen.viewMessage,
                {'threadId': payloadMap['threadId'], 'message': payloadMap, 'isFrom': "FCM",'isTerminateOpen':Get.currentRoute =='/'});
          } else {
            final ViewMessageController viewMessageController = Get.find();
            if (viewMessageController.threadid != payloadMap['threadId']) {
              if( viewMessageController.updatedThreadId.value != int.parse(payloadMap['threadId'].toString())) {
                viewMessageController.updatedThreadId.value = int.parse(payloadMap['threadId'].toString());
              } else {
                viewMessageController.updatedThreadId.refresh();
              }
            }
          }
        }
      } else if (payloadMap['screenType'] == 'documentVerification') {
        isTerminateMessage.value = true;
        navigateScreen(SplashScreen.editProfile, {'isFromDocument': true});
      } else {
        _moveToHomeScreen();
      }

      if (payloadMap['screenType'] != null &&
          (payloadMap['screenType'] == 'trips' || payloadMap['screenType'] == 'message') &&
          !(Get.currentRoute == '/ViewMessagePage') &&
          !BaseController.socketIO.connected) {
        var content = payloadMap['content'] ?? payloadMap['messageContent'];
        if (payloadMap['userType'] == 'host' &&
            appPreference.isOwner! &&
            content != null &&
            content.toString().isNotEmpty) {
          int count = rxhostUnreadCount.value + 1;
          basecontroller.change(rxVariable: rxhostUnreadCount, value: count);
          debugPrint("messageUnreadCount: hostUnreadCount ${rxhostUnreadCount.value}");
        } else if (payloadMap['userType'] == 'guest' &&
            !appPreference.isOwner! &&
            content != null &&
            content.toString().isNotEmpty) {
          int count = rxguestUnreadCount.value + 1;
          basecontroller.change(rxVariable: rxguestUnreadCount, value: count);
          debugPrint("messageUnreadCount: ${rxguestUnreadCount.value}");
        }
      }
    } else {
      navigateScreen(SplashScreen.login, {'isRefresh': isRefresh});
    }
  }

  Map<String, dynamic> _payloadToMap(dynamic payload) {
    if (payload == null) return <String, dynamic>{};
    if (payload is Map<String, dynamic>) return payload;
    if (payload is Map) {
      return payload.map((key, value) => MapEntry(key.toString(), value));
    }
    if (payload is String) {
      if (payload.isEmpty) return <String, dynamic>{};
      final dynamic decoded = json.decode(payload);
      if (decoded is Map<String, dynamic>) return decoded;
      if (decoded is Map) {
        return decoded.map((key, value) => MapEntry(key.toString(), value));
      }
    }
    return <String, dynamic>{};
  }

  int? _toNullableInt(dynamic value) {
    if (value == null) return null;
    if (value is int) return value;
    return int.tryParse(value.toString());
  }


  void getKeyAndMoveHome() {
    debugPrint("getKeyAndMoveHome called");
    controller.getSecureSiteSettings().then((value) {
      downloadedLanguages = appPreference.downloadedLanguages!.split(",").toSet();
      LocalizationService.changeLocale(languageCode: appPreference.preferredLanguage!);

      markAuthReady();

      Future.delayed(const Duration(milliseconds: 10)).then((value) {
        controller.checkNetwork(getHomBannerInfo);
      });
    });
  }

  void getHomBannerInfo() {
    debugPrint("getHomBannerInfo called");
    controller.getHomePageBannerData().then((_) {
      final elapsed = DateTime.now().difference(_splashStartTime);
      final remaining = _minSplashDuration - elapsed;
      remainingTime = remaining.isNegative ? Duration.zero : remaining;
      _moveToHomeScreen();
    });
  }
}
