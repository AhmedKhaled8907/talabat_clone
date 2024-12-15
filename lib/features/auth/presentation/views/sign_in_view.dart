import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_app_bar.dart';
import 'package:talabat_clone/features/auth/presentation/views/widgets/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isTitleShown: false,
      ),
      body: SafeArea(
        child: SignInViewBody(),
      ),
    );
  }
}
