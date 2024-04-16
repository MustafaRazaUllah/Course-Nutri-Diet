import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutri_diet/Commen/app_colors.dart';

class AppText extends StatelessWidget {
  final String title;
  final TextAlign alignment;
  final TextOverflow txtOverFlow;
  final FontStyle style;
  final bool isSoftWrap;
  final double letterSpacce;
  final Color color;
  final TextDecoration textDecoration;
  final FontWeight fontWeight;
  final double size;
  final int? maxLines;
  final double height;
  final bool isSplashScreen;
  const AppText({
    super.key,
    this.size = 14,
    this.fontWeight = FontWeight.w500,
    this.textDecoration = TextDecoration.none,
    this.color = AppColors.blackText,
    this.letterSpacce = 0,
    this.isSoftWrap = false,
    this.style = FontStyle.normal,
    this.alignment = TextAlign.start,
    this.txtOverFlow = TextOverflow.visible,
    required this.title,
    this.height = 1.5,
    this.maxLines,
    this.isSplashScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: alignment,
      maxLines: maxLines,
      softWrap: isSoftWrap,
      overflow: txtOverFlow,
      style: isSplashScreen
          ? GoogleFonts.montserratAlternates(
              height: height,
              fontStyle: style,
              letterSpacing: letterSpacce,
              color: color,
              decoration: textDecoration,
              fontWeight: fontWeight,
              fontSize: size,
            )
          : GoogleFonts.poppins(
              height: height,
              fontStyle: style,
              letterSpacing: letterSpacce,
              color: color,
              decoration: textDecoration,
              fontWeight: fontWeight,
              fontSize: size,
            ),
    );
  }
}
