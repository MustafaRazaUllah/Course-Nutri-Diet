import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:nutri_diet/App/Auth/View%20Model/splash_viewmodel.dart';
import 'package:nutri_diet/Commen/app_assets.dart';
import 'package:nutri_diet/Commen/app_colors.dart';
import 'package:nutri_diet/Commen/app_text.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});

  final splahVM = Get.find<SplashViewModel>();

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
