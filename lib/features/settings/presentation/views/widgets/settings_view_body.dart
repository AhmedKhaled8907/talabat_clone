import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/settings/domain/entities/settings_entity.dart';
import 'package:talabat_clone/features/settings/presentation/views/widgets/settings_app_bar.dart';
import 'package:talabat_clone/features/settings/presentation/views/widgets/settings_list_tile_item.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p16,
      ),
      child: Column(
        children: [
          SettingsAppBar(),
          Divider(
            thickness: AppSize.s8,
            color: AppColors.dividerColor,
          ),
          Column(
            children: settingsList
                .map((e) => SettingsListTileItem(
                      icon: e.icon,
                      title: e.title,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
