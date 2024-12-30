import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';

class OftenOrderedEntity {
  final String image;
  final String title;
  final int price;

  OftenOrderedEntity({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<OftenOrderedEntity> oftenOrderedList = [
  OftenOrderedEntity(
    image: AppAssets.imagesFoodWater,
    title: AppStrings.water,
    price: 10,
  ),
  OftenOrderedEntity(
    image: AppAssets.imagesFoodCola,
    title: AppStrings.coke,
    price: 15,
  ),
  OftenOrderedEntity(
    image: AppAssets.imagesFoodWater,
    title: AppStrings.water,
    price: 10,
  ),
  OftenOrderedEntity(
    image: AppAssets.imagesFoodCola,
    title: AppStrings.coke,
    price: 15,
  ),
  OftenOrderedEntity(
    image: AppAssets.imagesFoodWater,
    title: AppStrings.water,
    price: 10,
  ),
  OftenOrderedEntity(
    image: AppAssets.imagesFoodCola,
    title: AppStrings.coke,
    price: 15,
  ),
];
