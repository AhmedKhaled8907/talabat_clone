import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/home/domain/entities/restaurants_entity.dart';
import 'package:talabat_clone/features/home/presentation/views/widgets/popular_restaurants_item.dart';

class PopularRestaurantsSection extends StatelessWidget {
  const PopularRestaurantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSize.s16,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            AppStrings.popularRestaurants,
            style: AppStyles.styleBold16(context),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: restaurantsList
              .map((e) => PopularRestaurantsItem(restaurant: e))
              .toList(),
        )
      ],
    );
  }
}
