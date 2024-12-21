import 'package:flutter/material.dart';

class FoodFilterEntity {
  final IconData? icon;
  final String title;
  final IconData? dropDownIcon;

  FoodFilterEntity({
    this.icon,
    required this.title,
    this.dropDownIcon,
  });
}

List<FoodFilterEntity> get foodFilterList => [
      FoodFilterEntity(
        icon: Icons.swap_vert_rounded,
        title: 'Sort by',
        dropDownIcon: Icons.keyboard_arrow_down_rounded,
      ),
      FoodFilterEntity(
        icon: Icons.coffee,
        title: 'Cuisines',
        dropDownIcon: Icons.keyboard_arrow_down_rounded,
      ),
      FoodFilterEntity(
        title: 'Rating 4.0+',
      ),
    ];
