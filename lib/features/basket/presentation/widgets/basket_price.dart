import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/basket/presentation/widgets/basket_header.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';

import '../../../../core/utils/resources/app_styles.dart';

class BasketHeader extends StatelessWidget {
  const BasketHeader({
    super.key,
    required this.entity,
  });

  final AllRestaurantsEntity entity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: AppSize.s16,
            children: [
              Text(
                entity.name,
                style: AppStyles.styleBold14(context),
              ),
              BasketPrice(entity: entity),
            ],
          ),
        ),
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: Center(
              child: Image.asset(
                entity.image,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
