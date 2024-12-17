import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';

import '../../../../../core/common/widgets/custom_orange_button.dart';
import '../../../../../core/common/widgets/custom_text_form_field.dart';
import '../../../../../core/utils/functions/app_validators.dart';
import '../../../../../core/utils/resources/app_strings.dart';
import '../../../../../core/utils/resources/app_values.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: AppSize.s24,
        children: [
          Text(
            AppStrings.forgotPasswordView,
            style: AppStyles.styleBold20(context),
          ),
          CustomTextFormField(
            hintText: AppStrings.email,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              return AppValidators.emailValidator(value);
            },
          ),
          CustomOrangeButton(
            onPressed: () {},
            title: AppStrings.resetPassword,
          ),
        ],
      ),
    );
  }
}
