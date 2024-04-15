import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/features/checkout/data/model/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/presentation/manager/payment_cubit.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/custom_button_app.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/thank_you_view.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const ThankYouView(),
            ),
          );
        }
        if (state is PaymentFailure) {
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(content: Text(state.errorMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButtonApp(
          isLoading: state is PaymentLoading ? true : false,
          textButton: "Continue",
          onTap: () {
            PaymentIntentInputModel paymentIntentInputModel =
                const PaymentIntentInputModel(
              amount: '100',
              currency: 'USD',
              customerId: 'cus_Pv7rGL2gN5qMqZ',
            );
            BlocProvider.of<PaymentCubit>(context)
                .makePayment(paymentIntentInputModel: paymentIntentInputModel);
          },
        );
      },
    );
  }
}
