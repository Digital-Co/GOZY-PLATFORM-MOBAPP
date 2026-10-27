import 'package:get/get.dart';
import 'package:gozy/utils/inspection/inspection_texts.dart';

/// Translates an inspection key (`insp_*`). The texts are downloaded with the
/// language files; while a key is missing there, the French or English
/// fallback of inspection_texts.dart is shown instead of the raw key.
String inspText(String key, [Map<String, String>? params]) {
  final translated = params == null ? key.tr : key.trParams(params);
  if (translated != key && translated.isNotEmpty) return translated;
  return inspFallbackText(key,
      languageCode: Get.locale?.languageCode, params: params);
}

/// Fallback text for [key] (French for `fr`, English otherwise).
String inspFallbackText(String key,
    {String? languageCode, Map<String, String>? params}) {
  final map = languageCode == 'fr' ? inspectionTextFr : inspectionTextEn;
  var text = map[key] ?? inspectionTextEn[key] ?? key;
  params?.forEach((name, value) {
    text = text.replaceAll('@$name', value);
  });
  return text;
}
