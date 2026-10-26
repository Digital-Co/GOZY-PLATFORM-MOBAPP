import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:gozy/utils/booking_option_icons.dart';
import 'package:gozy/utils/booking_options.dart';
import 'package:gozy/utils/booking_options_i18n.dart';
import 'package:gozy/utils/booking_options_texts.dart';

BookingOption _option(
  int id, {
  String? code,
  bool isFixed = false,
  String? label,
  double price = 100,
  String billingMode = bookingBillingFlat,
  bool isActive = true,
  bool adminDisabled = false,
  int sortOrder = 0,
  String? icon,
}) =>
    BookingOption(
      id: id,
      slot: code ?? 'custom_$id',
      code: code ?? 'custom',
      isFixed: isFixed,
      label: label,
      price: price,
      billingMode: billingMode,
      isActive: isActive,
      adminDisabled: adminDisabled,
      sortOrder: sortOrder,
      icon: icon,
    );

void main() {
  group('parsing', () {
    test('option lines and totals tolerate absent and null values', () {
      final line = BookingOptionLine.fromJson({
        'listingOptionId': 7,
        'code': 'custom',
        'label': 'Baby seat',
        'billingMode': 'per_day',
        'unitPrice': '10000',
        'quantity': 10,
        'amount': 100000,
        'currency': 'XOF',
        'userInput': null,
      });
      expect(line.listingOptionId, 7);
      expect(line.unitPrice, 10000);
      expect(line.amount, 100000);
      expect(line.userInput, isNull);
      expect(line.isPerDay, isTrue);

      final empty = BookingOptionLine.fromJson({});
      expect(empty.amount, 0);
      expect(empty.quantity, 1);
      expect(empty.billingMode, bookingBillingFlat);
    });

    test('options parse from the API json and reject unbookable ones', () {
      final option = BookingOption.fromJson({
        'id': 3,
        'slot': 'custom_1',
        'code': 'custom',
        'isFixed': false,
        'label': 'GPS',
        'price': 5000,
        'billingMode': 'per_day',
        'isActive': true,
        'adminDisabled': false,
        'icon': 'gps',
      });
      expect(option.isBookable, isTrue);
      expect(option.isPerDay, isTrue);
      expect(BookingOption.fromJson({'id': 1, 'isActive': true, 'price': 0}).isBookable,
          isFalse);
      expect(_option(2, adminDisabled: true).isBookable, isFalse);
      expect(_option(2, isActive: false).isBookable, isFalse);
    });

    test('bookableOptions keeps the display order', () {
      final list = bookableOptions([
        _option(5, sortOrder: 12),
        _option(2, code: 'chauffeur', isFixed: true, sortOrder: 1),
        _option(1, code: 'delivery', isFixed: true, sortOrder: 0),
        _option(9, isActive: false),
      ]);
      expect(list.map((o) => o.id), [1, 2, 5]);
    });
  });

  group('selection', () {
    final delivery = _option(1,
        code: 'delivery', isFixed: true, price: 50000, sortOrder: 0);
    final seat = _option(4, label: 'Baby seat', price: 5000, billingMode: bookingBillingPerDay);
    final options = [delivery, seat];

    test('nothing is selected by default', () {
      final selection = BookingOptionSelection();
      expect(selection.isEmpty, isTrue);
      expect(selection.toInputs(options, null), isEmpty);
      expect(selection.isReady(options, null), isTrue);
    });

    test('builds the {optionId, userInput} list without any price', () {
      final selection = BookingOptionSelection()
        ..select(1)
        ..select(4);
      final inputs = selection.toInputs(options, '  Airport of Lome ');
      expect(inputs, [
        {'optionId': 1, 'userInput': 'Airport of Lome'},
        {'optionId': 4, 'userInput': null},
      ]);
      for (final input in inputs) {
        expect(input.keys.toSet(), {'optionId', 'userInput'});
      }
    });

    test('only the delivery carries a location', () {
      final selection = BookingOptionSelection()..select(4);
      expect(selection.toInputs(options, 'somewhere far'), [
        {'optionId': 4, 'userInput': null},
      ]);
    });

    test('delivery location needs 5 to 255 characters', () {
      expect(isDeliveryLocationValid(null), isFalse);
      expect(isDeliveryLocationValid('abcd'), isFalse);
      expect(isDeliveryLocationValid('  abcd  '), isFalse);
      expect(isDeliveryLocationValid('abcde'), isTrue);
      expect(isDeliveryLocationValid('a' * 255), isTrue);
      expect(isDeliveryLocationValid('a' * 256), isFalse);

      final selection = BookingOptionSelection()..select(1);
      expect(selection.isReady(options, 'abcd'), isFalse);
      expect(selection.isReady(options, 'abcde'), isTrue);
    });

    test('a live preview leaves out a delivery without a valid location', () {
      final selection = BookingOptionSelection()
        ..select(1)
        ..select(4);
      expect(selection.toInputs(options, 'abc', onlyReady: true), [
        {'optionId': 4, 'userInput': null},
      ]);
      expect(selection.toInputs(options, 'abcde', onlyReady: true).length, 2);
    });

    test('toggle and prune', () {
      final selection = BookingOptionSelection();
      expect(selection.toggle(4), isTrue);
      expect(selection.toggle(4), isFalse);
      selection
        ..select(1)
        ..select(4)
        ..select(99);
      final dropped = selection.prune(options);
      expect(dropped, [99]);
      expect(selection.ids, {1, 4});
    });

    test('an option that is no longer bookable is never sent', () {
      final selection = BookingOptionSelection()..select(4);
      final off = [_option(4, label: 'Baby seat', isActive: false)];
      expect(selection.toInputs(off, null), isEmpty);
    });
  });

  group('legacy delivery', () {
    test('an old reservation with only delivery gets one flat line', () {
      final lines = reservationOptionLines(
          snapshots: null, delivery: 25000, currency: 'XOF');
      expect(lines, hasLength(1));
      expect(lines.single.fixedCode, bookingOptionDelivery);
      expect(lines.single.isPerDay, isFalse);
      expect(lines.single.amount, 25000);
      expect(lines.single.isLegacy, isTrue);
    });

    test('snapshots win over delivery: nothing is counted twice', () {
      final snapshots = [
        BookingOptionLine.fromJson({
          'code': 'delivery',
          'labelKey': 'delivery',
          'amount': 25000,
          'billingMode': 'flat',
        })
      ];
      final lines = reservationOptionLines(
          snapshots: snapshots, delivery: 25000, currency: 'XOF');
      expect(lines, hasLength(1));
      expect(lines.single.isLegacy, isFalse);
    });

    test('no delivery and no option gives no line', () {
      expect(reservationOptionLines(snapshots: const [], delivery: 0), isEmpty);
      expect(billingOptionLines(lines: null, delivery: null), isEmpty);
    });

    test('receiptOptionLines reads any reservation-like object', () {
      final reservation = _FakeReservation(delivery: 1000, currency: 'EUR');
      expect(receiptOptionLines(reservation).single.amount, 1000);
      expect(receiptOptionLines(Object()), isEmpty);
      expect(receiptOptionLines(null), isEmpty);
    });
  });

  group('owner limits', () {
    OwnerOptionsState state(int? max, int count) => OwnerOptionsState(
          options: [
            _option(1, code: 'delivery', isFixed: true),
            for (var i = 0; i < count; i++) _option(10 + i, label: 'Option $i'),
          ],
          maxCustom: max,
          customCount: count,
        );

    test('uses the limit returned by the API, never a fixed 3', () {
      expect(state(3, 3).canAdd, isFalse);
      expect(state(3, 2).canAdd, isTrue);
      expect(state(3, 2).remaining, 1);
      expect(state(10, 3).canAdd, isTrue);
      expect(state(10, 3).remaining, 7);
      expect(state(100, 5).remaining, 95);
    });

    test('maxCustom 0 means no custom option at all', () {
      final zero = state(0, 0);
      expect(zero.customDisabled, isTrue);
      expect(zero.canAdd, isFalse);
      expect(zero.remaining, 0);
    });

    test('more options than the limit are kept but nothing can be added', () {
      final over = state(2, 5);
      expect(over.isOverLimit, isTrue);
      expect(over.canAdd, isFalse);
      expect(over.remaining, 0);
      expect(over.customOptions, hasLength(5));
      expect(over.fixedOptions, hasLength(1));
    });

    test('an unknown limit does not block adding (the API decides)', () {
      final unknown = state(null, 4);
      expect(unknown.hasLimit, isFalse);
      expect(unknown.canAdd, isTrue);
      expect(unknown.isOverLimit, isFalse);
    });

    test('custom slots may go past custom_3', () {
      final option = BookingOption.fromJson(
          {'id': 9, 'slot': 'custom_42', 'code': 'custom', 'isActive': true, 'price': 1});
      expect(option.slot, 'custom_42');
    });

    test('parses the API answer with limits and an error', () {
      final ok = ListingOptionsOutcome.fromJson({
        'status': 200,
        'maxCustom': 5,
        'customCount': 1,
        'results': [
          {'id': 1, 'slot': 'delivery', 'code': 'delivery', 'isFixed': true},
          {'id': 2, 'slot': 'custom_1', 'code': 'custom', 'label': 'GPS'},
        ],
      });
      expect(ok.isOk, isTrue);
      expect(ok.state!.maxCustom, 5);
      expect(ok.state!.customOptions.single.label, 'GPS');

      final refused = ListingOptionsOutcome.fromJson({
        'status': 400,
        'errorMessage': 'Limit reached',
        'results': null,
      });
      expect(refused.isOk, isFalse);
      expect(refused.errorMessage, 'Limit reached');
    });
  });

  group('option form validation', () {
    String? check({
      String label = 'Baby seat',
      String description = '',
      String price = '1000',
      String mode = bookingBillingFlat,
    }) =>
        validateOptionForm(
            label: label, description: description, price: price, billingMode: mode);

    test('accepts a valid form', () {
      expect(check(), isNull);
      expect(check(price: '1 500,50', mode: bookingBillingPerDay), isNull);
    });

    test('label is 3 to 40 characters', () {
      expect(check(label: 'ab'), 'bo_err_label');
      expect(check(label: '  ab  '), 'bo_err_label');
      expect(check(label: 'a' * 41), 'bo_err_label');
      expect(check(label: 'a' * 40), isNull);
    });

    test('description is at most 140 characters', () {
      expect(check(description: 'a' * 141), 'bo_err_description');
      expect(check(description: 'a' * 140), isNull);
    });

    test('price must be greater than 0', () {
      expect(check(price: ''), 'bo_err_price');
      expect(check(price: '0'), 'bo_err_price');
      expect(check(price: '-5'), 'bo_err_price');
      expect(check(price: 'abc'), 'bo_err_price');
      expect(check(price: '100000000'), 'bo_err_price');
    });

    test('billing mode is per day or flat only', () {
      expect(check(mode: 'weekly'), 'bo_err_billing_mode');
    });
  });

  group('icons', () {
    const documentedKeys = [
      'child_seat', 'gps', 'wifi', 'usb_charger', 'ac', 'umbrella', 'cooler',
      'paw', 'users',
      'roof_rack', 'bike_rack', 'wheel', 'fuel', 'wash', 'wrench', 'key', 'map',
      'airport', 'clock',
      'gift', 'flower', 'heart', 'music', 'camera', 'ribbon', 'star', 'tag',
      'phone', 'bluetooth', 'speaker', 'monitor', 'luggage', 'shield',
      'truck', 'driver',
    ];

    test('every key of the library is known', () {
      for (final key in documentedKeys) {
        expect(isKnownBookingOptionIcon(key), isTrue, reason: key);
      }
      expect(bookingOptionIcons.length, documentedKeys.length);
    });

    test('keys fit the 24 characters stored by the API', () {
      for (final key in bookingOptionIcons.keys) {
        expect(key.length, lessThanOrEqualTo(24));
      }
    });

    test('groups cover the custom icons exactly once', () {
      final grouped = [for (final g in bookingOptionIconGroups) ...g.keys];
      expect(grouped.toSet().length, grouped.length);
      expect(grouped.toSet(),
          documentedKeys.toSet()..removeAll(['truck', 'driver']));
    });

    test('unknown or absent keys fall back to the star', () {
      final star = bookingOptionIconData('star');
      expect(bookingOptionIconData('does_not_exist'), star);
      expect(bookingOptionIconData(null), star);
      expect(bookingOptionIconData(''), star);
    });

    test('a fixed service without stored icon uses its own icon', () {
      expect(_option(1, code: 'delivery', isFixed: true).iconKey, 'truck');
      expect(_option(2, code: 'chauffeur', isFixed: true).iconKey, 'driver');
      expect(_option(3).iconKey, 'star');
      expect(_option(4, icon: 'gps').iconKey, 'gps');
    });
  });

  group('texts', () {
    test('French and English define the same keys and placeholders', () {
      expect(bookingOptionsTextFr.keys.toSet(), bookingOptionsTextEn.keys.toSet());
      final placeholder = RegExp(r'@[a-z]+');
      for (final key in bookingOptionsTextEn.keys) {
        expect(
          placeholder.allMatches(bookingOptionsTextFr[key]!).map((m) => m.group(0)).toSet(),
          placeholder.allMatches(bookingOptionsTextEn[key]!).map((m) => m.group(0)).toSet(),
          reason: key,
        );
      }
    });

    test('the Docs i18n file is in sync with the fallback texts', () {
      final file = File('../Docs/flutter-i18n-booking-options.json');
      if (!file.existsSync()) return; // the Docs folder is outside the repository
      final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
      expect(Map<String, String>.from(json['en'] as Map), bookingOptionsTextEn);
      expect(Map<String, String>.from(json['fr'] as Map), bookingOptionsTextFr);
    });

    test('fallbacks fill the placeholders and never leak a raw key', () {
      expect(boFallbackText('bo_count_added', languageCode: 'en', params: {'count': '2', 'max': '5'}),
          '2 / 5 added');
      expect(boFallbackText('bo_count_added', languageCode: 'fr', params: {'count': '2', 'max': '5'}),
          '2 / 5 ajoutés');
      expect(boFallbackText('bo_delivery_label', languageCode: 'de'), 'Vehicle delivery');
      expect(boFallbackText('bo_delivery_label', languageCode: 'fr'), 'Livraison du véhicule');
    });

    test('boText uses the fallback while a key is missing in the language file', () {
      Get.testMode = true;
      Get.locale = const Locale('fr');
      expect(boText('bo_per_day_short'), '/ jour');
      expect(boText('bo_line_days', {'label': 'GPS', 'count': '3'}), 'GPS (3 jour(s))');
    });

    test('lines show flat fee or days, custom labels stay untranslated', () {
      Get.testMode = true;
      Get.locale = const Locale('en');
      final perDay = BookingOptionLine.fromJson({
        'label': 'Baby seat',
        'billingMode': 'per_day',
        'quantity': 3,
        'amount': 30,
      });
      expect(bookingOptionLineTitle(perDay), 'Baby seat (3 day(s))');
      final flat = BookingOptionLine.fromJson(
          {'code': 'delivery', 'labelKey': 'delivery', 'billingMode': 'flat', 'amount': 5});
      expect(bookingOptionLineTitle(flat), 'Vehicle delivery (flat fee)');
      expect(bookingOptionReceiptLabel(
              BookingOptionLine.fromJson({'code': 'delivery', 'labelKey': 'delivery', 'userInput': 'Airport'})),
          'Vehicle delivery (flat fee)\nDelivery location: Airport');
    });

    test('fixed services are translated from their code', () {
      Get.testMode = true;
      Get.locale = const Locale('en');
      expect(bookingOptionLabel(_option(1, code: 'chauffeur', isFixed: true)),
          'Rental with driver');
      expect(bookingOptionLabel(_option(5, label: 'Cooler')), 'Cooler');
    });
  });
}

class _FakeReservation {
  _FakeReservation({this.delivery, this.currency});
  final double? delivery;
  final String? currency;
  final Iterable<dynamic>? reservationOptions = null;
}
