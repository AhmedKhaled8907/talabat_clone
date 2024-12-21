import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/food_filter_entity.dart';

class FoodFilterItem extends StatelessWidget {
  const FoodFilterItem({
    super.key,
    required this.foodFilterEntity,
  });

  final FoodFilterEntity foodFilterEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppPadding.p8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s15),
        border: Border.all(
          color: AppColors.grey,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: AppSize.s4,
        children: [
          if (foodFilterEntity.icon != null)
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Icon(
                  foodFilterEntity.icon,
                  size: AppSize.s18,
                  color: AppColors.grey,
                ),
              ),
            ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              foodFilterEntity.title,
              style: AppStyles.styleMedium12(context).copyWith(
                color: AppColors.grey,
              ),
            ),
          ),
          if (foodFilterEntity.dropDownIcon != null)
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Icon(
                  foodFilterEntity.dropDownIcon,
                  size: AppSize.s18,
                  color: AppColors.grey,
                ),
              ),
            )
          else
            SizedBox.shrink(),
        ],
      ),
    );
  }
}
