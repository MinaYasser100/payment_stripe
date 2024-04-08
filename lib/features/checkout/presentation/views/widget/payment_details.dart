import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_bar_app.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/payment_details_body.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarApp(
        titleText: 'Payment Details',
      ),
      body: const PaymentDetailsBody(),
    );
  }
}
