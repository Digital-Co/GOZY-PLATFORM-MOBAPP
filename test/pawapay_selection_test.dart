import 'package:flutter_test/flutter_test.dart';
import 'package:gozy/utils/pawapay_selection.dart';

void main() {
  test('normalizes dial prefixes to digits', () {
    expect(normalizePawaPayPrefix('+241'), '241');
    expect(normalizePawaPayPrefix(null), '');
  });

  test('builds the MSISDN from the locked prefix and the local number', () {
    expect(buildPawaPayMsisdn('+241', '074000000'), '24174000000');
    expect(buildPawaPayMsisdn('241', '74 00 00 00'), '24174000000');
    expect(buildPawaPayMsisdn('241', '24174000000'), '24174000000');
    expect(buildPawaPayMsisdn('241', '+241 74 00 00 00'), '24174000000');
    expect(buildPawaPayMsisdn('241', '00241 74000000'), '24174000000');
  });

  test('empty input yields no MSISDN', () {
    expect(buildPawaPayMsisdn('241', ''), '');
    expect(buildPawaPayMsisdn('241', '0'), '');
    expect(localPawaPayNumber('241', ' - '), '');
  });
}
