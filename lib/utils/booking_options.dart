/// Pure logic of the "Options and services" feature (no Flutter, no GetX).
///
/// The app never prices an option: amounts, quantities and totals come from the
/// API. This file only models what the API returns, keeps the renter selection
/// and validates user input with the same limits as the server.
library;

const int bookingOptionLocationMin = 5;
const int bookingOptionLocationMax = 255;
const int bookingOptionLabelMin = 3;
const int bookingOptionLabelMax = 40;
const int bookingOptionDescriptionMax = 140;
const double bookingOptionMaxPrice = 99999999.99;

const String bookingBillingPerDay = 'per_day';
const String bookingBillingFlat = 'flat';
const String bookingOptionDelivery = 'delivery';
const String bookingOptionChauffeur = 'chauffeur';

double? _toDouble(dynamic value) {
  if (value == null) return null;
  if (value is num) return value.toDouble();
  return double.tryParse(value.toString());
}

int? _toInt(dynamic value) {
  if (value == null) return null;
  if (value is num) return value.toInt();
  return int.tryParse(value.toString());
}

/// An option configured by the owner for a vehicle (fixed service or custom).
class BookingOption {
  const BookingOption({
    required this.id,
    this.slot,
    this.code,
    this.isFixed = false,
    this.label,
    this.description,
    this.price = 0,
    this.billingMode = bookingBillingFlat,
    this.isActive = false,
    this.adminDisabled = false,
    this.icon,
    this.sortOrder = 0,
  });

  final int id;
  final String? slot;
  final String? code;
  final bool isFixed;
  final String? label;
  final String? description;
  final double price;
  final String billingMode;
  final bool isActive;
  final bool adminDisabled;
  final String? icon;
  final int sortOrder;

  factory BookingOption.fromJson(Map<String, dynamic> json) => BookingOption(
        id: _toInt(json['id']) ?? 0,
        slot: json['slot']?.toString(),
        code: json['code']?.toString(),
        isFixed: json['isFixed'] == true,
        label: json['label']?.toString(),
        description: json['description']?.toString(),
        price: _toDouble(json['price']) ?? 0,
        billingMode: json['billingMode']?.toString() ?? bookingBillingFlat,
        isActive: json['isActive'] == true,
        adminDisabled: json['adminDisabled'] == true,
        icon: json['icon']?.toString(),
        sortOrder: _toInt(json['sortOrder']) ?? 0,
      );

  bool get isDelivery => code == bookingOptionDelivery;
  bool get isChauffeur => code == bookingOptionChauffeur;
  bool get isPerDay => billingMode == bookingBillingPerDay;

  /// Same rule as the server: only these options can be booked.
  bool get isBookable => isActive && !adminDisabled && price > 0;

  /// Key of the icon to draw: the stored icon, else the fixed service icon.
  String get iconKey {
    final stored = (icon ?? '').trim();
    if (stored.isNotEmpty) return stored;
    if (isDelivery) return 'truck';
    if (isChauffeur) return 'driver';
    return 'star';
  }
}

/// A priced option line: preview of a booking or snapshot of a reservation.
class BookingOptionLine {
  const BookingOptionLine({
    this.listingOptionId,
    this.code,
    this.isFixed = false,
    this.label,
    this.labelKey,
    this.billingMode = bookingBillingFlat,
    this.unitPrice = 0,
    this.quantity = 1,
    this.amount = 0,
    this.currency,
    this.userInput,
    this.isLegacy = false,
  });

  final int? listingOptionId;
  final String? code;
  final bool isFixed;
  final String? label;
  final String? labelKey;
  final String billingMode;
  final double unitPrice;
  final int quantity;
  final double amount;
  final String? currency;
  final String? userInput;

  /// Built from an old `delivery` amount of a reservation without snapshot.
  final bool isLegacy;

  factory BookingOptionLine.fromJson(Map<String, dynamic> json) =>
      BookingOptionLine(
        listingOptionId: _toInt(json['listingOptionId'] ?? json['id']),
        code: json['code']?.toString(),
        isFixed: json['isFixed'] == true,
        label: json['label']?.toString(),
        labelKey: json['labelKey']?.toString(),
        billingMode: json['billingMode']?.toString() ?? bookingBillingFlat,
        unitPrice: _toDouble(json['unitPrice']) ?? 0,
        quantity: _toInt(json['quantity']) ?? 1,
        amount: _toDouble(json['amount']) ?? 0,
        currency: json['currency']?.toString(),
        userInput: json['userInput']?.toString(),
      );

