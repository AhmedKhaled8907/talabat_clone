import 'package:flutter/material.dart';

import '../../../../core/utils/resources/app_colors.dart';
import '../../../../core/utils/resources/app_strings.dart';
import '../../../../core/utils/resources/app_styles.dart';
import '../../../../core/utils/resources/app_values.dart';

class ExtrasSection extends StatelessWidget {
  const ExtrasSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.s4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.extras,
              style: AppStyles.styleBold16(context),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(AppSize.s8),
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p8,
                  vertical: AppPadding.p4,
                ),
                decoration: ShapeDecoration(
                  color: Color(0x7FD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s8),
                  ),
                ),
                child: Text(
                  AppStrings.optional,
                  style: AppStyles.styleMedium12(context).copyWith(
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        Text(
          AppStrings.max1,
          style: AppStyles.styleRegular12(context).copyWith(
            color: AppColors.blackWithOpacity,
          ),
        ),
        const SizedBox(height: AppSize.s16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.chili,
              style: AppStyles.styleRegular12(context).copyWith(
                color: AppColors.blackWithOpacity,
              ),
            ),
            Container(
              width: 16,
              height: 16,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
