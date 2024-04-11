import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomButtonApp extends StatelessWidget {
  const CustomButtonApp({
    super.key,
    required this.textButton,
    required this.onTap,
    this.isLoading = false,
  });
  final String textButton;
  final bool isLoading;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        width: 350,
        height: 73,
        decoration: ShapeDecoration(
          color: const Color(0xFF34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: isLoading
              ? const Center(child: CircularProgressIndicator())
              : Text(
                  textButton,
                  style: Styles.style22,
                ),
        ),
      ),
    );
  }
}
