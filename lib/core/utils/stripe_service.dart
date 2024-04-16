import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/utils/api_keys.dart';
import 'package:payment_app/core/utils/api_service.dart';
import 'package:payment_app/features/checkout/data/model/ephemeral_key_model/ephemeral_key_model.dart';
import 'package:payment_app/features/checkout/data/model/init_payment_sheet_model.dart';
import 'package:payment_app/features/checkout/data/model/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/data/model/payment_intent_model/payment_intent_model.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntentModel(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
      body: paymentIntentInputModel.toJson(),
      url: 'https://api.stripe.com/v1/payment_intents',
      contentType: Headers.formUrlEncodedContentType,
      token: ApiKeys.secretKey,
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  // setup to payment sheet
  Future initPaymentSheet(
      {required InitPaymentSheetModel initPaymentSheetModel}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret:
            initPaymentSheetModel.paymentIntentClientSecret,
        customerEphemeralKeySecret: initPaymentSheetModel.ephemeralKeySecret,
        customerId: initPaymentSheetModel.customerId,
        merchantDisplayName: 'mina',
      ),
    );
  }

  // response for display payment sheet
  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel =
        await createPaymentIntentModel(paymentIntentInputModel);
    var ephemeralKeyModel =
        await createEphemeralKey(customerId: paymentIntentModel.customer);
    var initPaymentSheetModel = InitPaymentSheetModel(
      paymentIntentClientSecret: paymentIntentModel.clientSecret!,
      ephemeralKeySecret: ephemeralKeyModel.secret!,
      customerId: paymentIntentModel.customer,
    );
    await initPaymentSheet(initPaymentSheetModel: initPaymentSheetModel);
    await displayPaymentSheet();
  }

  Future<EphemeralKeyModel> createEphemeralKey(
      {required String customerId}) async {
    var response = await apiService.post(
      body: {
        'customer': customerId,
      },
      url: 'https://api.stripe.com/v1/ephemeral_keys',
      contentType: Headers.formUrlEncodedContentType,
      token: ApiKeys.secretKey,
      header: {
        'Authorization': "Bearer ${ApiKeys.secretKey}",
        'Stripe-Version': '2023-10-16',
      },
    );
    var ephemeralKeyModel = EphemeralKeyModel.fromJson(response.data);
    return ephemeralKeyModel;
  }
}
