import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/search/presentation/views/food_search/popular_food_item.dart';

class PopularFoodWrap extends StatelessWidget {
  const PopularFoodWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppSize.s8,
      runSpacing: AppSize.s8,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: popularFoods
          .map(
            (e) => InkWell(
              borderRadius: BorderRadius.circular(AppSize.s16),
              onTap: () {},
              child: PopularFoodItem(title: e),
            ),
          )
          .toList(),
    );
  }
}

List<String> popularFoods = [
  'Chicken',
  'Pizza',
  'Burger',
  'Cake',
  'Salad',
  'Pasta',
  'Sandwich',
];
