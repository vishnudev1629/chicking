import 'package:auxzon/core/constants/text_styles.dart';
import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            "Favourites Screen",
            style: TextStyles.rubik20gblackyW500,
          ),
          Image.asset(
            'assets/animated/sorry.gif',
            height: MediaQuery.of(context).size.height * 0.8,
          ),
        ],
      ),
    );
  }
}
