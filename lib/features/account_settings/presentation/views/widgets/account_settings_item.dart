import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/account_settings/domain/entities/account_settings_entity.dart';

class AccountSettingsItem extends StatelessWidget {
  const AccountSettingsItem({
    super.key,
    required this.settingsEntity,
  });

  final AccountSettingsEntity settingsEntity;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p24,
      ),
      leading: SvgPicture.asset(
        settingsEntity.icon,
        fit: BoxFit.fill,
      ),
      title: Text(
        settingsEntity.title,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
