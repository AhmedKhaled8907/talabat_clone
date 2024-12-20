import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/home/domain/entities/food_entity.dart';
import 'package:talabat_clone/features/home/presentation/views/widgets/shortcuts_widget.dart';

class ShortcutsListItem extends StatelessWidget {
  const ShortcutsListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.s16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.shortcuts,
          style: AppStyles.styleBold24(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppSize.s8,
          children: shortcutsList.map((shortcut) {
            return ShortcutsWidget(foodEntity: shortcut);
          }).toList(),
        ),
      ],
    );
  }
}
