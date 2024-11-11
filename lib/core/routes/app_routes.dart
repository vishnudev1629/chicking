import 'package:flutter/material.dart';



void navigateToHomeCleared(BuildContext context) =>
    Navigator.of(context).pushNamedAndRemoveUntil(
      '/home',
      (Route route) => false,
    );

void navigateToProductDetails(
  BuildContext context,
) =>
    Navigator.of(context).pushNamed('/productDetails');
