import 'package:flutter/material.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/restaurant_details_header.dart';

class RestaurantDetailsViewBody extends StatelessWidget {
  const RestaurantDetailsViewBody({
    super.key,
    required this.entity,
  });

  final AllRestaurantsEntity entity;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: RestaurantDetailsHeader(entity: entity),
        ),
      ],
    );
  }
}
