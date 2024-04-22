import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutri_diet/App/Auth/View%20Model/register_viewmodel.dart';
import 'package:nutri_diet/Commen/app_assets.dart';
import 'package:nutri_diet/Commen/app_button.dart';
import 'package:nutri_diet/Commen/app_colors.dart';
import 'package:nutri_diet/Commen/app_text.dart';
import 'package:nutri_diet/Commen/app_textfield.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  final registerVM = Get.find<RegisterViewModel>();
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
                    title: "Sign up",
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
                    AppTextFromField(
                      hintText: "Fullname",
                      controller: registerVM.regFullName.value,
                    ),
                    const SizedBox(height: 15),
                    AppTextFromField(
                      hintText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      controller: registerVM.regEmail.value,
                    ),
                    const SizedBox(height: 15),
                    AppTextFromField(
                      hintText: "Password",
                      keyboardType: TextInputType.emailAddress,
                      controller: registerVM.regPassword.value,
                      isPassword: true,
                    ),
                    const SizedBox(height: 15),
                    AppTextFromField(
                      hintText: "Confirm Password",
                      keyboardType: TextInputType.emailAddress,
                      controller: registerVM.regConfirmPassword.value,
                      isPassword: true,
                    ),
                    const SizedBox(height: 15),
                    AppButton(
                      title: "Sign Up",
                      callback: () {
                        registerVM.onRegister();
                      },
                    ),
                    const SizedBox(height: 15),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'By clicking Sign Up, I agree',
                        style: GoogleFonts.poppins(
                          color: AppColors.blackText,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(
                            text: ' Terms & Conditions',
                            style: GoogleFonts.poppins(
                              color: AppColors.primaryColor,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                            style: GoogleFonts.poppins(
                              color: AppColors.blackText,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: GoogleFonts.poppins(
                              color: AppColors.primaryColor,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const AppText(
                          title: "Already have an account? ",
                          size: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: const AppText(
                              title: "Sign In",
                              size: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor,
                            ),
                          ),
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
