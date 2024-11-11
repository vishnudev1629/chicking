import 'package:auxzon/core/constants/text_styles.dart';
import 'package:flutter/material.dart';



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Text(
            "Profile Screen",
            style: TextStyles.rubik20gblackyW500,
          ),
          Image.asset(
            'assets/animated/No Data Available.gif',
            height: MediaQuery.of(context).size.height * 0.8,
          ),
        ],
      ),
    );
  }
}
