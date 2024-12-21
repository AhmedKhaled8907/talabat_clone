import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/food_offers_entity.dart';
import 'package:talabat_clone/features/food/presentation/widgets/food_offers_item.dart';

class FoodOffersListItem extends StatelessWidget {
  const FoodOffersListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSize.s8,
      children: offersList
          .map(
            (offer) => Expanded(
              child: InkWell(
                borderRadius: BorderRadius.circular(AppSize.s10),
                onTap: () {},
                child: FoodOffersItem(offer: offer),
              ),
            ),
          )
          .toList(),
    );
  }
}
