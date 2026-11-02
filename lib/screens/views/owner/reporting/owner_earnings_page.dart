import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/screens/views/owner/reporting/owner_earnings_controller.dart';
import 'package:gozy/screens/views/owner/reporting/owner_reporting_navigation.dart';
import 'package:gozy/screens/views/profile/profile_navigator.dart';
import 'package:gozy/utils/owner_reporting_i18n.dart';
import 'package:gozy/widgets/custom_stateful_widget.dart';
import 'package:gozy/widgets/owner_reporting/owner_earnings_view.dart';

/// "Revenues & payouts" screen (profile menu, owners only).
class OwnerEarningsPage extends CustomStatefulWidget {
  const OwnerEarningsPage({super.key});

  @override
  OwnerEarningsPageState createState() => OwnerEarningsPageState();
}

class OwnerEarningsPageState extends CustomStatefulWidgetState<OwnerEarningsPage> {
  final OwnerEarningsController controller = Get.find();

  @override
  void initState() {
    isShowLoader = false;
    super.initState();
    controller.open();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      controller: controller,
      isShowAppBar: true,
      title: orpText('orp_earnings_title'),
      isDisableLoader: true,
      body: Obx(() => RefreshIndicator(
            onRefresh: controller.load,
            child: OwnerEarningsView(
              filters: controller.filters.value,
              data: controller.data.value,
              vehicleOptions: controller.vehicleOptions.toList(),
              isFetching: controller.isFetching.value,
              errorMessage: controller.errorMessage.value,
              onFiltersChanged: controller.setFilters,
              onPageChanged: controller.goToPage,
              onResetFilters: controller.resetFilters,
              onRetry: controller.load,
              onAddVehicle: () => addVehicleFromReporting(onReturn: controller.load),
              onSeeTransactions: () => ProfileNavigator().navigateScreen(ProfileScreen.transactionHistory),
            ),
          )),
    );
  }
}
