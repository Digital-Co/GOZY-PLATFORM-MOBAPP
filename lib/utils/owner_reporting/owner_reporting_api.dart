import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/graphql/ownerReporting/__generated__/get_owner_dashboard.data.gql.dart';
import 'package:gozy/graphql/ownerReporting/__generated__/get_owner_dashboard.req.gql.dart';
import 'package:gozy/graphql/ownerReporting/__generated__/get_owner_earnings.data.gql.dart';
import 'package:gozy/graphql/ownerReporting/__generated__/get_owner_earnings.req.gql.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_logic.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_models.dart';

/// Read-only calls of the owner reporting. The server computes everything and
/// is the judge of every rule; a null result means "no usable answer"
/// (network, timeout, 500 handled by the client) and the screen offers a retry.
class OwnerReportingApi {
  const OwnerReportingApi(this.host);

  /// Controller of the page, needed by the GraphQL client.
  final BaseController host;

  Future<OwnerDashboardOutcome?> getDashboard(
    OwnerReportingFilters filters, {
    required String currency,
  }) async {
    final request = GgetOwnerDashboardReq((b) {
      b.vars
        ..period = filters.preset
        ..startDate = filters.startArgument
        ..endDate = filters.endArgument
        ..listId = filters.listId
        ..granularity = filters.granularity
        ..convertCurrency = currency;
    });
    final json = await _run<GgetOwnerDashboardData>(
      request,
      (data) => data.getOwnerDashboard?.toJson(),
    );
    return json == null ? null : OwnerDashboardOutcome.fromJson(json);
  }

  Future<OwnerEarningsOutcome?> getEarnings(
    OwnerReportingFilters filters, {
    required String currency,
  }) async {
    final request = GgetOwnerEarningsReq((b) {
      b.vars
        ..period = filters.preset
        ..startDate = filters.startArgument
        ..endDate = filters.endArgument
        ..listId = filters.listId
        ..tab = filters.tab
        ..search = filters.searchArgument
        ..sortBy = filters.sortBy
        ..sortDir = filters.sortDir
        ..page = filters.page
        ..pageSize = filters.pageSize
        ..granularity = filters.granularity
        ..convertCurrency = currency;
    });
    final json = await _run<GgetOwnerEarningsData>(
      request,
      (data) => data.getOwnerEarnings?.toJson(),
    );
    return json == null ? null : OwnerEarningsOutcome.fromJson(json);
  }

  Future<Map<String, dynamic>?> _run<T>(
    dynamic request,
    Map<String, dynamic>? Function(T data) pick,
  ) async {
    try {
      final res = await FerryLoggerClient.makeRequest(
        request,
        host,
        () {},
        isViewLoader: false,
        isStartLoader: false,
        isViewErrorMessage: false,
        isToGet400Message: true,
      )?.timeout(const Duration(seconds: 40));
      final data = res?.data;
      if (data is! T) return null;
      return pick(data);
    } on TimeoutException {
      return null;
    } catch (e) {
      debugPrint('OwnerReportingApi request failed: $e');
      return null;
    }
  }
}
