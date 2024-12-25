import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class AppColors {
  static final Color primaryColor = Color(0xFFFF6100);
  static final Color primaryColorWithOpacity = Color(0xFFFFEEE6);
  static final Color secondaryColor =
      Color(0xFF000000).withValues(alpha: AppSize.s0_5);
  static final Color thirdColor = Color(0xFFEB0669);
  static final Color productColor = Color(0xFFF5F5F5);
  static final Color proColor = Color(0xFF1D299A);
  static final Color deliveredColor = Color(0xFF2AA564);
  static final Color starColor = Color(0xFFFF9F00);
  static final Color dividerColor = Color(0xFFF5F5F5);
  static final Color navBarColor = Color(0xFFF7F7F7);
  static final Color violetColor = Color(0xFFE6E6FF);
  static final Color searchColor = Color(0xFFF5F5F5);
  static final Color tabOverlayColor = Color(0xFF000000).withValues(
    alpha: AppSize.s0_1,
  );

  // Normal Colors
  static final Color white = Color(0xFFFFFFFF);
  static final Color black = Color(0xFF000000);
  static final Color blackWithOpacity = Color(0xFF000000).withValues(
    alpha: AppSize.s0_5,
  );
  static final Color red = Colors.red;
  static final Color grey = Colors.grey;

  static final Color transparent = Colors.transparent;
}
