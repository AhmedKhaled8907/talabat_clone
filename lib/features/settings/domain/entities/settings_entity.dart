import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';

import '../../../../core/utils/services/service_locator.dart';
import '../../../auth/domain/repos/auth_repo.dart';
import '../../../auth/presentation/manager/auth_bloc/auth_bloc.dart';

class SettingsEntity {
  final String title;
  final String? subtitle;
  final Function()? onTap;

  SettingsEntity({
    required this.title,
    this.subtitle,
    required this.onTap,
  });
}

List<SettingsEntity> settingsList(BuildContext context) {
  var isSignedIn = sl<AuthRepo>().isSignedIn();

  return [
    SettingsEntity(
      title: AppStrings.notifications,
      subtitle: AppStrings.notificationEnabled,
      onTap: () {},
    ),
    SettingsEntity(
      title: AppStrings.language,
      subtitle: AppStrings.english,
      onTap: () {},
    ),
    SettingsEntity(
      title: AppStrings.country,
      subtitle: AppStrings.egypt,
      onTap: () {},
    ),
    !isSignedIn
        ? SettingsEntity(
            title: AppStrings.signIn,
            onTap: () {
              GoRouter.of(context)
                  .pushReplacement(AppRoutes.kSignInOptionsRoute);
            },
          )
        : SettingsEntity(
            title: AppStrings.signOut,
            onTap: () {
              context.read<AuthBloc>().add(SignOutEvent());
              GoRouter.of(context)
                  .pushReplacement(AppRoutes.kSignInOptionsRoute);
            },
          ),
  ];
}
