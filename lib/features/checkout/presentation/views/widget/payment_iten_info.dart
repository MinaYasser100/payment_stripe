import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class PaymentItenInfo extends StatelessWidget {
  const PaymentItenInfo({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        Text(
          value,
          style: Styles.styleBold18,
        )
      ],
    );
  }
}
