import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/exceptional.dart';
import 'package:talabat_clone/core/common/widgets/offer_up.dart';
import 'package:talabat_clone/core/common/widgets/ratings_and_numbers.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/food/presentation/widgets/delivery_and_price.dart';

class AllRestaurantsItem extends StatelessWidget {
  const AllRestaurantsItem({
    super.key,
    required this.restaurant,
  });

  final AllRestaurantsEntity restaurant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: AppSize.s16,
        children: [
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 70 / 60,
              child: Container(
                padding: const EdgeInsets.all(AppSize.s8),
                decoration: BoxDecoration(
                  color: restaurant.backgroundColor,
                  borderRadius: BorderRadius.circular(AppSize.s10),
                  border: restaurant.backgroundColor == AppColors.white
                      ? Border.all(
                          color: AppColors.grey,
                          width: AppSize.s1,
                        )
                      : null,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppSize.s10),
                  child: Image.asset(
                    restaurant.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppSize.s4,
              children: [
                Text(
                  restaurant.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.styleBold14(context),
                ),
                Text(
                  restaurant.description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.styleMedium10(context).copyWith(
                    color: AppColors.grey,
                  ),
                ),
                Row(
                  spacing: AppSize.s8,
                  children: [
                    RatingAndNumbers(
                      rating: restaurant.rating,
                      numberOfRatings: restaurant.numberOfRatings,
                    ),
                    if (restaurant.isExceptional) Exceptional(),
                  ],
                ),
                DeliveryAndPrice(
                  deliveryTime: restaurant.deliveryTime,
                  price: restaurant.price,
                ),
                if (restaurant.isOffItems) OfferUp(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
