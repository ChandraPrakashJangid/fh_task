import 'package:fh_task/theme/app_theme.dart';
import 'package:flutter/material.dart';
import '/utils/app_size.dart';

@immutable
class AppTextStyle {
  static const String _regular = "OpenSans-Regular";
  static const String _bold = "OpenSans-Bold";
  static const String _medium = "OpenSans-Medium";

  final TextStyle? screenTitle;
  final TextStyle? title;
  final TextStyle? buttonStyle;
  final TextStyle? bodyMainTextStyle;

  const AppTextStyle({
    this.screenTitle,
    this.title,
    this.buttonStyle,
    this.bodyMainTextStyle,
  });

  AppTextStyle.getStyle()
      : screenTitle = TextStyle(
          fontFamily: _bold,
          fontSize: AppSize.s11,
          color: AppTheme.colors.black!,
          fontWeight: FontWeight.w700,
          inherit: true,
        ),
        bodyMainTextStyle = TextStyle(
          fontFamily: _regular,
          fontSize: AppSize.s13,
          color: AppTheme.colors.black!,
          fontWeight: FontWeight.w400,
          inherit: true,
        ),
        title = const TextStyle(
          fontFamily: _medium,
          fontSize: AppSize.s13,
          color: Colors.black,
          fontWeight: FontWeight.w600,
          inherit: true,
        ),
        buttonStyle = const TextStyle(
          fontFamily: _regular,
          fontSize: AppSize.s11,
          color: Colors.white,
          fontWeight: FontWeight.w700,
          inherit: true,
        );
}
