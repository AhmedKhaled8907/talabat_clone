import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/search/presentation/views/food_search/popular_food.dart';

class FoodSearchView extends StatelessWidget {
  const FoodSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSize.s16,
      children: [
        PopularFood(),
        // EmptyView(
        //   entity: emptyViewList[0],
        // ),
      ],
    );
  }
}
