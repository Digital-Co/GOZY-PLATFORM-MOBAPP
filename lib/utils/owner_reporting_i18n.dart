import 'package:get/get.dart';
import 'package:gozy/utils/owner_reporting_texts.dart';

/// Translates an owner reporting key (`orp_*`). The texts are downloaded with
/// the language files; while a key is missing there, the French or English
/// fallback of owner_reporting_texts.dart is used instead of the raw key.
String orpText(String key, [Map<String, String>? params]) {
  final translated = params == null ? key.tr : key.trParams(params);
  if (translated != key && translated.isNotEmpty) return translated;
  return orpFallbackText(key, languageCode: Get.locale?.languageCode, params: params);
}

/// Fallback text for [key] (French for `fr`, English otherwise).
String orpFallbackText(String key, {String? languageCode, Map<String, String>? params}) {
  final map = languageCode == 'fr' ? ownerReportingTextFr : ownerReportingTextEn;
  var text = map[key] ?? ownerReportingTextEn[key] ?? key;
  params?.forEach((name, value) {
    text = text.replaceAll('@$name', value);
  });
  return text;
}
