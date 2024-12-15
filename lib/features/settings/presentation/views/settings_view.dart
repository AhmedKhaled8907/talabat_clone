import 'package:flutter/material.dart';
import 'package:talabat_clone/features/settings/presentation/views/widgets/settings_view_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SettingsViewBody(),
      ),
    );
  }
}
