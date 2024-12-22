import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/presentation/widgets/all_restaurants_header.dart';

class AllRestaurantsSection extends StatelessWidget {
  const AllRestaurantsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.s16,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AllRestaurantHeader(),
      ],
    );
  }
}
