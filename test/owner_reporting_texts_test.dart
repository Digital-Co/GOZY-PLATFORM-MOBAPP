import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:gozy/resources/app_lang.dart' as lang;
import 'package:gozy/utils/owner_reporting_i18n.dart';
import 'package:gozy/utils/owner_reporting_texts.dart';

void main() {
  test('English and French have the same keys and the same parameters', () {
    expect(ownerReportingTextFr.keys.toSet(), ownerReportingTextEn.keys.toSet());
    final param = RegExp(r'@[a-zA-Z]+');
    for (final key in ownerReportingTextEn.keys) {
      expect(param.allMatches(ownerReportingTextFr[key]!).map((m) => m.group(0)).toSet(),
          param.allMatches(ownerReportingTextEn[key]!).map((m) => m.group(0)).toSet(),
          reason: key);
    }
  });

  test('every key used in the code has a text, and every text has a constant in app_lang.dart', () {
    final keys = <String>{};
    final pattern = RegExp(r"'(orp_[a-z0-9_]+)'");
    for (final entity in Directory('lib').listSync(recursive: true)) {
      if (entity is! File || !entity.path.endsWith('.dart')) continue;
      if (entity.path.contains('__generated__') || entity.path.endsWith('app_lang.dart')) continue;
      if (entity.path.endsWith('owner_reporting_texts.dart')) continue;
      for (final m in pattern.allMatches(entity.readAsStringSync())) {
        keys.add(m.group(1)!);
      }
    }
    expect(keys, isNotEmpty);
    for (final key in keys) {
      expect(ownerReportingTextEn.containsKey(key), isTrue, reason: 'missing text $key');
    }
    final constants = RegExp(r"const String (orp_[a-z0-9_]+) = '\1';")
        .allMatches(File('lib/resources/app_lang.dart').readAsStringSync())
        .map((m) => m.group(1)!)
        .toSet();
    expect(constants, ownerReportingTextEn.keys.toSet());
    expect(lang.orp_retry, 'orp_retry');
  });

  test('the Docs i18n file is in sync with the fallback texts', () {
    final file = File('../Docs/flutter-i18n-owner-reporting.json');
    if (!file.existsSync()) return; // Docs lives outside the repository
    final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    expect(Map<String, String>.from(json['en'] as Map), ownerReportingTextEn);
    expect(Map<String, String>.from(json['fr'] as Map), ownerReportingTextFr);
  });

  test('fallback: French for fr, English otherwise, parameters replaced, never the raw key', () {
    expect(orpFallbackText('orp_retry', languageCode: 'fr'), 'Réessayer');
    expect(orpFallbackText('orp_retry', languageCode: 'de'), 'Try again');
    expect(orpFallbackText('orp_vehicle_fallback', languageCode: 'fr', params: {'id': '7'}), 'Véhicule #7');
    expect(orpFallbackText('orp_vs_prev_n', languageCode: 'en', params: {'days': '12'}), contains('12'));
  });
}
