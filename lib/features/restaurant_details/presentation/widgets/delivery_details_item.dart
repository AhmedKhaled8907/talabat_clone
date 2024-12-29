import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';

class DeliveryDetailsItem extends StatelessWidget {
  const DeliveryDetailsItem({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final Widget subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppStyles.styleMedium12(context).copyWith(
              color: AppColors.blackWithOpacity,
            ),
          ),
          subtitle,
        ],
      ),
    );
  }
}
