import 'package:flutter/material.dart';
import 'package:talabat_clone/features/account_settings/presentation/views/widgets/account_settings_view_body.dart';

class AccountSettingsView extends StatelessWidget {
  const AccountSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AccountSettingsViewBody(),
      ),
    );
  }
}
