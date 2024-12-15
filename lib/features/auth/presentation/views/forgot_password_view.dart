import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_app_bar.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

import 'widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppStrings.forgotPasswordView,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p16),
          child: ForgotPasswordViewBody(),
        ),
      ),
    );
  }
}

