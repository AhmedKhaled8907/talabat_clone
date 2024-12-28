import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_fonts.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class AppTheme {
  static ThemeData appTheme(BuildContext context) {
    return ThemeData(
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
        scrolledUnderElevation: 1,
        surfaceTintColor: AppColors.black,
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
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.navBarColor,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.blackWithOpacity,
        selectedLabelStyle: AppStyles.styleMedium14(context),
        unselectedLabelStyle: AppStyles.styleMedium14(context).copyWith(
          color: AppColors.blackWithOpacity,
        ),
      ),
      tabBarTheme: TabBarTheme(
        overlayColor: WidgetStateProperty.all(AppColors.tabOverlayColor),
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: AppColors.primaryColor,
        unselectedLabelColor: AppColors.blackWithOpacity,
        labelStyle: AppStyles.styleBold14(context),
        unselectedLabelStyle: AppStyles.styleMedium14(context).copyWith(
          color: AppColors.blackWithOpacity,
        ),
        labelPadding: const EdgeInsets.symmetric(
          vertical: AppPadding.p8,
          horizontal: AppPadding.p16,
        ),
        indicatorColor: AppColors.primaryColor,
        tabAlignment: TabAlignment.start,
      ),
    );
  }
}
