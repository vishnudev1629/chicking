import 'package:auxzon/core/constants/text_styles.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            "Search Screen",
            style: TextStyles.rubik20gblackyW500,
          ),
          Image.asset(
            'assets/animated/No Result Search.gif',
            height: MediaQuery.of(context).size.height * 0.8,
          ),
        ],
      ),
    );
  }
}
