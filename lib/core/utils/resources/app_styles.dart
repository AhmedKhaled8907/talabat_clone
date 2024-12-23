import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_fonts.dart';

abstract class AppStyles {
  static TextStyle styleRegular10(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s10,
      ),
      fontWeight: FontWeights.regular,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s12,
      ),
      fontWeight: FontWeights.regular,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s14,
      ),
      fontWeight: FontWeights.regular,
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s16,
      ),
      fontWeight: FontWeights.regular,
    );
  }

  static TextStyle styleMedium10(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      color: AppColors.secondaryColor,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s10,
      ),
      fontWeight: FontWeights.medium,
    );
  }

  static TextStyle styleMedium12(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s12,
      ),
      fontWeight: FontWeights.medium,
    );
  }

  static TextStyle styleMedium14(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s14,
      ),
      fontWeight: FontWeights.medium,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s16,
      ),
      fontWeight: FontWeights.medium,
    );
  }

  static TextStyle styleMedium18(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s18,
      ),
      fontWeight: FontWeights.medium,
    );
  }

  static TextStyle styleBold10(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s10,
      ),
      fontWeight: FontWeights.bold,
    );
  }

  static TextStyle styleBold12(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s12,
      ),
      fontWeight: FontWeights.bold,
    );
  }

  static TextStyle styleBold14(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s14,
      ),
      fontWeight: FontWeights.bold,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s16,
      ),
      fontWeight: FontWeights.bold,
    );
  }

  static TextStyle styleBold20(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s20,
      ),
      fontWeight: FontWeights.bold,
    );
  }

  static TextStyle styleBold24(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s24,
      ),
      fontWeight: FontWeights.bold,
    );
  }
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}

double getResponsiveFontSize(
  BuildContext context, {
  required double fontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}
