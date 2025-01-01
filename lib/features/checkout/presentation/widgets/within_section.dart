import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_text_button.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';

class WithinSection extends StatelessWidget {
  const WithinSection({
    super.key,
    required this.entity,
  });

  final AllRestaurantsEntity entity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.black.withValues(
            alpha: AppSize.s0_25,
          ),
        ),
        borderRadius: BorderRadius.circular(
          AppSize.s10,
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p8,
        ),
        leading: Image.asset(
          AppAssets.imagesFoodClockLight,
          color: AppColors.black,
        ),
        title: Text(
          '${AppStrings.within} ${entity.deliveryTime} mins',
          style: AppStyles.styleMedium14(context),
        ),
        trailing: CustomTextButton(
          title: AppStrings.schedule,
        ),
      ),
    );
  }
}
