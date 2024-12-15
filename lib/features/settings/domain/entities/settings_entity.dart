import 'package:talabat_clone/core/utils/resources/app_strings.dart';

class SettingsEntity {
  final String title;
  final String? subtitle;

  SettingsEntity({
    required this.title,
    this.subtitle,
  });
}

final List<SettingsEntity> settingsList = [
  SettingsEntity(
    title: AppStrings.notifications,
    subtitle: AppStrings.notificationEnabled,
  ),
  SettingsEntity(
    title: AppStrings.language,
    subtitle: AppStrings.english,
  ),
  SettingsEntity(
    title: AppStrings.country,
    subtitle: AppStrings.egypt,
  ),
  SettingsEntity(
    title: AppStrings.signIn,
  ),
];
