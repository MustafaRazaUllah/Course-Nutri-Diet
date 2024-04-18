import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:nutri_diet/Commen/app_assets.dart';
import 'package:nutri_diet/Commen/app_button.dart';
import 'package:nutri_diet/Commen/app_colors.dart';
import 'package:nutri_diet/Commen/app_text.dart';
import 'package:nutri_diet/Commen/app_textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SizedBox.expand(
          child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            AppAssets.backgroundImage,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AppText(
                    title: "Sign In",
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
                        color: AppColors.secondaryColor,
                      ),
                      AppText(
                        title: "Diet",
                        size: 28,
                        fontWeight: FontWeight.w400,
                        color: AppColors.secondaryColor,
                      ),
                    ],
                  ),
                  const AppText(
                    title: "Welcome ! Please enter your details.",
                    size: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackText,
                    txtOverFlow: TextOverflow.visible,
                    isSoftWrap: true,
                    alignment: TextAlign.center,
                  ),
                  SizedBox(
                    height: context.mediaQuerySize.height * 0.07,
                  )
                ],
              ),
              Container(
                height: context.mediaQuerySize.height * 0.7,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(48),
                    topLeft: Radius.circular(48),
                  ),
                  color: AppColors.secondaryColor,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const AppTextFromField(
                      hintText: "Email",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 15),
                    const AppTextFromField(
                      hintText: "Password",
                      keyboardType: TextInputType.emailAddress,
                      isPassword: true,
                    ),
                    const SizedBox(height: 15),
                    AppButton(
                      title: "Sign In",
                      callback: () {},
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColors.primaryColor,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.check,
                              color: AppColors.secondaryColor,
                              size: 10,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        const AppText(
                          title: "Remember me",
                          size: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackText,
                        ),
                        const Spacer(),
                        const AppText(
                          title: "Forgot password",
                          size: 12,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 1.5,
                          width: context.mediaQuerySize.width * 0.35,
                          color: AppColors.borderGery,
                        ),
                        const AppText(
                          title: "OR",
                          size: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackText,
                        ),
                        Container(
                          height: 1.5,
                          width: context.mediaQuerySize.width * 0.35,
                          color: AppColors.borderGery,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.socialbutton,
                        border: Border.all(
                          color: AppColors.borderGery,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.googleIcon,
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 8),
                          const AppText(
                            title: "Continue With Google",
                            size: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.socialbutton,
                        border: Border.all(
                          color: AppColors.borderGery,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.appleIcon,
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 8),
                          const AppText(
                            title: "Continue With Apple",
                            size: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.socialbutton,
                        border: Border.all(
                          color: AppColors.borderGery,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.facebookIcon,
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 8),
                          const AppText(
                            title: "Continue With Facebook",
                            size: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          title: "Don’t Have an account? ",
                          size: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        AppText(
                          title: "Sign Up",
                          size: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
