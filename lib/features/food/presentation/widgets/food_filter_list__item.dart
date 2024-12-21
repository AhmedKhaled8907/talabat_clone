import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/food_filter_entity.dart';
import 'package:talabat_clone/features/food/presentation/widgets/food_filter_item.dart';

class FoodFilterListItem extends StatelessWidget {
  const FoodFilterListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSize.s12,
      children: foodFilterList
          .map(
            (e) => Expanded(
              child: InkWell(
                borderRadius: BorderRadius.circular(AppSize.s15),
                onTap: () {},
                child: FoodFilterItem(foodFilterEntity: e),
              ),
            ),
          )
          .toList(),
    );
  }
}
