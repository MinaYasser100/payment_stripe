import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/payment_methods_list_view.dart';
import 'custom_button_app.dart';
import 'divider_app.dart';
import 'order_info_item.dart';
import 'total_price_row.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Expanded(child: Image.asset('assets/images/Group 6.png')),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(),
          const SizedBox(
            height: 17,
          ),
          const DividerApp(),
          const SizedBox(
            height: 15.0,
          ),
          const TotalPriceRow(price: '\$50.97'),
          const SizedBox(
            height: 15.0,
          ),
          CustomButtonApp(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const PaymentMethodsBottomSheet(),
              );
            },
            textButton: 'Complete Payment',
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 62,
            child: PaymentMethodsListView(),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButtonApp(
            textButton: "Continue",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
