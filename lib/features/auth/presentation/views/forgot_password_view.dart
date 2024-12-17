import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_app_bar.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/auth/presentation/views/widgets/forgot_password_bloc_consumer.dart';


class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: ForgotPasswordBlocConsumer(),
      ),
    );
  }
}

