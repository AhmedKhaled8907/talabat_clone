import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/home/domain/entities/food_entity.dart';

class ShortcutsWidget extends StatelessWidget {
  const ShortcutsWidget({
    super.key,
    required this.foodEntity,
  });

  final FoodEntity foodEntity;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: AppSize.s8,
          children: [
            Container(
              padding: EdgeInsets.all(AppSize.s24),
              decoration: BoxDecoration(
                color: AppColors.primaryColorWithOpacity,
                borderRadius: BorderRadius.circular(AppSize.s10),
              ),
              child: Image.asset(
                foodEntity.image,
                fit: BoxFit.fill,
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
        ),
      ),
    );
  }
}
