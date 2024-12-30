import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/discount_row_items.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/group_order.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/restaurant_details_header.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/restaurant_details_tabs.dart';

class RestaurantDetailsViewBody extends StatelessWidget {
  const RestaurantDetailsViewBody({
    super.key,
    required this.entity,
  });

  final AllRestaurantsEntity entity;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        
        SliverToBoxAdapter(
          child: RestaurantDetailsHeader(entity: entity),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p16,
                ),
                child: Column(
                  spacing: AppSize.s16,
                  children: [
                    SizedBox(),
                    GroupOrder(),
                    DiscountRowItems(),
                    SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: RestaurantDetailsTabs(),
        )
      ],
    );
  }
}
