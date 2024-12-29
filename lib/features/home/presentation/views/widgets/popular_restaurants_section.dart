import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
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
          children: popularRestaurantsList
              .map(
                (e) => Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(AppSize.s8),
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRoutes.kRestaurantDetailsRoute,
                        extra: e,
                      );
                    },
                    child: PopularRestaurantsItem(restaurant: e),
                  ),
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
