import 'package:flutter/material.dart';
import 'package:talabat_clone/features/home/domain/entities/food_entity.dart';
import 'package:talabat_clone/features/home/presentation/views/widgets/product_item.dart';

class FoodListItem extends StatelessWidget {
  const FoodListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: foodsList(context).map((e) {
        return Expanded(
          child: GestureDetector(
            onTap: e.onTap,
            child: ProductItem(foodEntity: e),
          ),
        );
      }).toList(),
    );
  }
}
