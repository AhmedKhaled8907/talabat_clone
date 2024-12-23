import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSize.s16),
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p16,
        vertical: AppPadding.p8,
      ),
      decoration: BoxDecoration(
        color: AppColors.searchColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: AppSize.s8,
        children: [
          Image.asset(AppAssets.imagesSearch),
          Text(
            AppStrings.searchProduct,
            style: AppStyles.styleRegular14(context).copyWith(
              color: AppColors.blackWithOpacity,
            ),
          ),
        ],
      ),
    );
  }
}
