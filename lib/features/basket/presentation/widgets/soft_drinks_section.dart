import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/basket/presentation/widgets/basket_header.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';

class SoftDrinksSection extends StatelessWidget {
  const SoftDrinksSection({super.key, required this.entity});

  final AllRestaurantsEntity entity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSize.s16,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: AppSize.s16,
          children: [
            Image.asset(
              AppAssets.imagesFoodCocacola,
              fit: BoxFit.fill,
            ),
            Text(
              AppStrings.thirsty,
              style: AppStyles.styleMedium14(context),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p16,
            vertical: AppPadding.p16,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s8),
            border: Border.all(
              color: AppColors.black.withValues(
                alpha: AppSize.s0_25,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: AppSize.s36,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                spacing: AppSize.s8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.softDrinks,
                    style: AppStyles.styleMedium14(context),
                  ),
                  BasketPrice(entity: entity),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.s8),
                child: Center(
                  child: Image.asset(
                    AppAssets.imagesFoodCocacola2,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
