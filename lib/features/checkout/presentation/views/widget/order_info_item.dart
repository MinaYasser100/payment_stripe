import 'package:flutter/material.dart';

import 'order_info_item_row_item.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OrderInfoItemRowItem(
          nameoreder: 'Order Subtotal',
          price: '\$42.97',
        ),
        SizedBox(
          height: 3,
        ),
        OrderInfoItemRowItem(
          nameoreder: 'Discount',
          price: '\$0',
        ),
        SizedBox(
          height: 3,
        ),
        OrderInfoItemRowItem(
          nameoreder: 'Shipping',
          price: '\$8',
        ),
      ],
    );
  }
}
