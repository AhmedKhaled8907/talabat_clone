import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/app_colors.dart';
import '../../../../../core/utils/resources/app_strings.dart';
import '../../../../../core/utils/resources/app_styles.dart';

class PrivacyPolicyText extends StatelessWidget {
  const PrivacyPolicyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: AppStrings.byCreating,
        style: AppStyles.styleMedium14(context),
        recognizer: TapGestureRecognizer()..onTap = () {},
        children: [
          TextSpan(
            text: AppStrings.privacyPolicy,
            style: AppStyles.styleMedium14(context).copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          TextSpan(
            text: AppStrings.and,
            style: AppStyles.styleMedium14(context),
          ),
          TextSpan(
            text: AppStrings.termsOfUse,
            style: AppStyles.styleMedium14(context).copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
