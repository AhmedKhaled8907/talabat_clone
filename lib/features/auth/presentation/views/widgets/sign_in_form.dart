import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_button.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';

import '../../../../../core/common/widgets/custom_text_field.dart';
import '../../../../../core/common/widgets/password_field.dart';
import '../../../../../core/utils/app_validators.dart';
import '../../../../../core/utils/resources/app_strings.dart';
import '../../../../../core/utils/resources/app_values.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    super.key,
  });

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final _autovalidateMode = AutovalidateMode.disabled;

  late String email, password;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: _autovalidateMode,
      key: _formKey,
      child: Column(
        spacing: AppSize.s16,
        children: [
          CustomTextFormField(
            onSaved: (value) {
              email = value!;
            },
            hintText: AppStrings.email,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              return AppValidators.emailValidator(value);
            },
          ),
          PasswordField(
            onSaved: (value) {
              password = value!;
            },
            validator: (value) {
              return null;
            },
          ),
          CustomOrangeButton(
            onPressed: () {},
            title: AppStrings.signIn,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.forgotPassword,
                style: AppStyles.styleBold14(context).copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
              Text(
                AppStrings.createAccount,
                style: AppStyles.styleBold14(context).copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
