import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_bar_app.dart';
import 'widget/my_cart_view_body.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarApp(titleText: 'My Cart'),
      body: const MyCartViewBody(),
    );
  }
}
