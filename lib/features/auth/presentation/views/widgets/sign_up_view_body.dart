import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/auth/presentation/views/widgets/sign_up_form.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p16),
      child: Column(
        spacing: AppSize.s12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.createAccount,
            style: AppStyles.styleBold20(context),
          ),
          SignUpForm(),
          Text.rich(
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
          ),
        ],
      ),
    );
  }
}
