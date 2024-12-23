import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';

class TrendingNowText extends StatelessWidget {
  const TrendingNowText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppStrings.trendingNow,
          style: AppStyles.styleBold14(context),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            AppStrings.viewAll,
            style: AppStyles.styleMedium12(context).copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
