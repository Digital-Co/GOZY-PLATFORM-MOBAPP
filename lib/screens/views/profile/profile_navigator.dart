import 'package:get/get.dart';
import 'package:gozy/screens/binding/auth_binding.dart';
import 'package:gozy/screens/binding/main_binding.dart';
import 'package:gozy/screens/binding/profile_binding.dart';
import 'package:gozy/screens/views/home/home_page.dart';
import 'package:gozy/screens/views/owner/reporting/owner_dashboard_page.dart';
import 'package:gozy/screens/views/owner/reporting/owner_earnings_page.dart';
import 'package:gozy/screens/views/profile/about/about_your_page.dart';
import 'package:gozy/screens/views/profile/edit_profile/edit_profile.dart';
import 'package:gozy/screens/views/profile/manage_your_account/app_manage_your_account.dart';
import 'package:gozy/screens/views/profile/payout_preference/payout_preference.dart';
import 'package:gozy/screens/views/profile/reviews/app_reviews.dart';
import 'package:gozy/screens/views/profile/service_plan/receipt.dart';
import 'package:gozy/screens/views/profile/service_plan/service_plan.dart';
import 'package:gozy/screens/views/profile/service_plan/service_plan_controller.dart';
import 'package:gozy/screens/views/profile/service_plan/service_plan_history.dart';
import 'package:gozy/screens/views/profile/settings/app_settings.dart';
import 'package:gozy/screens/views/profile/share_feedback/share_feedback_page.dart';
import 'package:gozy/screens/views/profile/transaction_history/transaction_filter.dart';
import 'package:gozy/screens/views/profile/transaction_history/transaction_history.dart';
import 'package:gozy/screens/views/profile/user_role_changer.dart';
import 'package:gozy/screens/views/static_page/not_found.dart';

import '../../binding/booking_binding.dart';
import '../auth/resetPassword/resetpassword.dart';
import '../booking/payment_type/payment_type.dart';
import '../home_item_detail/home_item_detail.dart';
import '../static_page/static_page.dart';
import 'service_plan/review_pay_service_plan.dart';

enum ProfileScreen {
  userRoleChanger,
  settings,
  manageYourAccount,
  aboutYourPage,
  changePassword,
  staticPage,
  feedback,
  editProfileScreen,
  payoutPreference,
  transactionHistory,
  reviews,
  propertyDetail,
  notFound,
  servicePlan,
  servicePlanHistory,
  reviewPayServicePlan,
  paymentType,
  servicePlanBack,
  receipt,
  ownerDashboard,
  ownerEarnings
}

class ProfileNavigator {
  Future<dynamic>? navigateScreen(ProfileScreen screen, [dynamic param]) {
    switch (screen) {
      case ProfileScreen.receipt:
        ServicePlanController controller = Get.find();
        controller.isLoading.value = true;
        controller.purchaseServicePlanData.value = null;
        return Get.to(() => Receipt(), binding: ProfileBinding(), arguments: param, routeName: '/Receipt')?.then((value) {
          if(param["from"] == "purchase") {
            print("refreshPurchase Plan");
            controller.servicePlanCurrentPage = 1;
            controller.getServicePlans(index: controller.servicePlanTabController.index);
          }
        });
      case ProfileScreen.userRoleChanger:
        return Get.to(() => UserRoleChangePage(), binding: ProfileBinding());
      case ProfileScreen.notFound:
        return Get.to(() => NotFound(), binding: ProfileBinding());
      case ProfileScreen.settings:
        return Get.to(() => AppSettings(), binding: ProfileBinding());
      case ProfileScreen.manageYourAccount:
        return Get.to(() => AppManageYourAccount(), binding: ProfileBinding());
      case ProfileScreen.aboutYourPage:
        return Get.to(() => AboutYourPage(), binding: ProfileBinding());
      case ProfileScreen.changePassword:
        return Get.to(() => ResetPassword(), binding: AuthBinding(), arguments: {'screenType': 'changePassword'});
      case ProfileScreen.staticPage:
        return Get.to(() => StaticContentPage(), arguments: param, binding: ProfileBinding());
      case ProfileScreen.feedback:
        return Get.to(() => ShareFeedbackPage(), binding: ProfileBinding());
      case ProfileScreen.editProfileScreen:
        return Get.to(() => EditProfilePage(), binding: ProfileBinding())?.then((v) {
          param();
        });
      case ProfileScreen.payoutPreference:
        return Get.to(() => PayoutPreference(),
            arguments: param, binding: ProfileBinding(), routeName: '/payoutPreference');
      case ProfileScreen.reviews:
        return Get.to(() => AppReviews(), binding: ProfileBinding());
      case ProfileScreen.transactionHistory:
        return Get.to(() => TransactionHistory(), binding: ProfileBinding());
      case ProfileScreen.ownerDashboard:
        return Get.to(() => const OwnerDashboardPage(), binding: ProfileBinding(), routeName: '/OwnerDashboard');
      case ProfileScreen.ownerEarnings:
        return Get.to(() => const OwnerEarningsPage(), binding: ProfileBinding(), routeName: '/OwnerEarnings');
      case ProfileScreen.propertyDetail:
        return Get.to(() => HomeItemDetailView(), binding: ProfileBinding(), arguments: param);
      case ProfileScreen.servicePlan:
        return Get.to(() => ServicePlan(), binding: ProfileBinding(), arguments: param, routeName: '/ServicePlan');
      case ProfileScreen.servicePlanHistory:
        return Get.to(() => ServicePlanHistory(), binding: ProfileBinding(), arguments: param, routeName: '/ServicePlanHistory');
      case ProfileScreen.reviewPayServicePlan:
        return Get.to(() => ReviewPayServicePlan(), binding: ProfileBinding(), arguments: param, routeName: '/ReviewPayServicePlan');
      case ProfileScreen.paymentType:
        return Get.to(
          () => PaymentTypePage(),
          binding: BookingBinding(),
          arguments: param,
          routeName: '/PaymentTypePage'
        );
      case ProfileScreen.servicePlanBack:
        Get.until((route) => route.settings.name == '/ServicePlan');
        return null;
    }
  }

  void showDialog() {}
}