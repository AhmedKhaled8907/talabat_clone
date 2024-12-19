import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

import 'sign_in_form.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          spacing: AppSize.s24,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.continueWithEmail,
              style: AppStyles.styleBold20(context),
            ),
            SignInForm(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _forgotPassword(context),
                _createAccount(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  InkWell _createAccount(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSize.s8),
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kSignUpRoute);
      },
      child: Text(
        AppStrings.createAccount,
        style: AppStyles.styleBold14(context).copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }

  InkWell _forgotPassword(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSize.s8),
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kForgotPasswordRoute);
      },
      child: Text(
        AppStrings.forgotPassword,
        style: AppStyles.styleBold14(context).copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
