import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class SettingsListTileItem extends StatelessWidget {
  const SettingsListTileItem({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p24,
      ),
      leading: SvgPicture.asset(
        icon,
        fit: BoxFit.fill,
      ),
      title: Text(
        title,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
