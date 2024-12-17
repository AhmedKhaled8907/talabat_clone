import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/features/auth/presentation/manager/auth_bloc/auth_bloc.dart';

import '../../../../../core/common/widgets/custom_orange_button.dart';
import '../../../../../core/common/widgets/custom_text_form_field.dart';
import '../../../../../core/utils/functions/app_validators.dart';
import '../../../../../core/utils/resources/app_strings.dart';
import '../../../../../core/utils/resources/app_values.dart';

class ForgotPasswordViewBody extends StatefulWidget {
  const ForgotPasswordViewBody({
    super.key,
  });

  @override
  State<ForgotPasswordViewBody> createState() => _ForgotPasswordViewBodyState();
}

class _ForgotPasswordViewBodyState extends State<ForgotPasswordViewBody> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  late String email, password;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Form(
          key: _formKey,
          autovalidateMode: _autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppSize.s24,
            children: [
              Text(
                AppStrings.forgotPasswordView,
                style: AppStyles.styleBold20(context),
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
              CustomOrangeButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    context.read<AuthBloc>().add(
                          ResetPasswordEvent(
                            email: email,
                          ),
                        );
                  } else {
                    setState(() {
                      _autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                title: AppStrings.resetPassword,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
