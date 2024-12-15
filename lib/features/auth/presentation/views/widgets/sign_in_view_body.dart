import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

import 'sign_in_form.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p16),
      child: Column(
        spacing: AppSize.s12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.continueWithEmail,
            style: AppStyles.styleBold20(context),
          ),
          SignInForm(),
        ],
      ),
    );
  }
}
