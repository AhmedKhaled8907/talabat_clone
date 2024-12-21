import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:talabat_clone/features/home/domain/entities/food_entity.dart';
import 'package:talabat_clone/features/home/presentation/views/widgets/product_item.dart';

class FoodItemList extends StatelessWidget {
  const FoodItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: foodsList.map((e) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              log('Product tapped');
            },
            child: ProductItem(foodEntity: e),
          ),
        );
      }).toList(),
    );
  }
}
