import 'package:flutter/material.dart';

import 'widgets/sign_in_options_body.dart';

class SignInOptions extends StatelessWidget {
  const SignInOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SignInOptionsBody(),
      ),
    );
  }
}
