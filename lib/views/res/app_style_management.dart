import 'package:flutter/material.dart';

abstract class FontConstants {
  static const String fontFamily = 'Urbanist';
  static const String reviewFontFamily = 'Poppins';
}

abstract class FontWeightManagement {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight bold = FontWeight.w600;
  static const FontWeight extraBold = FontWeight.w800;
}

abstract class FontSize {
  static const double s8 = 8.0;
  static const double s10 = 10.0;
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s20 = 20.0;
}

TextStyle _getTextStyle(
  String fontFamily,
  double fontSize,
  FontWeight fontWeight,
  Color fontColor,
) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: fontColor,
  );
}

//* Regular Style
TextStyle getRegularStyle({
  double fontSize = FontSize.s14,
  required Color fontColor,
}) {
  return _getTextStyle(
    FontConstants.fontFamily,
    fontSize,
    FontWeightManagement.regular,
    fontColor,
  );
}

//* Review Regular Style
TextStyle reviewGetRegularStyle({
  double fontSize = FontSize.s12,
  required Color fontColor,
}) {
  return _getTextStyle(
    FontConstants.reviewFontFamily,
    fontSize,
    FontWeightManagement.regular,
    fontColor,
  );
}

//* Medium Style
TextStyle getMediumStyle({
  double fontSize = FontSize.s10,
  required Color fontColor,
}) {
  return _getTextStyle(
    FontConstants.fontFamily,
    fontSize,
    FontWeightManagement.medium,
    fontColor,
  );
}

//* Bold style
TextStyle getBoldStyle({
  double fontSize = FontSize.s10,
  required Color fontColor,
}) {
  return _getTextStyle(
    FontConstants.fontFamily,
    fontSize,
    FontWeightManagement.bold,
    fontColor,
  );
}

//* Extra bold style
TextStyle getExtraBoldStyle({
  double fontSize = FontSize.s20,
  required Color fontColor,
}) {
  return _getTextStyle(
    FontConstants.fontFamily,
    fontSize,
    FontWeightManagement.extraBold,
    fontColor,
  );
}
