import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class OfferUp extends StatelessWidget {
  const OfferUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSize.s4,
      children: [
        Image.asset(
          AppAssets.imagesFoodOfferup,
        ),
        FittedBox(
          child: Text(
            AppStrings.offerUp,
            style: AppStyles.styleRegular10(context).copyWith(
              color: AppColors.offerUpColor,
            ),
          ),
        ),
      ],
    );
  }
}
