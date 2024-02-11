import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trust_ride/app/config/styles/app_color.dart';
import 'package:trust_ride/app/config/values/app_font_size.dart';

// Text Style
TextStyle _getTextStyle(
    {required double fontSize,
    required FontWeight fontWeight,
    required Color color}) {
  return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      textBaseline: TextBaseline.alphabetic);
}

//Reqular Text Style
TextStyle getRegularStyle(
    {double fontSize = AppFontSizes.afs12, Color color = AppColors.black}) {
  return _getTextStyle(
      fontSize: fontSize, fontWeight: FontWeight.normal, color: color);
}

//Light Text Style
TextStyle getLightStyle(
    {double fontSize = AppFontSizes.afs12, Color color = AppColors.black}) {
  return _getTextStyle(
      fontSize: fontSize, fontWeight: FontWeight.w500, color: color);
}

//Medium Text Style
TextStyle getMediumStyle(
    {double fontSize = AppFontSizes.afs12, Color color = AppColors.black}) {
  return _getTextStyle(
      fontSize: fontSize, fontWeight: FontWeight.w600, color: color);
}

//Bold Text Style
TextStyle getBoldStyle(
    {double fontSize = AppFontSizes.afs12, Color color = AppColors.black}) {
  return _getTextStyle(
      fontSize: fontSize, fontWeight: FontWeight.bold, color: color);
}

//Bold Text Style
TextStyle getTitle(
    {double fontSize = AppFontSizes.afs18, Color color = AppColors.black}) {
  return _getTextStyle(
      fontSize: fontSize, fontWeight: FontWeight.bold, color: color);
}

TextStyle getSubTitle(
    {double fontSize = AppFontSizes.afs15, Color color = AppColors.black}) {
  return _getTextStyle(
      fontSize: fontSize, fontWeight: FontWeight.normal, color: color);
}

//SemiBold Text Style
TextStyle getSemiBoldStyle(
    {double fontSize = AppFontSizes.afs12, Color color = AppColors.black}) {
  return _getTextStyle(
      fontSize: fontSize, fontWeight: FontWeight.w800, color: color);
}
