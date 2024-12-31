import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/home_app_bar.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/features/basket/presentation/widgets/basket_view_body.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';

class BasketView extends StatelessWidget {
  const BasketView({
    super.key,
    required this.entity,
  });

  final AllRestaurantsEntity entity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BasketViewBody(
        entity: entity,
      ),
    );
  }

  HomeAppBar _buildAppBar(BuildContext context) {
    return HomeAppBar(
      isTitleCentred: true,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppStrings.basket,
            style: AppStyles.styleBold16(context),
          ),
          Text(
            '${entity.restaurantName} Restaurant (${entity.restaurantArea})',
            style: AppStyles.styleBold12(context).copyWith(
              color: AppColors.secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
