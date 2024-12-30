
import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_button.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

import '../../../../core/utils/resources/app_styles.dart';

class OftenOrderedItem extends StatelessWidget {
  const OftenOrderedItem({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  final String image;
  final String title;
  final num price;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 122 / 98,
            child: Center(
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            title,
            style: AppStyles.styleMedium14(context),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              '$price EGP',
              style: AppStyles.styleMedium14(context),
            ),
          ),
          CustomOrangeButton(
            height: AppSize.s36,
            onPressed: () {},
            title: AppStrings.add,
          ),
        ],
      ),
    );
  }
}
