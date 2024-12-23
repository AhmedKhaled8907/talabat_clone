import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/shop_by_category/shop_by_category_grid_view.dart';

class ShopByCategorySection extends StatelessWidget {
  const ShopByCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.s16,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          AppStrings.shopByCategory,
          style: AppStyles.styleBold16(context),
        ),
        ShopByCategoryGridView(),
      ],
    );
  }
}
