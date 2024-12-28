import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/presentation/widgets/all_restaurants_sliver_list.dart';
import 'package:talabat_clone/features/search/presentation/views/food_search/featured_restaurants_header.dart';
import 'package:talabat_clone/features/search/presentation/views/food_search/popular_food.dart';

import '../../../../../core/common/widgets/thick_divider.dart';

class FoodSearchView extends StatelessWidget {
  const FoodSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppSize.s12,
            children: [
              PopularFood(),
              ThickDivider(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.s16,
                ),
                child: FeaturedRestaurantHeader(),
              ),
              const SizedBox(),
            ],
          ),
        ),
        AllRestaurantsSliverList(),
        const SliverToBoxAdapter(child: SizedBox(height: AppSize.s32)),
      ],
    );
  }
}
