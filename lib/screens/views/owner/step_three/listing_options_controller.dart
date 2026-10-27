import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/graphql/listingOptions/__generated__/delete_listing_option.data.gql.dart';
import 'package:gozy/graphql/listingOptions/__generated__/delete_listing_option.req.gql.dart';
import 'package:gozy/graphql/listingOptions/__generated__/get_listing_options.data.gql.dart';
import 'package:gozy/graphql/listingOptions/__generated__/get_listing_options.req.gql.dart';
import 'package:gozy/graphql/listingOptions/__generated__/save_listing_option.data.gql.dart';
import 'package:gozy/graphql/listingOptions/__generated__/save_listing_option.req.gql.dart';
import 'package:gozy/graphql/listingOptions/__generated__/set_listing_option_active.data.gql.dart';
import 'package:gozy/graphql/listingOptions/__generated__/set_listing_option_active.req.gql.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/utils/booking_options.dart';
import 'package:gozy/utils/booking_options_i18n.dart';

/// Options and services of one vehicle, as managed by its owner on the
/// "Set prices" step. Every change is saved at once; the list shown is always
/// the one returned by the server, which stays the judge of every rule (limit,
/// services switched off by the admin, names, prices).
class ListingOptionsController {
  ListingOptionsController(this.host);

  /// Controller of the page, needed by the GraphQL client.
  final BaseController host;

  final Rx<OwnerOptionsState> state = const OwnerOptionsState().obs;
  final RxBool isLoading = false.obs;
  final RxBool isBusy = false.obs;
  final RxBool hasLoaded = false.obs;
  final RxnString loadError = RxnString();

  int? _listId;
  int? get listId => _listId;

  Future<void> load(int listId) async {
    if (_listId != listId) {
      state.value = const OwnerOptionsState();
      hasLoaded.value = false;
    }
    _listId = listId;
    isLoading.value = true;
    loadError.value = null;
    final outcome = await _run<GgetListingOptionsData>(
      GgetListingOptionsReq((b) => b..vars.listId = listId),
      (data) => data.getListingOptions?.toJson(),
    );
    isLoading.value = false;
    if (outcome != null && outcome.isOk) {
      state.value = outcome.state!;
      hasLoaded.value = true;
    } else {
      loadError.value = outcome?.errorMessage ?? boText('bo_load_failed');
    }
  }

  /// Creates (no [slot]) or updates an option. Returns the server error
  /// message, or null when the change was saved.
  Future<String?> save({
    String? slot,
    String? label,
    String? description,
    required double price,
    String? billingMode,
    String? icon,
    required bool isActive,
  }) async {
    final id = _listId;
    if (id == null) return boText('bo_load_failed');
    final outcome = await _guarded<GsaveListingOptionData>(
      GsaveListingOptionReq((b) {
        b.vars
          ..listId = id
          ..slot = slot
          ..label = label
          ..description = description
          ..price = price
          ..billingMode = billingMode
          ..icon = icon
          ..isActive = isActive;
      }),
      (data) => data.saveListingOption?.toJson(),
    );
    return _finish(outcome);
  }

  Future<String?> setActive(BookingOption option, bool isActive) async {
    final id = _listId;
    final slot = option.slot;
    if (id == null || slot == null) return boText('bo_load_failed');
    final outcome = await _guarded<GsetListingOptionActiveData>(
      GsetListingOptionActiveReq((b) => b.vars
        ..listId = id
        ..slot = slot
        ..isActive = isActive),
      (data) => data.setListingOptionActive?.toJson(),
    );
    return _finish(outcome);
  }

  Future<String?> delete(BookingOption option) async {
    final id = _listId;
    final slot = option.slot;
    if (id == null || slot == null) return boText('bo_load_failed');
    final outcome = await _guarded<GdeleteListingOptionData>(
      GdeleteListingOptionReq((b) => b.vars
        ..listId = id
        ..slot = slot),
      (data) => data.deleteListingOption?.toJson(),
    );
    return _finish(outcome);
  }

  /// Applies the returned list, or reloads the options when the change was
  /// refused so the screen shows what the server really has.
  String? _finish(ListingOptionsOutcome? outcome) {
    if (outcome != null && outcome.isOk) {
      state.value = outcome.state!;
      hasLoaded.value = true;
      return null;
    }
    final message = outcome?.errorMessage ?? boText('bo_load_failed');
    final id = _listId;
    if (id != null) unawaited(load(id));
    return message;
  }

  Future<ListingOptionsOutcome?> _guarded<T>(
    dynamic request,
    Map<String, dynamic>? Function(T data) pick,
  ) async {
    if (isBusy.value) return null;
    isBusy.value = true;
    try {
      return await _run<T>(request, pick);
    } finally {
      isBusy.value = false;
    }
  }

  Future<ListingOptionsOutcome?> _run<T>(
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
      final data = res?.data as T?;
      if (data == null) return null;
      return ListingOptionsOutcome.fromJson(pick(data));
    } on TimeoutException {
      return null;
    } catch (e) {
      debugPrint('ListingOptionsController request failed: $e');
      return null;
    }
  }
}
