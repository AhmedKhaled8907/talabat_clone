
import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class Exceptional extends StatelessWidget {
  const Exceptional({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.s8,
        vertical: AppSize.s2,
      ),
      decoration: BoxDecoration(
        color: AppColors.primaryColorWithOpacity,
        borderRadius: BorderRadius.circular(AppSize.s10),
      ),
      child: Row(
        spacing: AppSize.s4,
        children: [
          Image.asset(
            AppAssets.imagesFoodExceptional,
          ),
          Text(
            AppStrings.exceptional,
            style: AppStyles.styleRegular10(context).copyWith(
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
