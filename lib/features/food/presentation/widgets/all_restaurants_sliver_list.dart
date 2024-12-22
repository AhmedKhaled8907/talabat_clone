import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/food/presentation/widgets/all_restaurants_item.dart';

class AllRestaurantsSliverList extends StatelessWidget {
  const AllRestaurantsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: allRestaurantsList.length,
      itemBuilder: (context, index) => AllRestaurantsItem(
        restaurant: allRestaurantsList[index],
      ),
      separatorBuilder: (context, index) => Divider(
        height: 32,
        thickness: AppSize.s0_5,
        color: AppColors.black.withValues(alpha: AppSize.s0_5),
      ),
    );
  }
}
