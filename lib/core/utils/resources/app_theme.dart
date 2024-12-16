import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_fonts.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class AppTheme {
  static final appTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    fontFamily: FontConstants.fontFamily,
    primaryColor: AppColors.primaryColor,
    indicatorColor: AppColors.primaryColor,
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColors.primaryColor,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
      selectionColor: AppColors.primaryColor,
      selectionHandleColor: AppColors.primaryColor,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.white,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: AppColors.transparent,
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      side: BorderSide(color: AppColors.primaryColor),
      checkColor: WidgetStateProperty.all(AppColors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s4),
      ),
    ),
  );
}
