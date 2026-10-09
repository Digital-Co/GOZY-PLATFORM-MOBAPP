/// Digits-only dial prefix ("+241" -> "241").
String normalizePawaPayPrefix(String? prefix) =>
    (prefix ?? '').replaceAll(RegExp(r'\D'), '');

/// Keeps only the local part the guest types next to the locked dial prefix:
/// digits only, without a pasted international prefix or leading zeros.
String localPawaPayNumber(String? prefix, String input) {
  final dialPrefix = normalizePawaPayPrefix(prefix);
  var digits = input.replaceAll(RegExp(r'\D'), '');
  if (digits.startsWith('00')) digits = digits.substring(2);
  if (dialPrefix.isNotEmpty &&
      digits.startsWith(dialPrefix) &&
      digits.length > dialPrefix.length + 6) {
    digits = digits.substring(dialPrefix.length);
  }
  return digits.replaceFirst(RegExp(r'^0+'), '');
}

/// Full international MSISDN (digits only) sent to PawaPay.
String buildPawaPayMsisdn(String? prefix, String input) {
  final local = localPawaPayNumber(prefix, input);
  if (local.isEmpty) return '';
  return '${normalizePawaPayPrefix(prefix)}$local';
}
