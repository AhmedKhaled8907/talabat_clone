import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:talabat_clone/core/common/widgets/custom_vertical_divider.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
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
              deliveredByTalabat(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: AppSize.s8,
              children: [
                SvgPicture.asset(
                  AppAssets.imagesFoodLogos,
                  fit: BoxFit.fill,
                ),
                Icon(
                  Icons.info_outlined,
                  color: AppColors.secondaryColor,
                  size: AppSize.s16,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
