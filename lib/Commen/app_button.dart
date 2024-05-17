import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:nutri_diet/Commen/app_colors.dart';
import 'package:nutri_diet/Commen/app_text.dart';

class AppButton extends StatelessWidget {
  final double? width;
  final String title;
  final Function callback;
  final Color bgColor;
  final Color textColor;
  final bool isLoading;
  const AppButton({
    super.key,
    this.width,
    this.isLoading = false,
    required this.title,
    required this.callback,
    this.bgColor = AppColors.primaryColor,
    this.textColor = AppColors.secondaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isLoading) {
          callback();
        }
      },
      child: Container(
        height: 50,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: bgColor,
        ),
        child: Center(
          child: isLoading
              ? const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: LoadingIndicator(
                    indicatorType: Indicator.lineScale,
                    colors: [Colors.white],
                    strokeWidth: 3,
                    backgroundColor: Colors.transparent,
                    pathBackgroundColor: Colors.transparent,
                  ),
                )
              : AppText(
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
