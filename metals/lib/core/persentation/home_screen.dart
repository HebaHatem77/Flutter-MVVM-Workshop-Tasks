import 'package:flutter/material.dart';
import 'package:metals/core/constants/app_colors.dart';
import 'package:metals/core/constants/app_strings.dart';
import 'package:metals/core/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: AppStrings.gold,
            color: AppColors.goldColor,
            onPressed: () {},
          ),
          const SizedBox(height: 15),
          CustomButton(
            text: AppStrings.silver,
            color: AppColors.silverColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
