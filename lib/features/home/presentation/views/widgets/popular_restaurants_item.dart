import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';

class PopularRestaurantsItem extends StatelessWidget {
  const PopularRestaurantsItem({
    super.key,
    required this.restaurant,
  });

  final AllRestaurantsEntity restaurant;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: AppSize.s8,
      children: [
        AspectRatio(
          aspectRatio: 80 / 70,
          child: Container(
            padding: EdgeInsets.all(AppSize.s16),
            margin: EdgeInsets.symmetric(horizontal: AppSize.s4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s8),
              border: Border.all(
                color: AppColors.grey,
                width: AppSize.s1,
              ),
            ),
            child: Center(
              child: Image.asset(
                restaurant.image,
                height: context.height * 0.085,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Text(
          restaurant.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: AppStyles.styleMedium14(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: AppSize.s4,
          children: [
            Icon(
              Icons.timer,
              size: AppSize.s16,
              color: AppColors.grey,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '${restaurant.deliveryTime} min',
                textAlign: TextAlign.center,
                style: AppStyles.styleMedium14(context).copyWith(
                  color: AppColors.grey,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
