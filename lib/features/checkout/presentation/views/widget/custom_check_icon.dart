import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/constant.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xFFD9D9D9),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: kGreenColor,
        child: Icon(
          Icons.check_rounded,
          size: 70,
          color: Colors.white,
        ),
      ),
    );
  }
}
