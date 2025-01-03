import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';

class AllRestaurantsEntity {
  final String image;
  final String backgroundImage;
  final Color? backgroundColor;
  final String name;
  final String restaurantName;
  final String description;
  final num rating;
  final num numberOfRatings;
  final num deliveryTime;
  final num price;
  final bool isExceptional;
  final bool isOffItems;
  final String? restaurantArea;
  final num? miniumOrder;
  final num? deliveryFee;
  final bool preOrder;
  final String? paymentMethod;
  final num? opening;
  final num? closing;

  AllRestaurantsEntity({
    required this.image,
    required this.backgroundImage,
    this.backgroundColor = Colors.white,
    required this.name,
    this.restaurantName = 'Mandarin Oak',
    required this.description,
    required this.rating,
    required this.numberOfRatings,
    required this.deliveryTime,
    required this.price,
    required this.isExceptional,
    required this.isOffItems,
    this.restaurantArea = 'Dubai Silicon Oasis',
    this.miniumOrder = 50,
    this.deliveryFee = 20,
    this.preOrder = true,
    this.paymentMethod = 'cash',
    this.opening = 10,
    this.closing = 3,
  });
}

List<AllRestaurantsEntity> get allRestaurantsList => [
      AllRestaurantsEntity(
        image: AppAssets.imagesFoodMandarinOak,
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
        name: 'Mandarin Oak',
        restaurantName: 'Mandarin Oak',
        description: 'Chinese, Thai, Asian, Noodles, Dumplings',
        rating: 3.2,
        numberOfRatings: 1666,
        deliveryTime: 24,
        price: 250,
        isExceptional: true,
        isOffItems: true,
        backgroundColor: Color(0xffda232b),
        restaurantArea: 'Dubai Silicon Oasis',
        miniumOrder: 50,
        deliveryFee: 20,
        preOrder: true,
        paymentMethod: 'cash',
        opening: 10,
        closing: 3,
      ),
      AllRestaurantsEntity(
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
        image: AppAssets.imagesFoodJunior,
        name: 'Junior Seafood, Jumeirah 3',
        description: 'Thai, International, Continental',
        rating: 3.5,
        numberOfRatings: 1000,
        deliveryTime: 40,
        price: 150,
        isExceptional: false,
        isOffItems: false,
        restaurantArea: 'Jumeirah',
        miniumOrder: 50,
        deliveryFee: 20,
        preOrder: true,
        paymentMethod: 'cash',
        opening: 10,
        closing: 3,
      ),
      AllRestaurantsEntity(
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
        image: AppAssets.imagesFoodSushi,
        name: 'Sushi Counter, Business Bay 4',
        restaurantName: 'Sushi Counter, Business Bay 4',
        description: 'Sushi, Japanese, Seafood',
        rating: 4.5,
        numberOfRatings: 99,
        deliveryTime: 35,
        price: 250,
        isExceptional: false,
        isOffItems: true,
        restaurantArea: 'Business Bay',
        miniumOrder: 50,
        deliveryFee: 20,
        preOrder: true,
        paymentMethod: 'cash',
        opening: 10,
        closing: 3,
      ),
      AllRestaurantsEntity(
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
        image: AppAssets.imagesFoodPizza2Go,
        name: 'Pizza 2 Go',
        restaurantName: 'Pizza 2 Go',
        description: 'Pizza, Pasta, Healthy',
        rating: 4.0,
        numberOfRatings: 19,
        deliveryTime: 29,
        price: 175,
        isExceptional: true,
        isOffItems: false,
        restaurantArea: 'Business Bay',
        miniumOrder: 50,
        deliveryFee: 20,
        preOrder: true,
        paymentMethod: 'cash',
        opening: 10,
      ),
      AllRestaurantsEntity(
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
        image: AppAssets.imagesFoodPapparoti,
        backgroundColor: Color(0xff4e3227),
        name: 'Papparoti',
        restaurantName: 'Papparoti',
        description: 'Beverages, Arabic sweets, Desserts',
        rating: 2.3,
        numberOfRatings: 75,
        deliveryTime: 29,
        price: 175,
        isExceptional: false,
        isOffItems: false,
        restaurantArea: 'Business Bay',
        miniumOrder: 50,
        deliveryFee: 20,
        preOrder: true,
        paymentMethod: 'cash',
        opening: 10,
        closing: 3,
      ),
      AllRestaurantsEntity(
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
        image: AppAssets.imagesFoodSubway,
        name: 'Subway',
        restaurantName: 'Subway',
        description: 'Sandwiches, Fast Food',
        rating: 4.3,
        numberOfRatings: 250,
        deliveryTime: 20,
        price: 75,
        isExceptional: true,
        isOffItems: true,
        restaurantArea: 'Business Bay',
        miniumOrder: 50,
        deliveryFee: 20,
        preOrder: true,
        paymentMethod: 'cash',
        opening: 10,
        closing: 3,
      ),
    ];

