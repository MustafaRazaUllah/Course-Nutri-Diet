import 'package:flutter/material.dart';
import 'package:nutri_diet/Commen/app_assets.dart';
import 'package:nutri_diet/Commen/app_colors.dart';
import 'package:nutri_diet/Commen/app_text.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SizedBox(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              AppAssets.backgroundImage,
              fit: BoxFit.cover,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  title: "NUTRI-",
                  size: 32,
                  color: AppColors.secondaryColor,
                  isSplashScreen: true,
                  fontWeight: FontWeight.w700,
                ),
                AppText(
                  title: "DIET",
                  size: 32,
                  color: AppColors.secondaryColor,
                  isSplashScreen: true,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
