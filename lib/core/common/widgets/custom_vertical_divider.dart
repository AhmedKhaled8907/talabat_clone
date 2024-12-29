import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s40,
      child: VerticalDivider(
        color: AppColors.blackWithOpacity.withValues(
          alpha: AppSize.s0_25,
        ),
      ),
    );
  }
}
