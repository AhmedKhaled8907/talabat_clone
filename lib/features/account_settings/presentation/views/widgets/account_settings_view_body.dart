import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_divider.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/account_settings/domain/entities/account_settings_entity.dart';
import 'package:talabat_clone/features/account_settings/presentation/views/widgets/account_settings_app_bar.dart';
import 'package:talabat_clone/features/account_settings/presentation/views/widgets/account_settings_item.dart';

class AccountSettingsViewBody extends StatelessWidget {
  const AccountSettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p16,
      ),
      child: Column(
        children: [
          AccountSettingsAppBar(),
          CustomDivider(),
          Column(
            children: accountSettingsList
                .map((e) => AccountSettingsItem(
                      settingsEntity: e,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
