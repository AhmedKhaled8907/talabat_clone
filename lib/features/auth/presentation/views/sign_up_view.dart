import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_app_bar.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/features/auth/presentation/views/widgets/sign_up_bloc_consumer.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppStrings.welcome,
      ),
      body: SafeArea(
        child: SignUpBlocConsumer(),
      ),
    );
  }
}
