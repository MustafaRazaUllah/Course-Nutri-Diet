import 'package:flutter/material.dart';
import 'package:nutri_diet/Commen/app_colors.dart';
import 'package:nutri_diet/Commen/app_text.dart';

class AppButton extends StatelessWidget {
  final double? width;
  final String title;
  final Function callback;
  final Color bgColor;
  final Color textColor;
  const AppButton({
    super.key,
    this.width,
    required this.title,
    required this.callback,
    this.bgColor = AppColors.primaryColor,
    this.textColor = AppColors.secondaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback();
      },
      child: Container(
        height: 50,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: bgColor,
        ),
        child: Center(
          child: AppText(
            title: title,
            size: 14,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
