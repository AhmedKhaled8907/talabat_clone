import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';

class SettingsEntity {
  final String title;
  final String icon;

  SettingsEntity({
    required this.title,
    required this.icon,
  });
}

final List<SettingsEntity> settingsList = [
  SettingsEntity(
    title: AppStrings.yourOrders,
    icon: AppAssets.imagesSettingsOffers,
  ),
  SettingsEntity(
    title: AppStrings.offers,
    icon: AppAssets.imagesSettingsOffers,
  ),
  SettingsEntity(
    title: AppStrings.notifications,
    icon: AppAssets.imagesSettingsNotifications,
  ),
  SettingsEntity(
    title: AppStrings.pay,
    icon: AppAssets.imagesSettingsTalabatPay,
  ),
  SettingsEntity(
    title: AppStrings.help,
    icon: AppAssets.imagesSettingsGetHelp,
  ),
  SettingsEntity(
    title: AppStrings.about,
    icon: AppAssets.imagesSettingsAboutApp,
  ),
];
