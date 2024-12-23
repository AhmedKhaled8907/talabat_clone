import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';

class TalabatMartEntity {
  final String image;
  final Color? imageBackground;
  final String title;
  final num? price;
  final num? discount;

  TalabatMartEntity({
    required this.image,
    Color? imageBackground,
    required this.title,
    this.price = 0,
    this.discount = 0,
  }) : imageBackground = imageBackground ?? AppColors.dividerColor;
}

List<TalabatMartEntity> get talabatMartsList => [
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartBestDeals,
        title: 'Today\'s Best Deals',
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartDiscounts,
        title: 'Everyday Discounts',
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartImported,
        title: 'Imported 🔥',
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartAraTaste,
        title: 'The Ara Taste',
      ),
    ];

List<TalabatMartEntity> get trendingNowList => [
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartGalaxy,
        title: 'Galaxy Smooth Milk Chocolate',
        price: 10,
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartKiri,
        title: 'Kiri Creamy Tub Cheese',
        price: 75,
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartSandwichBiscuts,
        title: 'Prince Sandwich Biscuit with Syrup',
        price: 50,
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartKiri,
        title: 'Kiri Creamy Tub Cheese',
        price: 75,
      ),
    ];

List<TalabatMartEntity> get shopByCategoryList => [
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartFruit,
        title: 'Fruit & Veg',
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartMilk,
        title: 'Milk & Yogurts',
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartChesse,
        title: 'Cheese & Butter',
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartBakery,
        title: 'Bakery',
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartPoultry,
        title: 'Poultry, Eggs & Deli',
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartTwix,
        title: 'Sweet Snacks',
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartBiscuits,
        title: 'Biscuits & Wafers',
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartChips,
        title: 'Salted Snacks',
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartNuts,
        title: 'Nuts and Seeds',
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartRedBull,
        title: 'Beverages',
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartIceCream,
        title: 'Ice Cream',
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartViewAll,
        title: 'View all categories',
      ),
    ];

List<TalabatMartEntity> get topSaversList => [
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartGalaxy,
        title: 'Galaxy Smooth Milk Chocolate',
        price: 10,
        discount: 25,
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartKiri,
        title: 'Kiri Creamy Tub Cheese',
        price: 75,
        discount: 100,
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartSandwichBiscuts,
        title: 'Prince Sandwich Biscuit with Syrup',
        price: 50,
        discount: 75,
      ),
      TalabatMartEntity(
        image: AppAssets.imagesTalabatMartKiri,
        title: 'Kiri Creamy Tub Cheese',
        discount: 25,
        price: 50,
      ),
    ];
