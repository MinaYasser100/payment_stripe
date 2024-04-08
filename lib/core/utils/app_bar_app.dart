import 'package:flutter/material.dart';
import 'styles.dart';

AppBar appBarApp({String? titleText}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: const Icon(
      Icons.arrow_back_outlined,
      size: 35,
    ),
    centerTitle: true,
    title: Text(
      titleText ?? '',
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
