import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/app_bar_app.dart';
import 'package:payment_app/features/checkout/presentation/views/widget/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarApp(),
      body: Transform.translate(
        offset: const Offset(0, -10),
        child: const ThankYouViewBody(),
      ),
    );
  }
}
