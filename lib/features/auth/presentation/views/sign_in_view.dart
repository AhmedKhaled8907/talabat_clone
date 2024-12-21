import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/auth_app_bar.dart';
import 'package:talabat_clone/features/auth/presentation/views/widgets/sign_in_bloc_consumer.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(
        isTitleShown: false,
      ),
      body: SafeArea(
        child: SignInBlocConsumer(),
      ),
    );
  }
}
