import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/common/widgets/app_bar_icon.dart';
import 'package:talabat_clone/core/common/widgets/ratings_and_numbers.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/delivery_details_list.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/pro_widget.dart';

class RestaurantDetailsHeader extends StatelessWidget {
  const RestaurantDetailsHeader({
    super.key,
    required this.entity,
  });

  final AllRestaurantsEntity entity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.height * 0.42,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                height: context.height * 0.3,
                child: Image.asset(
                  width: double.infinity,
                  entity.backgroundImage,
                  fit: BoxFit.cover,
                ),
              ),
              _leadingIcons(context),
              _title(context),
            ],
          ),
        ),
      ],
    );
  }

  SafeArea _leadingIcons(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p8),
            child: AppBarIcon(
              onTap: () {
                Navigator.pop(context);
              },
              image: AppAssets.imagesFoodArrowForward,
            ),
          ),
          Row(
            children: [
              AppBarIcon(
                image: AppAssets.imagesFoodShare,
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p8,
                ),
                child: AppBarIcon(
                  image: AppAssets.imagesFoodCarbonSearch,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Positioned(
      top: context.height * 0.15,
      right: AppSize.s16,
      left: AppSize.s16,
      child: Container(
        height: context.height * 0.27,
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p12,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(AppSize.s10),
          border: Border.all(
            color: AppColors.black.withValues(
              alpha: AppSize.s0_25,
            ),
            width: AppSize.s1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppSize.s8,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    decoration: BoxDecoration(
                      color: entity.backgroundColor,
                      borderRadius: BorderRadius.circular(AppSize.s10),
                      border: entity.backgroundColor == AppColors.white
                          ? Border.all(
                              color: AppColors.grey,
                              width: AppSize.s1,
                            )
                          : null,
                    ),
                    child: AspectRatio(
                      aspectRatio: 72 / 65,
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(AppSize.s10),
                          child: Image.asset(
                            entity.image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: AppSize.s4,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          entity.name,
                          style: AppStyles.styleBold16(context),
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          entity.description,
                          style: AppStyles.styleBold10(context).copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                      ),
                      RatingAndNumbers(
                        rating: entity.rating,
                        numberOfRatings: entity.numberOfRatings,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRoutes.kRestaurantAboutRoute,
                      extra: entity,
                    );
                  },
                  borderRadius: BorderRadius.circular(AppSize.s10),
                  child: Image.asset(
                    AppAssets.imagesFoodAbout,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s12),
            DeliveryDetailsList(entity: entity),
            const SizedBox(height: AppSize.s12),
            // pro
            ProWidget(),
          ],
        ),
      ),
    );
  }
}
