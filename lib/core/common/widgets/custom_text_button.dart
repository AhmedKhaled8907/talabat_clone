import 'package:flutter/material.dart';

import '../../utils/resources/app_colors.dart';
import '../../utils/resources/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.style,
    required this.title,
  });

  final ButtonStyle? style;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: style,
      onPressed: () {},
      child: Text(
        title,
        style: AppStyles.styleMedium14(context).copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
