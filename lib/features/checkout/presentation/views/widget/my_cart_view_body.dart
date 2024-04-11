import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/features/checkout/data/repos/checkout_repo_impl.dart';
import 'package:payment_app/features/checkout/presentation/manager/payment_cubit.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/payment_methods_bottom_sheet.dart';
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
                builder: (context) => BlocProvider(
                  create: (context) => PaymentCubit(CheckoutRepoImpl()),
                  child: const PaymentMethodsBottomSheet(),
                ),
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
