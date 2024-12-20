import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';

class FoodEntity {
  final String image;
  final String name;

  FoodEntity({
    required this.image,
    required this.name,
  });
}

List<FoodEntity> get foodsList => [
      FoodEntity(
        image: AppAssets.imagesHomeFoods,
        name: 'Food',
      ),
      FoodEntity(
        image: AppAssets.imagesHomeTalabatMarts,
        name: 'Talabat Mart',
      ),
      FoodEntity(
        image: AppAssets.imagesHomeGroceries,
        name: 'Groceries',
      ),
    ];

List<FoodEntity> get drinksList => [
      FoodEntity(
        image: AppAssets.imagesHomeMedicine,
        name: 'Health & Wellness',
      ),
      FoodEntity(
        image: AppAssets.imagesHomeFlower,
        name: 'Flowers',
      ),
      FoodEntity(
        image: AppAssets.imagesHomeCoffee,
        name: 'Coffee',
      ),
      FoodEntity(
        image: AppAssets.imagesHomeMoreShops,
        name: 'More shops',
      ),
    ];

List<FoodEntity> get shortcutsList => [
      FoodEntity(
        image: AppAssets.imagesHomePastOrders,
        name: AppStrings.pastOrders,
      ),
      FoodEntity(
        image: AppAssets.imagesHomeMustTries,
        name: AppStrings.mustTries,
      ),
      FoodEntity(
        image: AppAssets.imagesHomeSuperSaver,
        name: AppStrings.superSaver,
      ),
      FoodEntity(
        image: AppAssets.imagesHomeGiveBack,
        name: AppStrings.giveBack,
      ),
      FoodEntity(
        image: AppAssets.imagesHomeBestSellers,
        name: AppStrings.bestSellers,
      ),
    ];
