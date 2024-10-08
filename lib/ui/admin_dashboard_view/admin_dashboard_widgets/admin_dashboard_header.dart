import 'package:flutter/material.dart';
import 'package:namaz_ba_jamat/generics/constants/theme_colors.dart';
import '../../../generics/constants/font_sizes.dart';

class AdminDashboardHeader extends StatelessWidget {
  const AdminDashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 600,
        decoration: BoxDecoration(
          color: ThemeColors.kThemeColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to Dashboard!',
                    style: FontSizes.size20Medium(color: Colors.white),
                  ),
                  Text(
                    'Select the prayers time of your mosque',
                    style: FontSizes.size16Medium(color: Colors.white),
                  ),
                ],
              ),
            ),

            // Right-side image content
            Flexible(
              child: Container(
                width: 200,
                height: 200,
                child: Image.asset(
                  'images/men.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
