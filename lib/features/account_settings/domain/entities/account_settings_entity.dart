import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';

class AccountSettingsEntity {
  final String title;
  final String icon;
  final void Function()? onTap;

  AccountSettingsEntity({
    required this.title,
    required this.icon,
    this.onTap,
  });
}

List<AccountSettingsEntity> accountSettingsList(BuildContext context) {
  return [
    AccountSettingsEntity(
      title: AppStrings.offers,
      icon: AppAssets.imagesSettingsOffers,
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kOffersRoute);
      },
    ),
    AccountSettingsEntity(
      title: AppStrings.notifications,
      icon: AppAssets.imagesSettingsNotifications,
      onTap: () {},
    ),
    AccountSettingsEntity(
      title: AppStrings.pay,
      icon: AppAssets.imagesSettingsTalabatPay,
      onTap: () {},
    ),
    AccountSettingsEntity(
      title: AppStrings.help,
      icon: AppAssets.imagesSettingsGetHelp,
      onTap: () {},
    ),
    AccountSettingsEntity(
      title: AppStrings.about,
      icon: AppAssets.imagesSettingsAboutApp,
      onTap: () {},
    ),
  ];
}
