import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/custom_button_bloc_consumer.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 62,
            child: PaymentMethodsListView(),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButtonBlocConsumer(),
        ],
      ),
    );
  }
}
