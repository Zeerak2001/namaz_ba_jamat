import 'package:flutter/material.dart';
import 'package:namaz_ba_jamat/generics/constants/theme_colors.dart';

import '../constants/font_sizes.dart';

class NbjPrimaryButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry padding;

  NbjPrimaryButton({
    required this.text,
    required this.onPressed,
    this.backgroundColor = ThemeColors.kThemeColor,
    this.textColor = Colors.white,
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: FontSizes.size14Medium(
          color: ThemeColors.kScaffoldBackgroundColor,
        ),
      ),
    );
  }
}
