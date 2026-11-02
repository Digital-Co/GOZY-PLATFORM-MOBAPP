import 'package:get/get.dart';
import 'package:gozy/screens/views/owner/reporting/owner_dashboard_controller.dart';
import 'package:gozy/screens/views/profile/about/profile_why_host/profile_why_host_controller.dart';
import 'package:gozy/screens/views/profile/edit_profile/edit_profile_controller.dart';
import 'package:gozy/screens/views/profile/manage_your_account/app_manage_your_accout_controller.dart';
import 'package:gozy/screens/views/profile/reviews/write_review/write_review_controller.dart';
import 'package:gozy/screens/views/profile/service_plan/service_plan_controller.dart';
import 'package:gozy/screens/views/profile/settings/app_settings_controller.dart';
import 'package:gozy/screens/views/profile/share_feedback/share_feedbackpage_controller.dart';
import 'package:gozy/screens/views/profile/transaction_history/transaction_history_controller.dart';

import '../views/profile/payout_preference/payout_preference_controller.dart';
import '../views/profile/profile_controller.dart';
import '../views/profile/reviews/app_reviews_controller.dart';


class ProfileBinding extends Bindings{
  ProfileBinding._privateConstructor();
  static final ProfileBinding _instance = ProfileBinding._privateConstructor();
  factory ProfileBinding() {
    return _instance;
  }
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
    Get.lazyPut<AppSettingsController>(() => AppSettingsController(), fenix: true);
    Get.lazyPut<AppManageYourAccountController>(() => AppManageYourAccountController(), fenix: true);
    Get.lazyPut<ProfileWhyHostController>(() => ProfileWhyHostController(), fenix: true);
    Get.lazyPut<EditProfileController>(() => EditProfileController(), fenix: true);
    Get.lazyPut<ShareFeedBackPageController>(() => ShareFeedBackPageController(), fenix: true);
    Get.lazyPut<PayoutPreferenceController>(() => PayoutPreferenceController(), fenix: true);
    Get.lazyPut<TransactionHistoryController>(() => TransactionHistoryController(), fenix: true);
    Get.lazyPut<AppReviewsController>(() => AppReviewsController(), fenix: true);
    Get.lazyPut<WriteReviewController>(() => WriteReviewController(), fenix: true);
    Get.lazyPut<ServicePlanController>(() => ServicePlanController(), fenix: true);
    Get.lazyPut<OwnerDashboardController>(() => OwnerDashboardController(), fenix: true);
  }
}