import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/presentation/widgets/all_restaurants_section.dart';
import 'package:talabat_clone/features/food/presentation/widgets/food_filter_list_item.dart';
import 'package:talabat_clone/features/food/presentation/widgets/food_offers_list_item.dart';
import 'package:talabat_clone/features/food/presentation/widgets/great_deals_section.dart';

class FoodViewBody extends StatelessWidget {
  const FoodViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppSize.s16,
          children: [
            FoodFilterListItem(),
            FoodOffersListItem(),
            GreatDealsSection(),
            AllRestaurantsSection(),
          ],
        ),
      ),
    );
  }
}
