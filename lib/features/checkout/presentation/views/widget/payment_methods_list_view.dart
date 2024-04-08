import 'package:flutter/material.dart';

import 'payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> images = const [
    'assets/images/SVGRepo_iconCarrier.png',
    'assets/images/Group.png',
  ];
  int isActiveIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          isActiveIndex = index;
          setState(() {});
        },
        child: PaymentMethodItem(
            image: images[index], isActive: isActiveIndex == index),
      ),
      itemCount: images.length,
    );
  }
}
