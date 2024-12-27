import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/search/presentation/views/food_search/popular_food_section.dart';

class PopularFood extends StatelessWidget {
  const PopularFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: AppSize.s16,
      children: [
        const SizedBox(),
        PopularFoodSection(),
      ],
    );
  }
}
