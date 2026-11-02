import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/screens/views/custom_scaffold.dart';
import 'package:gozy/screens/views/owner/reporting/owner_dashboard_controller.dart';
import 'package:gozy/screens/views/owner/reporting/owner_reporting_navigation.dart';
import 'package:gozy/utils/owner_reporting_i18n.dart';
import 'package:gozy/widgets/custom_stateful_widget.dart';
import 'package:gozy/widgets/owner_reporting/owner_dashboard_view.dart';

/// Owner dashboard screen (profile menu, owners only).
class OwnerDashboardPage extends CustomStatefulWidget {
  const OwnerDashboardPage({super.key});

  @override
  OwnerDashboardPageState createState() => OwnerDashboardPageState();
}

class OwnerDashboardPageState extends CustomStatefulWidgetState<OwnerDashboardPage> {
  final OwnerDashboardController controller = Get.find();

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
      title: orpText('orp_odb_title'),
      isDisableLoader: true,
      body: Obx(() => RefreshIndicator(
            onRefresh: controller.load,
            child: OwnerDashboardView(
              filters: controller.filters.value,
              data: controller.data.value,
              vehicleOptions: controller.vehicleOptions.toList(),
              isFetching: controller.isFetching.value,
              errorMessage: controller.errorMessage.value,
              onFiltersChanged: controller.setFilters,
              onRetry: controller.load,
              onSeeEarnings: openOwnerEarnings,
              onAddVehicle: () => addVehicleFromReporting(onReturn: controller.load),
            ),
          )),
    );
  }
}
