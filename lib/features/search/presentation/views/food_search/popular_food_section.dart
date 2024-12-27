import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/search/presentation/views/food_search/popular_food_wrap.dart';

class PopularFoodSection extends StatelessWidget {
  const PopularFoodSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: AppSize.s16,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              AppStrings.popularSearch,
              style: AppStyles.styleBold16(context),
            ),
          ),
          PopularFoodWrap(),
        ],
      ),
    );
  }
}
