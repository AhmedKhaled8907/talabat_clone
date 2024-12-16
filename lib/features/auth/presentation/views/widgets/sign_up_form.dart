import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_button.dart';
import 'package:talabat_clone/core/utils/functions/show_snack_bar.dart';
import 'package:talabat_clone/features/auth/presentation/manager/auth_bloc/auth_bloc.dart';
import 'package:talabat_clone/features/auth/presentation/views/widgets/offers_checkbox.dart';

import '../../../../../core/common/widgets/custom_text_form_field.dart';
import '../../../../../core/common/widgets/password_field.dart';
import '../../../../../core/utils/functions/app_validators.dart';
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
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  late String email, password, fullName;
  bool isChecked = false;

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
              fullName = value!;
            },
            hintText: AppStrings.fullName,
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
              return AppValidators.passwordValidator(value);
            },
          ),
          OffersCheckbox(
            onChanged: (value) {
              isChecked = value;
            },
          ),
          CustomOrangeButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                if (isChecked) {
                  context.read<AuthBloc>().add(
                        SignUpEvent(
                          email: email,
                          password: password,
                          name: fullName,
                        ),
                      );
                } else {
                  showSnackbar(
                    context,
                    message: 'Please accept the offers first.',
                  );
                }
              } else {
                setState(() {
                  _autovalidateMode = AutovalidateMode.always;
                });
              }
            },
            title: AppStrings.createYourAccount,
          ),
        ],
      ),
    );
  }
}
