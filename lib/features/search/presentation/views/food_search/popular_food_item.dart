import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class PopularFoodItem extends StatelessWidget {
  const PopularFoodItem({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(AppSize.s16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: AppSize.s6,
        children: [
          Image.asset(
            AppAssets.imagesSearchTrendingUp,
            fit: BoxFit.fill,
            width: AppSize.s16,
          ),
          Text(
            title,
            style: AppStyles.styleBold12(context).copyWith(
              color: AppColors.blackWithOpacity,
            ),
          )
        ],
      ),
    );
  }
}
