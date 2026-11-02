import 'package:get/get.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_api.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_logic.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_models.dart';
import 'package:gozy/utils/owner_reporting_i18n.dart';

/// Owner dashboard. It only fetches and keeps what the API returns: the
/// server computes the periods, the amounts, the variations and the shares.
class OwnerDashboardController extends BaseController {
  final Rx<OwnerReportingFilters> filters = const OwnerReportingFilters().obs;
  final Rxn<OwnerDashboardData> data = Rxn<OwnerDashboardData>();
  final RxnString errorMessage = RxnString();

  /// True while a request is running (first load or refresh of filters).
  final RxBool isFetching = true.obs;

  /// Vehicles of the filter, kept across reloads (the API lists them all).
  final RxList<OwnerVehicleOption> vehicleOptions = <OwnerVehicleOption>[].obs;

  /// Identifier of the current request: a late answer of an older request is dropped.
  int _currentRequestId = 0;

  /// Injectable in tests.
  OwnerReportingApi Function()? apiFactory;

  OwnerReportingApi get _api => apiFactory?.call() ?? OwnerReportingApi(this);

  /// Called each time the screen opens: starts from the default period.
  void open() {
    _currentRequestId++;
    filters.value = const OwnerReportingFilters();
    data.value = null;
    errorMessage.value = null;
    vehicleOptions.clear();
    load();
  }

  void setFilters(OwnerReportingFilters next) {
    filters.value = next;
    load();
  }

  Future<void> load() async {
    final requestId = ++_currentRequestId;
    final current = filters.value;
    if (!current.canRequest) {
      isFetching.value = false;
      return;
    }
    isFetching.value = true;
    errorMessage.value = null;
    final outcome = await _api.getDashboard(current, currency: appPreference.preferredCurrency);
    if (requestId != _currentRequestId) return; // an older answer arrived late
    isFetching.value = false;
    if (outcome != null && outcome.isOk) {
      final result = outcome.data!;
      data.value = result;
      if (result.vehicleOptions.isNotEmpty || current.listId == null) {
        vehicleOptions.assignAll(result.vehicleOptions);
      }
    } else {
      errorMessage.value = outcome?.errorMessage ?? orpText('orp_error_text');
    }
  }

  @override
  void onClose() {
    _currentRequestId++;
    super.onClose();
  }
}
