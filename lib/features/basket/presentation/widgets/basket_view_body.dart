import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/basket/presentation/widgets/basket_price.dart';
import 'package:talabat_clone/features/basket/presentation/widgets/save_on_your_order_section.dart';
import 'package:talabat_clone/features/basket/presentation/widgets/soft_drinks_section.dart';
import 'package:talabat_clone/features/basket/presentation/widgets/special_request_section.dart';
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
          spacing: AppSize.s16,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BasketHeader(entity: entity),
            SoftDrinksSection(entity: entity),
            SpecialRequestSection(),
            SaveOnYourOrderSection(),
          ],
        ),
      ),
    );
  }
}
