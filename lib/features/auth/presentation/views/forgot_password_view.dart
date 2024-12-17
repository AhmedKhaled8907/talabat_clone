import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

import 'widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p16),
          child: ForgotPasswordViewBody(),
        ),
      ),
    );
  }
}
