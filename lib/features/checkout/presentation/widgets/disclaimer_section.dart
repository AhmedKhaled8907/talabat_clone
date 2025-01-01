import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class DisclaimerSection extends StatelessWidget {
  const DisclaimerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSize.s8,
      children: [
        Text(
          AppStrings.disclaimer,
          style: AppStyles.styleMedium14(context),
        ),
        Text(
          AppStrings.deliveredByUs,
          style: AppStyles.styleMedium14(context),
        ),
      ],
    );
  }
}
