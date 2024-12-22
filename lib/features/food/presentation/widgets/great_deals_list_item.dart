import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/great_deals_entity.dart';
import 'package:talabat_clone/features/food/presentation/widgets/great_deals_item.dart';

class GreatDealsListItem extends StatelessWidget {
  const GreatDealsListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.27,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) =>
            const SizedBox(width: AppSize.s10),
        itemCount: greatDealsList.length,
        itemBuilder: (context, index) {
          return GreatDealsItem(
            greatDealsEntity: greatDealsList[index],
          );
        },
      ),
    );
  }
}
