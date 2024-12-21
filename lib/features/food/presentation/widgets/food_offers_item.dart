import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/food_offers_entity.dart';

class FoodOffersItem extends StatelessWidget {
  const FoodOffersItem({
    super.key,
    required this.offer,
  });

  final FoodOffersEntity offer;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 8 / 10,
      child: Container(
        padding: const EdgeInsets.all(AppSize.s8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s10),
          color: AppColors.violetColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Image.asset(
                offer.image,
                fit: BoxFit.fill,
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                offer.name,
                style: AppStyles.styleMedium10(context).copyWith(
                  color: AppColors.black.withValues(alpha: 0.7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
