import 'package:flutter_test/flutter_test.dart';
import 'package:gozy/utils/mobile_payment_gateway.dart';

void main() {
  test('routes known payment types explicitly', () {
    expect(mobilePaymentGatewayForType(1), MobilePaymentGateway.paypal);
    expect(mobilePaymentGatewayForType(2), MobilePaymentGateway.stripe);
    expect(mobilePaymentGatewayForType(3), MobilePaymentGateway.pawaPay);
    expect(mobilePaymentGatewayForType(3)?.usesStripePaymentSheet, isFalse);
  });

  test('rejects unknown types and excludes PawaPay from service plans', () {
    expect(mobilePaymentGatewayForType(null), isNull);
    expect(mobilePaymentGatewayForType(99), isNull);
    expect(MobilePaymentGateway.pawaPay.supportsServicePlans, isFalse);
  });
}