  /// Code of the fixed service this line stands for, or null for a custom one.
  String? get fixedCode {
    final candidate = labelKey ?? code;
    if (candidate == bookingOptionDelivery ||
        candidate == bookingOptionChauffeur) {
      return candidate;
    }
    return null;
  }

  bool get isPerDay => billingMode == bookingBillingPerDay;
  bool get isDelivery => code == bookingOptionDelivery || labelKey == bookingOptionDelivery;
}

/// Lines to show for a billing preview. When an older API answers without
/// `options` but with a positive `delivery`, that delivery is shown as one
/// flat line (it is already included in the total: nothing is added twice).
List<BookingOptionLine> billingOptionLines({
  required List<BookingOptionLine>? lines,
  double? delivery,
  String? currency,
}) {
  final valid = (lines ?? const <BookingOptionLine>[]);
  if (valid.isNotEmpty) return List.unmodifiable(valid);
  return legacyDeliveryLines(delivery: delivery, currency: currency);
}

/// Lines of a stored reservation. A reservation created before the options
/// existed has no snapshot: a positive `delivery` becomes one flat line, never
/// both, so the delivery is not counted twice.
List<BookingOptionLine> reservationOptionLines({
  required List<BookingOptionLine>? snapshots,
  double? delivery,
  String? currency,
}) =>
    billingOptionLines(lines: snapshots, delivery: delivery, currency: currency);

/// Option lines of a reservation-like object (generated reservation data or
/// any object exposing `reservationOptions`, `delivery` and `currency`).
List<BookingOptionLine> receiptOptionLines(dynamic reservation) {
  if (reservation == null) return const [];
  try {
    final raw = reservation.reservationOptions as Iterable?;
    final snapshots = raw
        ?.where((line) => line != null)
        .map((line) => BookingOptionLine.fromJson(
            Map<String, dynamic>.from((line as dynamic).toJson() as Map)))
        .toList();
    return reservationOptionLines(
      snapshots: snapshots,
      delivery: _toDouble(reservation.delivery),
      currency: reservation.currency?.toString(),
    );
  } catch (_) {
    return const [];
  }
}

List<BookingOptionLine> legacyDeliveryLines({double? delivery, String? currency}) {
  if (delivery == null || delivery <= 0) return const [];
  return [
    BookingOptionLine(
      code: bookingOptionDelivery,
      isFixed: true,
      labelKey: bookingOptionDelivery,
      billingMode: bookingBillingFlat,
      unitPrice: delivery,
      quantity: 1,
      amount: delivery,
      currency: currency,
      isLegacy: true,
    ),
  ];
}

/// Options the renter can book, in the display order (fixed services first).
List<BookingOption> bookableOptions(Iterable<BookingOption>? options) {
  final list = (options ?? const <BookingOption>[])
      .where((option) => option.isBookable && option.id > 0)
      .toList();
  list.sort((a, b) {
    final bySort = a.sortOrder.compareTo(b.sortOrder);
    return bySort != 0 ? bySort : a.id.compareTo(b.id);
  });
  return list;
}

bool isDeliveryLocationValid(String? value) {
  final length = (value ?? '').trim().length;
  return length >= bookingOptionLocationMin &&
      length <= bookingOptionLocationMax;
}

/// Renter selection of options. Nothing is selected by default.
class BookingOptionSelection {
  BookingOptionSelection();

  final Set<int> _ids = <int>{};

  Set<int> get ids => Set.unmodifiable(_ids);
  bool get isEmpty => _ids.isEmpty;
  bool contains(int id) => _ids.contains(id);

  void select(int id) => _ids.add(id);
  void deselect(int id) => _ids.remove(id);
  void clear() => _ids.clear();

  /// Returns true when the option is now selected.
  bool toggle(int id) {
    if (_ids.remove(id)) return false;
    _ids.add(id);
    return true;
  }

  /// Drops the ids that are no longer bookable. Returns the dropped ids.
  List<int> prune(Iterable<BookingOption> options) {
    final available = bookableOptions(options).map((o) => o.id).toSet();
    final dropped = _ids.where((id) => !available.contains(id)).toList();
    _ids.removeAll(dropped);
    return dropped;
  }

  bool isDeliverySelected(Iterable<BookingOption> options) => options
      .any((option) => option.isDelivery && _ids.contains(option.id));

  /// True when every selected option can be sent to the API (delivery needs
  /// a valid location).
  bool isReady(Iterable<BookingOption> options, String? deliveryLocation) =>
      !isDeliverySelected(options) || isDeliveryLocationValid(deliveryLocation);

