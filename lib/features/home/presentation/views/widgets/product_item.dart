import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/home/domain/entities/food_entity.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    required this.foodEntity,
    super.key,
  });

  final FoodEntity foodEntity;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: AppSize.s8,
        children: [
          AspectRatio(
            aspectRatio: 105 / 70,
            child: Container(
              margin: const EdgeInsets.only(right: AppSize.s8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.productColor,
              ),
              child: Center(
                child: Image.asset(
                  foodEntity.image,
                  height: context.height * 0.07,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Text(
            foodEntity.name,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleMedium14(context),
          ),
        ],
      ),
    );
  }
}
