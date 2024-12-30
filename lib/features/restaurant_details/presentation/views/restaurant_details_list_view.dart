import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/restaurant_details_tab_item.dart';

class RestaurantDetailsListView extends StatelessWidget {
  const RestaurantDetailsListView({
    super.key,
    required this.list,
  });

  final List<AllRestaurantsEntity> list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      itemCount: trendingList.length,
      itemBuilder: (context, index) => InkWell(
        borderRadius: BorderRadius.circular(AppSize.s8),
        onTap: () {
          GoRouter.of(context).push(
            AppRoutes.kItemDetailsRoute,
            extra: list[index],
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p16,
          ),
          child: RestaurantDetailsTabItem(
            entity: list[index],
          ),
        ),
      ),
      separatorBuilder: (context, index) => Divider(
        height: 32,
        thickness: AppSize.s0_5,
        color: AppColors.black.withValues(alpha: AppSize.s0_25),
      ),
    );
  }
}
