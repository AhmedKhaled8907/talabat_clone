import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_button.dart';
import 'package:talabat_clone/features/auth/presentation/views/widgets/offers_checkbox.dart';

import '../../../../../core/common/widgets/custom_text_field.dart';
import '../../../../../core/common/widgets/password_field.dart';
import '../../../../../core/utils/app_validators.dart';
import '../../../../../core/utils/resources/app_strings.dart';
import '../../../../../core/utils/resources/app_values.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _autovalidateMode = AutovalidateMode.disabled;

  late String email, password, firstName, lastName;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: _autovalidateMode,
      key: _formKey,
      child: Column(
        spacing: AppSize.s16,
        children: [
          CustomTextFormField(
            hintText: AppStrings.firstName,
            keyboardType: TextInputType.name,
            validator: (value) {
              return AppValidators.displayNameValidator(value);
            },
          ),
          CustomTextFormField(
            hintText: AppStrings.lastName,
            keyboardType: TextInputType.name,
            validator: (value) {
              return AppValidators.displayNameValidator(value);
            },
          ),
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
          OffersCheckbox(),
          CustomOrangeButton(
            onPressed: () {},
            title: AppStrings.createYourAccount,
          ),
        ],
      ),
    );
  }
}
