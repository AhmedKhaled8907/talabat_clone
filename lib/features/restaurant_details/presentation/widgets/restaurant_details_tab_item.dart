import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';

class RestaurantDetailsTabItem extends StatelessWidget {
  const RestaurantDetailsTabItem({
    super.key,
    required this.entity,
  });

  final AllRestaurantsEntity entity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSize.s16,
      children: [
        Row(
          spacing: AppSize.s16,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: AppSize.s8,
                children: [
                  Text(
                    entity.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.styleMedium12(context),
                  ),
                  Text(
                    entity.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.styleMedium12(context).copyWith(
                      color: AppColors.black.withValues(alpha: AppSize.s0_5),
                    ),
                  ),
                  Text(
                    '${entity.price} EGP',
                    maxLines: 3,
                    textAlign: TextAlign.end,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.styleMedium14(context),
                  ),
                ],
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppSize.s10),
                  child: Image.asset(
                    entity.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
