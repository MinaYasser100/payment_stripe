import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class TotalPriceRow extends StatelessWidget {
  const TotalPriceRow({
    super.key,
    required this.price,
  });
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Total',
          textAlign: TextAlign.center,
          style: Styles.style24,
        ),
        const Spacer(),
        Text(
          price,
          textAlign: TextAlign.center,
          style: Styles.style24,
        )
      ],
    );
  }
}
