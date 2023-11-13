import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static TextStyle get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.3),
      );
  static TextStyle get labelLargeBlack90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
      );
  static TextStyle get labelLargeBlack9007f => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black9007f,
      );
  static TextStyle get labelLargeDeeporangeA400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepOrangeA400,
      );
  static TextStyle get labelLargeGreenA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.greenA700,
      );
  static TextStyle get labelLargeGreenA700Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.greenA700,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static TextStyle get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.3),
      );
  static TextStyle get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static TextStyle get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumBlack90001Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
