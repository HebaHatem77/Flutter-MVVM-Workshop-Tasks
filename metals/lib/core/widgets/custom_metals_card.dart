import 'package:flutter/material.dart';

class CustomMetalsCard extends StatelessWidget {
  final String imagePath;
  final String priceText;
  final Color textColor;
  final double imageWidth;
  final double imageHeight;
  final double fontSize;

  const CustomMetalsCard({
    super.key,
    required this.imagePath,
    required this.priceText,
    this.textColor = Colors.white,
    this.imageWidth = 200,
    this.imageHeight = 250,
    this.fontSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: imageWidth,
          height: imageHeight,
        ),
        const SizedBox(height: 20),
        Text(
          priceText,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 140),
      ],
    );
  }
}
