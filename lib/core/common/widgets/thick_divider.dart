import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class ThickDivider extends StatelessWidget {
  const ThickDivider({
    super.key,
    this.height = AppSize.s16,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      thickness: AppSize.s8,
      color: AppColors.dividerColor,
    );
  }
}