List<AllRestaurantsEntity> get popularRestaurantsList => [
      AllRestaurantsEntity(
        name: AppStrings.alloBeirut,
        restaurantName: AppStrings.alloBeirut,
        image: AppAssets.imagesHomeAlloBeirut,
        deliveryTime: 15,
        description: '',
        isExceptional: false,
        isOffItems: false,
        numberOfRatings: 20,
        price: 150,
        rating: 4.7,
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
        restaurantArea: 'Business Bay',
        miniumOrder: 50,
        deliveryFee: 20,
        preOrder: true,
        paymentMethod: 'cash',
        opening: 10,
        closing: 3,
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
        restaurantArea: 'Business Bay',
        miniumOrder: 50,
        deliveryFee: 20,
        preOrder: true,
        paymentMethod: 'cash',
        opening: 10,
        closing: 3,
      ),
      AllRestaurantsEntity(
        name: AppStrings.falafil,
        restaurantName: AppStrings.falafil,
        image: AppAssets.imagesHomeFalafil,
        deliveryTime: 45,
        description: '',
        isExceptional: false,
        isOffItems: false,
        numberOfRatings: 20,
        price: 150,
        rating: 4.7,
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
        restaurantArea: 'Business Bay',
        miniumOrder: 50,
        deliveryFee: 20,
        preOrder: true,
        paymentMethod: 'cash',
        opening: 10,
        closing: 3,
      ),
      AllRestaurantsEntity(
        name: AppStrings.barbar,
        restaurantName: AppStrings.barbar,
        image: AppAssets.imagesHomeBarbar,
        deliveryTime: 35,
        description: '',
        isExceptional: false,
        isOffItems: false,
        numberOfRatings: 20,
        price: 150,
        rating: 4.7,
        backgroundImage: AppAssets.imagesFoodRestaurantBackgroundImage,
        restaurantArea: 'Business Bay',
        miniumOrder: 50,
        deliveryFee: 20,
        preOrder: true,
        paymentMethod: 'cash',
        opening: 10,
        closing: 3,
      ),
    ];

List<AllRestaurantsEntity> get trendingList {
  return [
    AllRestaurantsEntity(
      backgroundImage: AppAssets.imagesFoodPartyStarter,
      image: AppAssets.imagesFoodPartyStarter,
      name: 'Chicken Fried Rice',
      restaurantName: 'Papparoti',
      description:
          'Golden fried Chicken pieces wok-tossed with hot and spicy fried rice with vegetables like green',
      rating: 4.3,
      numberOfRatings: 19,
      deliveryTime: 29,
      price: 175,
      isExceptional: true,
      isOffItems: false,
    ),
    AllRestaurantsEntity(
      backgroundImage: AppAssets.imagesFoodMealFor2,
      image: AppAssets.imagesFoodMealFor2,
      name: 'Chicken Chilli Basil Noodles',
      description:
          'Noodles wok-tossed with fried chicken, egg and vegetables with the added heat of chillies and fragrance of basil',
      rating: 4.3,
      numberOfRatings: 19,
      deliveryTime: 29,
      price: 150,
      isExceptional: true,
      isOffItems: false,
    ),
    AllRestaurantsEntity(
      backgroundImage: AppAssets.imagesFoodPartyStarter,
      image: AppAssets.imagesFoodPartyStarter,
      name: 'Chicken Fried Rice',
      description:
          'Golden fried Chicken pieces wok-tossed with hot and spicy fried rice with vegetables like green',
      rating: 4.3,
      numberOfRatings: 19,
      deliveryTime: 29,
      price: 175,
      isExceptional: true,
      isOffItems: false,
    ),
    AllRestaurantsEntity(
      backgroundImage: AppAssets.imagesFoodMealFor2,
      image: AppAssets.imagesFoodMealFor2,
      name: 'Chicken Chilli Basil Noodles',
      description:
          'Noodles wok-tossed with fried chicken, egg and vegetables with the added heat of chillies and fragrance of basil',
      rating: 4.3,
      numberOfRatings: 19,
      deliveryTime: 29,
      price: 150,
      isExceptional: true,
      isOffItems: false,
    ),
  ];
}

