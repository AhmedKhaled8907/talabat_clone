import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/home/domain/entities/food_entity.dart';

class ShortcutsItem extends StatelessWidget {
  const ShortcutsItem({
    super.key,
    required this.foodEntity,
  });

  final FoodEntity foodEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: AppSize.s8,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Container(
            padding: EdgeInsets.all(AppSize.s16),
            decoration: BoxDecoration(
              color: AppColors.primaryColorWithOpacity,
              borderRadius: BorderRadius.circular(AppSize.s10),
            ),
            child: Center(
              child: Image.asset(
                foodEntity.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          foodEntity.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: AppStyles.styleMedium14(context),
        ),
      ],
    );
  }
}
