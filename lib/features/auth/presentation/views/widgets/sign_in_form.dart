import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_button.dart';
import 'package:talabat_clone/features/auth/presentation/manager/auth_bloc/auth_bloc.dart';

import '../../../../../core/common/widgets/custom_text_form_field.dart';
import '../../../../../core/common/widgets/password_field.dart';
import '../../../../../core/utils/functions/app_validators.dart';
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
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

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
              return AppValidators.passwordForSignInValidator(value);
            },
          ),
          CustomOrangeButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                BlocProvider.of<AuthBloc>(context).add(
                  SignInEvent(
                    email: email,
                    password: password,
                  ),
                );
              } else {
                setState(() {
                  _autovalidateMode = AutovalidateMode.always;
                });
              }
            },
            title: AppStrings.signIn,
          ),
        ],
      ),
    );
  }
}
