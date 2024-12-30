import 'package:talabat_clone/core/utils/resources/app_assets.dart';

class FoodOffersEntity {
  final String image;
  final String name;

  FoodOffersEntity({
    required this.name,
    required this.image,
  });
}

List<FoodOffersEntity> get offersList => [
      FoodOffersEntity(
        image: AppAssets.imagesFood50Off,
        name: 'Super Saver',
      ),
      FoodOffersEntity(
        image: AppAssets.imagesFood30Off,
        name: 'Best Sellers',
      ),
      FoodOffersEntity(
        image: AppAssets.imagesFoodTalabatPro,
        name: 'Talabat Pro',
      ),
      FoodOffersEntity(
        image: AppAssets.imagesFoodMustTries,
        name: 'Must-tries ',
      ),
    ];
