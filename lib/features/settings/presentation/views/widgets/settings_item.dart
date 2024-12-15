import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_divider.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/settings/domain/entities/settings_entity.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    super.key,
    required this.entity,
  });

  final SettingsEntity entity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p16,
            vertical: AppPadding.p16,
          ),
          child: Row(
            children: [
              Text(
                entity.title,
                style: AppStyles.styleMedium14(context),
              ),
              Spacer(),
              Text(
                entity.subtitle ?? '',
                style: AppStyles.styleMedium14(context).copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
              const SizedBox(width: AppSize.s8),
              InkWell(
                borderRadius: BorderRadius.circular(AppSize.s8),
                onTap: () {},
                child: Transform.flip(
                  flipX: true,
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: AppSize.s16,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomDivider(),
      ],
    );
  }
}