List<AllRestaurantsEntity> get freeSoupList {
  return [
    AllRestaurantsEntity(
      backgroundImage: AppAssets.imagesFoodPartyStarter,
      image: AppAssets.imagesFoodPartyStarter,
      name: 'Chicken Fried Rice',
      restaurantArea: 'Business Bay',
      description:
          'Golden fried Chicken pieces wok-tossed with hot and spicy fried rice with vegetables like green',
      rating: 4.3,
      numberOfRatings: 19,
      deliveryTime: 29,
      price: 175,
      isExceptional: true,
      isOffItems: false,
    ),
    AllRestaurantsEntity(
      backgroundImage: AppAssets.imagesFoodMealFor2,
      image: AppAssets.imagesFoodMealFor2,
      name: 'Chicken Chilli Basil Noodles',
      description:
          'Noodles wok-tossed with fried chicken, egg and vegetables with the added heat of chillies and fragrance of basil',
      rating: 4.3,
      numberOfRatings: 19,
      deliveryTime: 29,
      price: 150,
      isExceptional: true,
      isOffItems: false,
    ),
    AllRestaurantsEntity(
      backgroundImage: AppAssets.imagesFoodPartyStarter,
      image: AppAssets.imagesFoodPartyStarter,
      name: 'Chicken Fried Rice',
      description:
          'Golden fried Chicken pieces wok-tossed with hot and spicy fried rice with vegetables like green',
      rating: 4.3,
      numberOfRatings: 19,
      deliveryTime: 29,
      price: 175,
      isExceptional: true,
      isOffItems: false,
    ),
    AllRestaurantsEntity(
      backgroundImage: AppAssets.imagesFoodMealFor2,
      image: AppAssets.imagesFoodMealFor2,
      name: 'Chicken Chilli Basil Noodles',
      description:
          'Noodles wok-tossed with fried chicken, egg and vegetables with the added heat of chillies and fragrance of basil',
      rating: 4.3,
      numberOfRatings: 19,
      deliveryTime: 29,
      price: 150,
      isExceptional: true,
      isOffItems: false,
    ),
  ];
}

List<AllRestaurantsEntity> get startersList {
  return [
    AllRestaurantsEntity(
      backgroundImage: AppAssets.imagesFoodPartyStarter,
      image: AppAssets.imagesFoodPartyStarter,
      name: 'Chicken Fried Rice',
      restaurantName: 'Business Bay',
      description:
          'Golden fried Chicken pieces wok-tossed with hot and spicy fried rice with vegetables like green',
      rating: 4.3,
      numberOfRatings: 19,
      deliveryTime: 29,
      price: 175,
      isExceptional: true,
      isOffItems: false,
    ),
    AllRestaurantsEntity(
      backgroundImage: AppAssets.imagesFoodMealFor2,
      image: AppAssets.imagesFoodMealFor2,
      name: 'Chicken Chilli Basil Noodles',
      description:
          'Noodles wok-tossed with fried chicken, egg and vegetables with the added heat of chillies and fragrance of basil',
      rating: 4.3,
      numberOfRatings: 19,
      deliveryTime: 29,
      price: 150,
      isExceptional: true,
      isOffItems: false,
    ),
    AllRestaurantsEntity(
      backgroundImage: AppAssets.imagesFoodPartyStarter,
      image: AppAssets.imagesFoodPartyStarter,
      name: 'Chicken Fried Rice',
      description:
          'Golden fried Chicken pieces wok-tossed with hot and spicy fried rice with vegetables like green',
      rating: 4.3,
      numberOfRatings: 19,
      deliveryTime: 29,
      price: 175,
      isExceptional: true,
      isOffItems: false,
    ),
    AllRestaurantsEntity(
      backgroundImage: AppAssets.imagesFoodMealFor2,
      image: AppAssets.imagesFoodMealFor2,
      name: 'Chicken Chilli Basil Noodles',
      description:
          'Noodles wok-tossed with fried chicken, egg and vegetables with the added heat of chillies and fragrance of basil',
      rating: 4.3,
      numberOfRatings: 19,
      deliveryTime: 29,
      price: 150,
      isExceptional: true,
      isOffItems: false,
    ),
  ];
}
