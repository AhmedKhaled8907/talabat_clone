import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';

class RestaurantAboutViewBody extends StatelessWidget {
  const RestaurantAboutViewBody({
    super.key,
    required this.restaurantsEntity,
  });

  final AllRestaurantsEntity restaurantsEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p16),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: const EdgeInsets.all(AppSize.s8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s10),
                  color: restaurantsEntity.backgroundColor,
                  border: restaurantsEntity.backgroundColor == AppColors.white
                      ? Border.all(
                          color: AppColors.grey,
                          width: AppSize.s1,
                        )
                      : null,
                ),
                child: Image.asset(
                  restaurantsEntity.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: Text(
              restaurantsEntity.name,
              style: AppStyles.styleBold16(context),
            ),
            subtitle: Text(
              restaurantsEntity.description,
              style: AppStyles.styleMedium12(context).copyWith(
                color: AppColors.blackWithOpacity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
