import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class ThinDivider extends StatelessWidget {
  const ThinDivider({
    super.key,
    this.height = AppSize.s32,
  });

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      thickness: AppSize.s0_5,
      color: AppColors.black.withValues(alpha: AppSize.s0_25),
    );
  }
}
