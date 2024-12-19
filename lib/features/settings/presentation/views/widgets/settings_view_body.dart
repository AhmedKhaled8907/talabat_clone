import 'package:flutter/material.dart';
import 'package:talabat_clone/features/settings/domain/entities/settings_entity.dart';
import 'package:talabat_clone/features/settings/presentation/views/widgets/settings_item.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: settingsList(context)
          .map(
            (e) => SettingsItem(entity: e ),
          )
          .toList(),
    );
  }
}
