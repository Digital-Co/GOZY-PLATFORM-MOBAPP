import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:gozy/pref/app_preference.dart';
import 'package:gozy/resources/app_lang.dart' as lang;
import 'package:gozy/screens/views/inspection/inspection_widgets.dart';
import 'package:gozy/utils/inspection/inspection_i18n.dart';
import 'package:gozy/utils/inspection/inspection_models.dart';
import 'package:gozy/utils/inspection/inspection_rules.dart';
import 'package:gozy/utils/inspection/inspection_texts.dart';
import 'package:gozy/utils/inspection/inspection_upload_queue.dart';

class _FakeAppPreference implements AppPreference {
  @override
  dynamic noSuchMethod(Invocation invocation) => null;
}

Widget _host(Widget child, {String locale = 'en'}) => GetMaterialApp(
      locale: Locale(locale),
      home: Scaffold(body: SingleChildScrollView(child: child)),
    );

void main() {
  setUpAll(() => Get.put<AppPreference>(_FakeAppPreference()));

  group('texts', () {
    test('English and French have the same keys and the same parameters', () {
      expect(inspectionTextFr.keys.toSet(), inspectionTextEn.keys.toSet());
      final param = RegExp(r'@[a-z]+');
      for (final key in inspectionTextEn.keys) {
        expect(param.allMatches(inspectionTextFr[key]!).map((m) => m.group(0)).toSet(),
            param.allMatches(inspectionTextEn[key]!).map((m) => m.group(0)).toSet(),
            reason: key);
      }
    });

    test('every key used in the code has a text (and a constant in app_lang.dart)', () {
      final keys = <String>{};
      final pattern = RegExp(r"'(insp_[a-z0-9_]+)'");
      for (final entity in Directory('lib').listSync(recursive: true)) {
        if (entity is! File || !entity.path.endsWith('.dart')) continue;
        if (entity.path.contains('__generated__') || entity.path.endsWith('app_lang.dart')) continue;
        if (entity.path.endsWith('inspection_texts.dart')) continue;
        for (final m in pattern.allMatches(entity.readAsStringSync())) {
          keys.add(m.group(1)!);
        }
      }
      expect(keys, isNotEmpty);
      for (final key in keys) {
        expect(inspectionTextEn.containsKey(key), isTrue, reason: 'missing text $key');
      }
      final constants = RegExp(r"const String (insp_[a-z0-9_]+) = '\1';")
          .allMatches(File('lib/resources/app_lang.dart').readAsStringSync())
          .map((m) => m.group(1)!)
          .toSet();
      expect(constants, inspectionTextEn.keys.toSet());
      expect(lang.insp_checkin, 'insp_checkin');
    });

    test('keys built at runtime exist', () {
      final dynamic_ = <String>[
        for (final s in generalStates) 'insp_state_${s}_help',
        for (final r in disputeReasons) 'insp_reason_$r',
        for (final s in ['open', 'in_review', 'resolved', 'closed']) 'insp_dispute_status_$s',
        for (final t in ['release_all', 'retain_part', 'retain_all', 'no_action', 'request_indemnity'])
          'insp_decision_$t',
        for (final k in ['registration_card', 'insurance_certificate', 'technical_inspection', 'mandatory_equipment'])
          'insp_check_$k',
        for (final level in fuelLevels) 'insp_fuel_$level',
      ];
      for (final key in dynamic_) {
        expect(inspectionTextEn.containsKey(key), isTrue, reason: key);
      }
    });

    test('the Docs i18n file is in sync with the fallback texts', () {
      final file = File('../Docs/flutter-i18n-inspection.json');
      if (!file.existsSync()) return;
      final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
      expect(Map<String, String>.from(json['en'] as Map), inspectionTextEn);
      expect(Map<String, String>.from(json['fr'] as Map), inspectionTextFr);
    });

    test('a missing translation shows the English or French fallback, never the raw key', () {
      expect(inspFallbackText('insp_yes', languageCode: 'fr'), 'Oui');
      expect(inspFallbackText('insp_yes', languageCode: 'de'), 'Yes');
      expect(inspFallbackText('insp_photo_n_of', languageCode: 'fr', params: {'n': '3', 'total': '8'}),
          'Photo 3 sur 8');
      expect(inspFallbackText('insp_unknown', languageCode: 'en'), 'insp_unknown');
    });

    test('the fallback is used when the language files lack the key', () {
      Get.locale = const Locale('fr');
      expect(inspText('insp_validate_checkin'), 'Valider le check-in');
      Get.locale = const Locale('en');
      expect(inspText('insp_validate_checkin'), 'Validate the check-in');
    });
  });

  group('widgets', () {
    testWidgets('fuel selector shows the five marks and reports the choice', (tester) async {
      String? chosen;
      await tester.pumpWidget(_host(StatefulBuilder(
        builder: (context, setState) => FuelSelector(
          value: chosen,
          onChanged: (value) => setState(() => chosen = value),
        ),
      )));
      for (final label in ['Reserve', '1/4', '1/2', '3/4', 'Full']) {
        expect(find.text(label), findsOneWidget);
      }
      await tester.tap(find.text('1/2'));
      await tester.pump();
      expect(chosen, 'half');
    });

    testWidgets('general state selector: icon, text and description for each state', (tester) async {
      String? chosen;
      await tester.pumpWidget(_host(StatefulBuilder(
        builder: (context, setState) => GeneralStateSelector(
          value: chosen,
          onChanged: (value) => setState(() => chosen = value),
        ),
      )));
      expect(find.text('Clean'), findsOneWidget);
      expect(find.text('Average'), findsOneWidget);
      expect(find.text('Dirty'), findsOneWidget);
      expect(find.text('Cleaning needed'), findsOneWidget);
      await tester.tap(find.text('Dirty'));
      await tester.pump();
      expect(chosen, 'dirty');
    });

    testWidgets('photo grid: the add tile disappears at 8 photos', (tester) async {
      final stored = [for (var i = 1; i <= 7; i++) InspectionPhotoItem(id: i, kind: 'vehicle')];
      final queued = [UploadItem(localId: 'a', reservationId: 1, type: 'checkin', filePath: '/nope.jpg')];
      await tester.pumpWidget(_host(InspPhotoGrid(
        stored: const [],
        queued: [queued.first],
        maxCount: 8,
        editable: true,
        onAdd: () {},
      )));
      expect(find.text('Add'), findsOneWidget);

      await tester.pumpWidget(_host(InspPhotoGrid(
        stored: const [],
        queued: [
          for (var i = 0; i < 8; i++)
            UploadItem(localId: '$i', reservationId: 1, type: 'checkin', filePath: '/nope$i.jpg')
        ],
        maxCount: 8,
        editable: true,
        onAdd: () {},
      )));
      expect(find.text('Add'), findsNothing);
      expect(stored, hasLength(7));
    });

    testWidgets('photo grid in read-only mode has no add or remove control', (tester) async {
      await tester.pumpWidget(_host(const InspPhotoGrid(
        stored: [],
        queued: [],
        maxCount: 8,
        editable: false,
      )));
      expect(find.text('No photo.'), findsOneWidget);
      expect(find.text('Add'), findsNothing);
    });

    testWidgets('a queued photo shows its state and has a cancel control', (tester) async {
      final handle = tester.ensureSemantics();
      final item = UploadItem(localId: 'x1', reservationId: 1, type: 'checkin', filePath: '/nope.jpg');
      item.status = UploadStatus.failed;
      await tester.pumpWidget(_host(InspPhotoGrid(
        stored: const [],
        queued: [item],
        maxCount: 8,
        editable: true,
        onAdd: () {},
        onCancel: (_) {},
      )));
      expect(find.text('Failed'), findsOneWidget);
      expect(
          find.byWidgetPredicate((w) => w is Semantics && w.properties.label == 'Cancel this photo' && w.properties.button == true),
          findsOneWidget);
      handle.dispose();
    });

    testWidgets('stars: tapping the third star gives 3', (tester) async {
      double rating = 0;
      await tester.pumpWidget(_host(StatefulBuilder(
        builder: (context, setState) => InspStars(rating: rating, onChanged: (v) => setState(() => rating = v)),
      )));
      await tester.tap(find.byIcon(Icons.star_border).at(2));
      await tester.pump();
      expect(rating, 3);
    });

    testWidgets('badge shows icon and text, never color alone', (tester) async {
      await tester.pumpWidget(_host(const InspBadge(text: 'Validated', tone: BadgeTone.success)));
      expect(find.text('Validated'), findsOneWidget);
      expect(find.byIcon(Icons.check_circle), findsOneWidget);
    });
  });
}
