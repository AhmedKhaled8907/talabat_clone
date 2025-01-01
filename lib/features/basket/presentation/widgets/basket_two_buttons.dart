import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_border_button.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_button.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';

class BasketTwoButtons extends StatelessWidget {
  const BasketTwoButtons({
    super.key,
    required this.entity,
  });

  final AllRestaurantsEntity entity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: AppSize.s12,
      children: [
        Expanded(
          child: CustomOrangeBorderButton(
            onPressed: () {},
            title: AppStrings.addItems,
          ),
        ),
        Expanded(
          child: CustomOrangeButton(
            onPressed: () {
              GoRouter.of(context).push(
                AppRoutes.kCheckoutRoute,
                extra: entity,
              );
            },
            title: AppStrings.checkout,
          ),
        ),
      ],
    );
  }
}
