import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/auth_app_bar.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/restaurant_about_view_body.dart';

class RestaurantAboutView extends StatelessWidget {
  const RestaurantAboutView({
    super.key,
    required this.restaurantsEntity,
  });

  final AllRestaurantsEntity restaurantsEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(),
      body: RestaurantAboutViewBody(
        restaurantsEntity: restaurantsEntity,
      ),
    );
  }
}
