import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/auth/presentation/views/widgets/privacy_policy_text.dart';
import 'package:talabat_clone/features/auth/presentation/views/widgets/sign_up_form.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppSize.s16,
          children: [
            Text(
              AppStrings.createAccount,
              style: AppStyles.styleBold20(context),
            ),
            const SignUpForm(),
            PrivacyPolicyText(),
          ],
        ),
      ),
    );
  }
}
