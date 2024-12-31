import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/basket/presentation/widgets/basket_price.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';

class BasketViewBody extends StatelessWidget {
  const BasketViewBody({
    super.key,
    required this.entity,
  });

  final AllRestaurantsEntity entity;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(
          AppPadding.p16,
        ),
        child: Column(
          children: [
            BasketHeader(entity: entity),
          ],
        ),
      ),
    );
  }
}


