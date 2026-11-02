import 'package:get/get.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_api.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_logic.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_models.dart';
import 'package:gozy/utils/owner_reporting_i18n.dart';

/// "Revenues & payouts". It only fetches and keeps what the API returns; the
/// search, sort, tab and page are arguments of the request and the server
/// filters, sorts and counts.
class OwnerEarningsController extends BaseController {
  final Rx<OwnerReportingFilters> filters = const OwnerReportingFilters().obs;
  final Rxn<OwnerEarningsData> data = Rxn<OwnerEarningsData>();
  final RxnString errorMessage = RxnString();
  final RxBool isFetching = true.obs;
  final RxList<OwnerVehicleOption> vehicleOptions = <OwnerVehicleOption>[].obs;

  /// Page size used by the requests (10 by default, 50 at most on the server).
  int pageSize = orpDefaultPageSize;

  /// Identifier of the current request: a late answer of an older request is dropped.
  int _currentRequestId = 0;

  /// Injectable in tests.
  OwnerReportingApi Function()? apiFactory;

  OwnerReportingApi get _api => apiFactory?.call() ?? OwnerReportingApi(this);

  void open() {
    _currentRequestId++;
    filters.value = OwnerReportingFilters(pageSize: pageSize);
    data.value = null;
    errorMessage.value = null;
    vehicleOptions.clear();
    load();
  }

  /// Any change of period, vehicle, tab, search or sort restarts at page 1.
  void setFilters(OwnerReportingFilters next) {
    filters.value = next.firstPage();
    load();
  }

  void goToPage(int page) {
    if (page < 1) return;
    filters.value = filters.value.copyWith(page: page);
    load();
  }

  void resetFilters() {
    filters.value = OwnerReportingFilters(pageSize: pageSize);
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
    final outcome = await _api.getEarnings(current, currency: appPreference.preferredCurrency);
    if (requestId != _currentRequestId) return; // an older answer arrived late
    isFetching.value = false;
    if (outcome != null && outcome.isOk) {
      final result = outcome.data!;
      data.value = result;
      if (result.vehicles.isNotEmpty || current.listId == null) {
        vehicleOptions.assignAll(result.vehicles);
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
