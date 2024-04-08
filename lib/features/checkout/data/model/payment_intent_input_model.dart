class PaymentIntentInputModel {
  final String amount;
  final String currency;

  const PaymentIntentInputModel({required this.amount, required this.currency});

  toJson() {
    return {
      'amount': amount,
      'currency': currency,
    };
  }
}
