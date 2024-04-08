import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class OrderInfoItemRowItem extends StatelessWidget {
  const OrderInfoItemRowItem({
    super.key,
    required this.nameoreder,
    required this.price,
  });
  final String nameoreder;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          nameoreder,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        const Spacer(),
        Text(
          price,
          textAlign: TextAlign.center,
          style: Styles.style18,
        )
      ],
    );
  }
}
