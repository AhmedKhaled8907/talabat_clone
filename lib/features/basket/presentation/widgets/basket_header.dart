import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/item_details/presentation/widgets/number_of_items.dart';

import '../../../../core/utils/resources/app_styles.dart';

class BasketPrice extends StatefulWidget {
  const BasketPrice({
    super.key,
    required this.entity,
  });

  final AllRestaurantsEntity entity;

  @override
  State<BasketPrice> createState() => _BasketPriceState();
}

class _BasketPriceState extends State<BasketPrice> {
  int itemCount = 1;
  num totalPrice = 0;

  @override
  void initState() {
    super.initState();
    totalPrice = widget.entity.price;
  }

  void _updateItemCount(int newCount) {
    setState(() {
      itemCount = newCount;
      totalPrice = itemCount * widget.entity.price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: AppSize.s16,
      children: [
        Text(
          '$totalPrice EGP',
          style: AppStyles.styleBold12(context),
        ),
        NumberOfItems(
          onItemCountChanged: _updateItemCount,
        ),
      ],
    );
  }
}
