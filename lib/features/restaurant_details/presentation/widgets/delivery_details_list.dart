import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:talabat_clone/core/common/widgets/custom_vertical_divider.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/restaurant_details/domain/entities/delivered_by_entity.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/delivered_by_item.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/delivery_details_item.dart';

class DeliveryDetailsList extends StatelessWidget {
  const DeliveryDetailsList({
    super.key,
    required this.entity,
  });
  final AllRestaurantsEntity entity;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // delivery fee
        DeliveryDetailsItem(
          title: AppStrings.deliveryFee,
          subtitle: Text(
            '${entity.price} EGP',
            style: AppStyles.styleBold12(context),
          ),
        ),
        CustomVerticalDivider(),
        DeliveryDetailsItem(
          title: AppStrings.deliveryTime,
          subtitle: Text(
            '${entity.deliveryTime} min',
            style: AppStyles.styleBold12(context),
          ),
        ),
        CustomVerticalDivider(),
        DeliveryDetailsItem(
          title: AppStrings.deliveryBy,
          subtitle: GestureDetector(
            onTap: () {
              _deliveredByTalabat(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: AppSize.s8,
              children: [
                SvgPicture.asset(
                  AppAssets.imagesFoodLogos,
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  AppAssets.imagesFoodAbout,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<dynamic> _deliveredByTalabat(BuildContext context) async {
    return await showModalBottomSheet(
      backgroundColor: AppColors.white,
      isScrollControlled: true,
      elevation: 0,
      context: context,
      builder: (context) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _image(context),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          AppStrings.deliveredBy,
                          style: AppStyles.styleBold16(context),
                        ),
                        Center(
                          child: SvgPicture.asset(
                            AppAssets.imagesSplashLogoOrange,
                            height: AppSize.s14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSize.s8),
                    Text(
                      AppStrings.bestExperience,
                      style: AppStyles.styleMedium12(context),
                    ),
                    const SizedBox(height: AppSize.s16),
                    ...deliveredByList.map(
                      (e) => DeliveredByItem(
                        entity: e,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  GestureDetector _image(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSize.s24),
          topRight: Radius.circular(AppSize.s24),
        ),
        child: Image.asset(
          AppAssets.imagesFoodDeliveredByTalabat,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

}