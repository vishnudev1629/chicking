import 'package:auxzon/core/constants/text_styles.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            "Cart Screen",
            style: TextStyles.rubik20gblackyW500,
          ),
          Image.asset(
            'assets/animated/cart.gif',
            height: MediaQuery.of(context).size.height * 0.8,
          ),
        ],
      ),
    );
  }
}
