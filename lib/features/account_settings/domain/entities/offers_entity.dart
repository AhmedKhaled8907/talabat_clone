import 'package:talabat_clone/core/utils/resources/app_assets.dart';

class OffersEntity {
  final String image;
  final String discountPercent;
  final String validUntil;
  final String restaurantName;

  OffersEntity({
    required this.image,
    required this.discountPercent,
    required this.validUntil,
    required this.restaurantName,
  });
}

List<OffersEntity> get accountOffersList {
  return [
    OffersEntity(
      image: AppAssets.imagesSettingsRoseAvenue,
      discountPercent: 'Get 10% off on all orders',
      validUntil: '01 October, 2023',
      restaurantName: 'Rose Avenue Flowers & Gifts',
    ),
    OffersEntity(
      image: AppAssets.imagesFoodJunior,
      discountPercent: '10% off on all orders with 200 EGP or above.',
      validUntil: '01 October, 2023',
      restaurantName: 'Junior Seafood, Jumeirah 3',
    ),
    OffersEntity(
      image: AppAssets.imagesFoodSushi,
      discountPercent: '10% off on all orders with 200 EGP or above.',
      validUntil: '01 October, 2023',
      restaurantName: 'Sushi Counter, Business Bay 4',
    ),
    OffersEntity(
      image: AppAssets.imagesFoodPizza2Go,
      discountPercent: 'Get 20 % off on selected items',
      validUntil: '01 October, 2023',
      restaurantName: 'Pizza 2 Go',
    ),
    OffersEntity(
      image: AppAssets.imagesFoodSubway,
      discountPercent: 'Get 20 % off on selected items',
      validUntil: '01 October, 2023',
      restaurantName: 'Subway',
    ),
    OffersEntity(
      image: AppAssets.imagesSettingsRoseAvenue,
      discountPercent: 'Get 10% off on all orders',
      validUntil: '01 October, 2023',
      restaurantName: 'Rose Avenue Flowers & Gifts',
    ),
    OffersEntity(
      image: AppAssets.imagesFoodJunior,
      discountPercent: '10% off on all orders with 200 EGP or above.',
      validUntil: '01 October, 2023',
      restaurantName: 'Junior Seafood, Jumeirah 3',
    ),
    OffersEntity(
      image: AppAssets.imagesFoodSushi,
      discountPercent: '10% off on all orders with 200 EGP or above.',
      validUntil: '01 October, 2023',
      restaurantName: 'Sushi Counter, Business Bay 4',
    ),
    OffersEntity(
      image: AppAssets.imagesFoodPizza2Go,
      discountPercent: 'Get 20 % off on selected items',
      validUntil: '01 October, 2023',
      restaurantName: 'Pizza 2 Go',
    ),
    OffersEntity(
      image: AppAssets.imagesFoodSubway,
      discountPercent: 'Get 20 % off on selected items',
      validUntil: '01 October, 2023',
      restaurantName: 'Subway',
    ),
  ];
}
