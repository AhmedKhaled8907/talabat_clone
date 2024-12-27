import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';

class FeaturedRestaurantHeader extends StatelessWidget {
  const FeaturedRestaurantHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        AppStrings.featuredRestaurants,
        style: AppStyles.styleBold16(context),
      ),
    );
  }
}
