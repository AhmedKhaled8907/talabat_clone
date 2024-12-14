import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_fonts.dart';

class AppTheme {
  static final appTheme = ThemeData(
    
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white, 
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: AppColors.white,
      ),
      elevation: 0, 
    ),
    fontFamily: FontConstants.fontFamily,
    primaryColor: AppColors.primaryColor,
  );
}
