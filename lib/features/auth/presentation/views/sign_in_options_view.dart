import 'package:flutter/material.dart';

import 'widgets/sign_in_options_view_body.dart';

class SignInOptionsView extends StatelessWidget {
  const SignInOptionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SignInOptionsViewBody(),
      ),
    );
  }
}
