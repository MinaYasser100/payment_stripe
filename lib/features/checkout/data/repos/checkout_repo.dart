import 'package:dartz/dartz.dart';
import 'package:payment_app/core/error/failures.dart';
import 'package:payment_app/features/checkout/data/model/payment_intent_input_model.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
