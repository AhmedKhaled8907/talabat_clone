import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:uuid/uuid.dart';

class AllRestaurantsEntity {
  final String image;
  final String backgroundImage;
  final Color? backgroundColor;
  final String name;
  final String description;
  final num rating;
  final num numberOfRatings;
  final num deliveryTime;
  final num price;
  final bool isExceptional;
  final bool isOffItems;

  AllRestaurantsEntity({
    required this.image,
    required this.backgroundImage,
    this.backgroundColor = Colors.white,
    required this.name,
    required this.description,
    required this.rating,
    required this.numberOfRatings,
    required this.deliveryTime,
    required this.price,
    required this.isExceptional,
    required this.isOffItems,
  });
}

final Uuid uuid = Uuid();

List<AllRestaurantsEntity> get allRestaurantsList => [
      AllRestaurantsEntity(
        image: AppAssets.imagesFoodMandarinOak,
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
        name: 'Mandarin Oak',
        description: 'Chinese, Thai, Asian, Noodles, Dumplings',
        rating: 4.7,
        numberOfRatings: 1666,
        deliveryTime: 24,
        price: 250,
        isExceptional: true,
        isOffItems: true,
        backgroundColor: Color(0xffda232b),
      ),
      AllRestaurantsEntity(
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
        image: AppAssets.imagesFoodJuniorSeafood,
        name: 'Junior Seafood, Jumeirah 3',
        description: 'Thai, International, Continental',
        rating: 4.4,
        numberOfRatings: 1000,
        deliveryTime: 40,
        price: 150,
        isExceptional: false,
        isOffItems: false,
      ),
      AllRestaurantsEntity(
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
        image: AppAssets.imagesFoodSushiCounter,
        backgroundColor: Color(0xff4D5A90),
        name: 'Sushi Counter, Business Bay 4',
        description: 'Sushi, Japanese, Seafood',
        rating: 4.5,
        numberOfRatings: 99,
        deliveryTime: 35,
        price: 250,
        isExceptional: false,
        isOffItems: true,
      ),
      AllRestaurantsEntity(
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
        image: AppAssets.imagesFoodPizza2Go,
        name: 'Pizza 2 Go',
        description: 'Pizza, Pasta, Healthy',
        rating: 4.3,
        numberOfRatings: 19,
        deliveryTime: 29,
        price: 175,
        isExceptional: true,
        isOffItems: false,
      ),
      AllRestaurantsEntity(
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
        image: AppAssets.imagesFoodPapparoti,
        backgroundColor: Color(0xffB7D3A3),
        name: 'Papparoti',
        description: 'Beverages, Arabic sweets, Desserts',
        rating: 4.3,
        numberOfRatings: 75,
        deliveryTime: 29,
        price: 175,
        isExceptional: false,
        isOffItems: false,
      ),
      AllRestaurantsEntity(
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
        image: AppAssets.imagesFoodSubway,
        name: 'Subway',
        description: 'Sandwiches, Fast Food',
        rating: 4.3,
        numberOfRatings: 250,
        deliveryTime: 20,
        price: 75,
        isExceptional: true,
        isOffItems: true,
      ),
    ];

List<AllRestaurantsEntity> get popularRestaurantsList => [
      AllRestaurantsEntity(
        name: AppStrings.alloBeirut,
        image: AppAssets.imagesHomeAlloBeirut,
        deliveryTime: 15,
        description: '',
        isExceptional: false,
        isOffItems: false,
        numberOfRatings: 20,
        price: 150,
        rating: 4.7,
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
      ),
      AllRestaurantsEntity(
        name: AppStrings.laffah,
        image: AppAssets.imagesHomeLaffah,
        deliveryTime: 25,
        description: '',
        isExceptional: false,
        isOffItems: false,
        numberOfRatings: 20,
        price: 150,
        rating: 4.7,
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
      ),
      AllRestaurantsEntity(
        name: AppStrings.falafil,
        image: AppAssets.imagesHomeFalafil,
        deliveryTime: 45,
        description: '',
        isExceptional: false,
        isOffItems: false,
        numberOfRatings: 20,
        price: 150,
        rating: 4.7,
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
      ),
      AllRestaurantsEntity(
        name: AppStrings.barbar,
        image: AppAssets.imagesHomeBarbar,
        deliveryTime: 35,
        description: '',
        isExceptional: false,
        isOffItems: false,
        numberOfRatings: 20,
        price: 150,
        rating: 4.7,
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
      ),
    ];
