import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_button.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/item_details/domain/entities/often_ordered_entity.dart';

import '../../../../core/utils/resources/app_styles.dart';

class OftenOrderedItem extends StatelessWidget {
  const OftenOrderedItem({
    super.key,
    required this.entity,
  });

  final OftenOrderedEntity entity;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 130 / 235,
      child: Container(
        padding: const EdgeInsets.all(AppPadding.p8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s8),
          border: Border.all(
            color: AppColors.blackWithOpacity.withValues(
              alpha: AppSize.s0_25,
            ),
          ),
        ),
        child: Column(
          spacing: AppSize.s12,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Center(
                child: Image.asset(
                  entity.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              entity.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.styleMedium14(context),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '${entity.price} EGP',
                style: AppStyles.styleMedium12(context),
              ),
            ),
            CustomOrangeButton(
              height: AppSize.s36,
              onPressed: () {},
              title: AppStrings.add,
            ),
          ],
        ),
      ),
    );
  }
}
