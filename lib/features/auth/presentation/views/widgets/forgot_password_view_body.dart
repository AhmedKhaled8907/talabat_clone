import 'package:flutter/material.dart';

import '../../../../../core/common/widgets/custom_orange_button.dart';
import '../../../../../core/common/widgets/custom_text_field.dart';
import '../../../../../core/utils/app_validators.dart';
import '../../../../../core/utils/resources/app_strings.dart';
import '../../../../../core/utils/resources/app_values.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.s24,
      children: [
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
    );
  }
}
