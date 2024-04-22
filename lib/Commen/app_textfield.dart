import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutri_diet/Commen/app_colors.dart';

class AppTextFromField extends StatefulWidget {
  final String hintText;
  final String? lableText;
  final TextInputType keyboardType;
  final bool isPassword;
  final TextEditingController controller;
  final bool isEmailField;

  const AppTextFromField({
    super.key,
    required this.hintText,
    this.lableText,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    required this.controller,
    this.isEmailField = false,
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
        controller: widget.controller,
        validator: (val) {
          if (val!.isEmpty) {
            return "Please Enter ${widget.hintText}";
          }
          const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
              r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
              r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
              r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
              r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
              r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
              r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
          final regex = RegExp(pattern);

          if (widget.isEmailField && !regex.hasMatch(val)) {
            return "Please Enter Valid Email Address";
          }

          const passPattern =
              r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$";
          final passRegex = RegExp(passPattern);
          if (widget.isPassword && !passRegex.hasMatch(val)) {
            return "Please Enter Valid Password";
          }
          return null;
        },
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
