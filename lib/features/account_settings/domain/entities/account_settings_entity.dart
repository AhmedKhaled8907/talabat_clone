import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';

class AccountSettingsEntity {
  final String title;
  final String icon;

  AccountSettingsEntity({
    required this.title,
    required this.icon,
  });
}

final List<AccountSettingsEntity> accountSettingsList = [
  AccountSettingsEntity(
    title: AppStrings.yourOrders,
    icon: AppAssets.imagesSettingsOffers,
  ),
  AccountSettingsEntity(
    title: AppStrings.offers,
    icon: AppAssets.imagesSettingsOffers,
  ),
  AccountSettingsEntity(
    title: AppStrings.notifications,
    icon: AppAssets.imagesSettingsNotifications,
  ),
  AccountSettingsEntity(
    title: AppStrings.pay,
    icon: AppAssets.imagesSettingsTalabatPay,
  ),
  AccountSettingsEntity(
    title: AppStrings.help,
    icon: AppAssets.imagesSettingsGetHelp,
  ),
  AccountSettingsEntity(
    title: AppStrings.about,
    icon: AppAssets.imagesSettingsAboutApp,
  ),
];
