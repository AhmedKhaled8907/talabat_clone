import 'package:flutter/material.dart';
import 'package:talabat_clone/features/auth/presentation/views/widgets/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: SafeArea(
        child: SignInViewBody(),
      ),
    );
  }
}
