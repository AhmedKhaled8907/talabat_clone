import 'package:flutter/material.dart';
// Import this for SystemChrome
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/restaurant_details_view_body.dart';

class RestaurantDetailsView extends StatelessWidget {
  const RestaurantDetailsView({
    super.key,
    required this.entity,
  });

  final AllRestaurantsEntity entity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RestaurantDetailsViewBody(
        entity: entity,
      ),
    );
  }
}
