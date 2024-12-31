import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';

class RestaurantAboutEntity {
  final Widget icon;
  final String title;
  final String subtitle;

  RestaurantAboutEntity({
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}

List<RestaurantAboutEntity> restaurantAboutList(
  AllRestaurantsEntity restaurantsEntity,
  BuildContext context,
) {
  return [
    // Ratings
    RestaurantAboutEntity(
      icon: RatingBar.builder(
        initialRating: restaurantsEntity.rating.toDouble(),
        ignoreGestures: true,
        allowHalfRating: true,
        itemSize: AppSize.s20,
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: AppColors.starColor,
        ),
        onRatingUpdate: (value) {},
      ),
      title: '${restaurantsEntity.rating} ',
      subtitle: '${restaurantsEntity.numberOfRatings} Ratings',
    ),
    // Restaurant area
    RestaurantAboutEntity(
      icon: Icon(
        Icons.location_on,
        color: AppColors.secondaryColor,
        size: AppSize.s20,
      ),
      title: 'Restaurant area',
      subtitle: restaurantsEntity.restaurantArea!,
    ),
    // Opening hours
    RestaurantAboutEntity(
      icon: Icon(
        Icons.access_time,
        color: AppColors.secondaryColor,
        size: AppSize.s20,
      ),
      title: 'Opening hours',
      subtitle:
          '${restaurantsEntity.opening}AM - ${restaurantsEntity.closing}PM',
    ),

    // Delivery time
    RestaurantAboutEntity(
      icon: Icon(
        Icons.timer,
        color: AppColors.secondaryColor,
        size: AppSize.s20,
      ),
      title: 'Delivery time',
      subtitle: '${restaurantsEntity.deliveryTime} min',
    ),
    // Minimum order
    RestaurantAboutEntity(
      icon: Icon(
        Icons.wallet_rounded,
        color: AppColors.secondaryColor,
        size: AppSize.s20,
      ),
      title: 'Minimum order',
      subtitle: '${restaurantsEntity.miniumOrder} EGP',
    ),
    // Delivery fee
    RestaurantAboutEntity(
      icon: Icon(
        Icons.delivery_dining,
        color: AppColors.secondaryColor,
        size: AppSize.s20,
      ),
      title: 'Delivery fee',
      subtitle: '${restaurantsEntity.deliveryFee} EGP',
    ),
    // Pre-order
    RestaurantAboutEntity(
      icon: Icon(
        Icons.info_outlined,
        color: AppColors.secondaryColor,
        size: AppSize.s18,
      ),
      title: 'Pre-order',
      subtitle: restaurantsEntity.preOrder == true ? 'True' : 'False',
    ),
    // Payment options
    RestaurantAboutEntity(
      icon: Icon(
        Icons.payment,
        color: AppColors.secondaryColor,
        size: AppSize.s20,
      ),
      title: 'Payment options',
      subtitle: '${restaurantsEntity.paymentMethod}',
    ),
  ];
}
