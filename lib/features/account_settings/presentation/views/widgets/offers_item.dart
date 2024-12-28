import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/account_settings/domain/entities/offers_entity.dart';

class OffersItem extends StatelessWidget {
  const OffersItem({
    super.key,
    required this.offer,
  });

  final OffersEntity offer;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: AppSize.s10,
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 70 / 60,
            child: Container(
              padding: const EdgeInsets.all(AppSize.s0_5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.black.withValues(
                    alpha: 0.1,
                  ),
                ),
                borderRadius: BorderRadius.circular(AppSize.s10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.s10),
                child: Image.asset(
                  offer.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: GestureDetector(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: AppSize.s4,
              children: [
                Text(
                  offer.discountPercent,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.styleRegular12(context).copyWith(
                    color: AppColors.black,
                  ),
                ),
                Text(
                  'Valid until ${offer.validUntil}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.styleRegular12(context).copyWith(
                    color: AppColors.grey,
                  ),
                ),
                Text(
                  offer.restaurantName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.styleRegular12(context).copyWith(
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: AppPadding.p4),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.grey,
              size: AppSize.s16,
            ),
          ),
        ),
      ],
    );
  }
}
