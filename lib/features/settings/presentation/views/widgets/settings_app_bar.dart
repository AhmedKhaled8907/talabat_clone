
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

import '../../../../../core/utils/resources/app_assets.dart';

class SettingsAppBar extends StatelessWidget {
  const SettingsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: AppSize.s40,
        height: AppSize.s40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primaryColor.withValues(
            alpha: AppSize.s0_25,
          ),
        ),
        child: Center(
          child: Text(
            'AK',
            style: AppStyles.styleBold16(context),
          ),
        ),
      ),
      title: Text(
        'Ahmed Khaled',
        style: AppStyles.styleBold16(context),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: AppSize.s8,
        children: [
          Text(
            'Egypt',
            style: AppStyles.styleMedium14(context).copyWith(
              color: AppColors.secondaryColor,
            ),
          ),
        ],
      ),
      trailing: InkWell(
        borderRadius: BorderRadius.circular(AppSize.s8),
        onTap: () {},
        child: SvgPicture.asset(
          AppAssets.imagesSettingsSettings,
        ),
      ),
    );
  }
}
