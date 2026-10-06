enum MobilePaymentGateway { paypal, stripe, pawaPay }

MobilePaymentGateway? mobilePaymentGatewayForType(int? paymentType) {
  switch (paymentType) {
    case 1:
      return MobilePaymentGateway.paypal;
    case 2:
      return MobilePaymentGateway.stripe;
    case 3:
      return MobilePaymentGateway.pawaPay;
    default:
      return null;
  }
}

extension MobilePaymentGatewayBehavior on MobilePaymentGateway {
  bool get usesStripePaymentSheet => this == MobilePaymentGateway.stripe;
  bool get supportsServicePlans => this != MobilePaymentGateway.pawaPay;
}
