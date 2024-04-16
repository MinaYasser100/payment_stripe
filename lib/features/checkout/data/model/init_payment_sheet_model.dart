class InitPaymentSheetModel {
  final String paymentIntentClientSecret;
  final String ephemeralKeySecret;
  final String customerId;

  const InitPaymentSheetModel({
    required this.paymentIntentClientSecret,
    required this.ephemeralKeySecret,
    required this.customerId,
  });
}
