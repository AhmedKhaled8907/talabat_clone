import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/thin_divider.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/restaurant_details/domain/entities/restaurant_about_entity.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/restaurant_about_header.dart';

class RestaurantAboutViewBody extends StatelessWidget {
  const RestaurantAboutViewBody({
    super.key,
    required this.restaurantsEntity,
  });

  final AllRestaurantsEntity restaurantsEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
      child: Column(
        spacing: AppSize.s16,
        children: [
          RestaurantAboutHeader(
            restaurantsEntity: restaurantsEntity,
          ),
          RestaurantAboutList(
            restaurantsEntity: restaurantsEntity,
          ),
        ],
      ),
    );
  }
}

class RestaurantAboutList extends StatelessWidget {
  const RestaurantAboutList({
    super.key,
    required this.restaurantsEntity,
  });

  final AllRestaurantsEntity restaurantsEntity;

  @override
  Widget build(BuildContext context) {
    var list = restaurantAboutList(restaurantsEntity, context);

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      separatorBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left: AppPadding.p24),
          child: ThinDivider(),
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return RestaurantAboutItem(
          restaurantsEntity: restaurantsEntity,
          aboutEntity: list[index],
        );
      },
    );
  }
}

class RestaurantAboutItem extends StatelessWidget {
  const RestaurantAboutItem({
    super.key,
    required this.restaurantsEntity,
    required this.aboutEntity,
  });

  final AllRestaurantsEntity restaurantsEntity;
  final RestaurantAboutEntity aboutEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: AppSize.s12,
      children: [
        aboutEntity.icon,
        FittedBox(
          child: Text(
            aboutEntity.title,
            style: AppStyles.styleMedium12(context),
          ),
        ),
        const Spacer(),
        FittedBox(
          child: Text(
            aboutEntity.subtitle,
            style: AppStyles.styleMedium12(context).copyWith(
              color: AppColors.blackWithOpacity,
            ),
          ),
        ),
      ],
    );
  }
}
