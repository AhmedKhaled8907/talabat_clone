import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class ProWidget extends StatelessWidget {
  const ProWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSize.s4),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p8,
          vertical: AppPadding.p4,
        ),
        decoration: BoxDecoration(
          color: AppColors.proColor,
          borderRadius: BorderRadius.circular(AppSize.s4),
        ),
        child: Row(
          spacing: AppSize.s8,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSize.s4),
              child: Image.asset(
                AppAssets.imagesFoodPro,
                fit: BoxFit.fill,
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                AppStrings.freeDelivery,
                style: AppStyles.styleBold10(context).copyWith(
                  color: AppColors.proTextColor,
                ),
              ),
            ),
            Spacer(),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                AppStrings.subscribe,
                style: AppStyles.styleBold10(context).copyWith(
                  color: AppColors.proTextColor,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: AppSize.s12,
            ),
          ],
        ),
      ),
    );
  }
}