  /// Payload `[{optionId, userInput}]` of getBillingCalculation and
  /// createReservation. Prices are never sent. Only the delivery carries a
  /// location. With [onlyReady] a delivery without a valid location is left out
  /// (used for live previews while the renter is still typing).
  List<Map<String, dynamic>> toInputs(
    Iterable<BookingOption> options,
    String? deliveryLocation, {
    bool onlyReady = false,
  }) {
    final inputs = <Map<String, dynamic>>[];
    for (final option in bookableOptions(options)) {
      if (!_ids.contains(option.id)) continue;
      if (option.isDelivery) {
        final location = (deliveryLocation ?? '').trim();
        if (onlyReady && !isDeliveryLocationValid(location)) continue;
        inputs.add({
          'optionId': option.id,
          'userInput': location.isEmpty ? null : location,
        });
      } else {
        inputs.add({'optionId': option.id, 'userInput': null});
      }
    }
    return inputs;
  }
}

// ---------------------------------------------------------------------------
// Owner side
// ---------------------------------------------------------------------------

/// Options of a vehicle as seen by its owner, with the admin limits.
class OwnerOptionsState {
  const OwnerOptionsState({
    this.options = const [],
    this.maxCustom,
    this.customCount,
  });

  final List<BookingOption> options;
  final int? maxCustom;
  final int? customCount;

  List<BookingOption> get fixedOptions =>
      options.where((o) => o.isFixed).toList();
  List<BookingOption> get customOptions =>
      options.where((o) => !o.isFixed).toList();

  /// Custom options the owner has: the API count, else the list length.
  int get customTotal => customCount ?? customOptions.length;

  /// Limit set by the admin. Never assumed: unknown means no limit is shown.
  bool get hasLimit => maxCustom != null;

  /// No custom option can be created (admin set the limit to 0).
  bool get customDisabled => maxCustom != null && maxCustom! <= 0;

  /// The owner has more options than the current limit: they keep them.
  bool get isOverLimit => maxCustom != null && customTotal > maxCustom!;

  bool get canAdd => !hasLimit || customTotal < maxCustom!;

  int get remaining =>
      hasLimit ? (maxCustom! - customTotal).clamp(0, maxCustom!).toInt() : 0;
}

/// Error key (see booking_options_texts.dart) of an invalid option form, or
/// null when the form is valid. The API stays the final judge.
String? validateOptionForm({
  required String label,
  required String description,
  required String price,
  required String billingMode,
}) {
  final cleanLabel = label.trim();
  if (cleanLabel.length < bookingOptionLabelMin ||
      cleanLabel.length > bookingOptionLabelMax) {
    return 'bo_err_label';
  }
  if (description.trim().length > bookingOptionDescriptionMax) {
    return 'bo_err_description';
  }
  final parsed = parseOptionPrice(price);
  if (parsed == null || parsed <= 0 || parsed > bookingOptionMaxPrice) {
    return 'bo_err_price';
  }
  if (billingMode != bookingBillingPerDay &&
      billingMode != bookingBillingFlat) {
    return 'bo_err_billing_mode';
  }
  return null;
}

double? parseOptionPrice(String? value) {
  final text = (value ?? '').trim().replaceAll(' ', '').replaceAll(',', '.');
  if (text.isEmpty) return null;
  return double.tryParse(text);
}

/// Answer of getListingOptions / saveListingOption / setListingOptionActive /
/// deleteListingOption.
class ListingOptionsOutcome {
  const ListingOptionsOutcome({this.status, this.errorMessage, this.state});

  final int? status;
  final String? errorMessage;

  /// The list returned by the server (set when the call succeeded).
  final OwnerOptionsState? state;

  bool get isOk => status == 200 && state != null;

  factory ListingOptionsOutcome.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const ListingOptionsOutcome();
    final status = _toInt(json['status']);
    final raw = json['results'];
    final options = raw is Iterable
        ? raw
            .whereType<Map>()
            .map((item) =>
                BookingOption.fromJson(Map<String, dynamic>.from(item)))
            .toList()
        : <BookingOption>[];
    return ListingOptionsOutcome(
      status: status,
      errorMessage: json['errorMessage']?.toString(),
      state: status == 200
          ? OwnerOptionsState(
              options: options,
              maxCustom: _toInt(json['maxCustom']),
              customCount: _toInt(json['customCount']),
            )
          : null,
    );
  }
}
