import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/views/restaurant_details_list_view.dart';

class StartersView extends StatelessWidget {
  const StartersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: AppSize.s16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.s16),
          child: Text(
            AppStrings.starters,
            // maxLines: 2,
            style: AppStyles.styleBold16(context),
          ),
        ),
        Expanded(
          child: RestaurantDetailsListView(
            list: startersList,
          ),
        ),
        const SizedBox(
          height: AppSize.s16,
        ),
      ],
    );
  }
}
