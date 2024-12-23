import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/casserole_item.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/core/common/widgets/casserole_page_view.dart';
import 'package:talabat_clone/features/home/presentation/views/widgets/code_banner.dart';
import 'package:talabat_clone/features/home/presentation/views/widgets/drink_item_list.dart';
import 'package:talabat_clone/features/home/presentation/views/widgets/food_list_item.dart';
import 'package:talabat_clone/features/home/presentation/views/widgets/home_banner.dart';
import 'package:talabat_clone/features/home/presentation/views/widgets/popular_restaurants_section.dart';
import 'package:talabat_clone/features/home/presentation/views/widgets/shortcuts_list_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSize.s16,
        children: [
          HomeBanner(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.s16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppSize.s24,
              children: [
                FoodListItem(),
                DrinkItemList(),
                CodeBanner(),
                ShortcutsListItem(),
                CasserolePageView(
                  child: CasseroleItem(
                    image: AppAssets.imagesHomeCasserole,
                  ),
                ),
                PopularRestaurantsSection(),
                const SizedBox(height: AppSize.s24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
