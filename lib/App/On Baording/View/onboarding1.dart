import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nutri_diet/App/On%20Baording/View%20Model/onboarding_viewmodel.dart';
import 'package:nutri_diet/Commen/app_assets.dart';
import 'package:nutri_diet/Commen/app_button.dart';
import 'package:nutri_diet/Commen/app_colors.dart';
import 'package:nutri_diet/Commen/app_text.dart';
import 'package:nutri_diet/Utils/Routes/app_routes.dart';

class OnBoarding1View extends StatelessWidget {
  OnBoarding1View({super.key});

  final onboardingVM = Get.find<OnBoardingViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SizedBox.expand(
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  // height: context.mediaQuerySize.height * 0.6,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                          bottom: context.mediaQuerySize.height * 0.1),
                      child: Image.asset(
                        AppAssets.onboarding1,
                        height: 260,
                        width: 260,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                // height: context.mediaQuerySize.height * 0.4,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: AppColors.secondaryColor,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    const AppText(
                      title: "Welcome",
                      size: 28,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackText,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          title: "To ",
                          size: 28,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackText,
                        ),
                        AppText(
                          title: "Nutri-",
                          size: 28,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryColor,
                        ),
                        AppText(
                          title: "Diet",
                          size: 28,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                    const AppText(
                      title:
                          "Your Ultimate Diet Companion For Total Well-being.",
                      size: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.geryText,
                      txtOverFlow: TextOverflow.visible,
                      isSoftWrap: true,
                      alignment: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColors.primaryColor,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColors.primaryColor.withOpacity(0.4),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColors.primaryColor.withOpacity(0.4),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    AppButton(
                      title: 'Next',
                      callback: () {
                        Get.toNamed(AppRoutes.onBoarding2View);
                      },
                    ),
                    const SizedBox(height: 5),
                    AppButton(
                      title: 'Skip',
                      width: 150,
                      bgColor: AppColors.secondaryColor,
                      textColor: AppColors.blackText,
                      callback: () {
                        Get.offAllNamed(AppRoutes.loginView);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
