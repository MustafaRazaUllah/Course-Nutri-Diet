import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutri_diet/Commen/app_colors.dart';

class AppTextFromField extends StatefulWidget {
  final String hintText;
  final String? lableText;
  final TextInputType keyboardType;
  final bool isPassword;
  const AppTextFromField({
    super.key,
    required this.hintText,
    this.lableText,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
  });

  @override
  State<AppTextFromField> createState() => _AppTextFromFieldState();
}

class _AppTextFromFieldState extends State<AppTextFromField> {
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        keyboardType: widget.keyboardType,
        obscureText: widget.isPassword ? isShowPassword : false,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: GoogleFonts.poppins(
            height: 1.5,
            fontStyle: FontStyle.normal,
            letterSpacing: 0,
            color: AppColors.blackText,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          labelText: widget.lableText,
          labelStyle: GoogleFonts.poppins(
            height: 1.5,
            fontStyle: FontStyle.normal,
            letterSpacing: 0,
            color: AppColors.blackText,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(
              color: AppColors.primaryColor,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(
              color: AppColors.primaryColor,
              width: 1.5,
            ),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isShowPassword = !isShowPassword;
                    });
                  },
                  icon: Icon(
                    isShowPassword
                        ? Icons.remove_red_eye_outlined
                        : Icons.remove_red_eye_rounded,
                    size: 20,
                    color: AppColors.blackText,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
