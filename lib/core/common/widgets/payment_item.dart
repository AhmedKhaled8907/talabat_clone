import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

import '../../utils/resources/app_styles.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
    required this.title,
    this.icon,
    required this.price,
    this.titleStyle = AppStyles.styleMedium12,
    this.priceStyle = AppStyles.styleBold12,
  });

  final String title;
  final IconData? icon;
  final num price;
  final TextStyle Function(BuildContext context) titleStyle;
  final TextStyle Function(BuildContext context) priceStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: AppSize.s8,
      children: [
        FittedBox(
          child: Text(
            title,
            style: titleStyle(context),
          ),
        ),
        Icon(
          icon,
          size: AppSize.s16,
          color: AppColors.secondaryColor,
        ),
        const Spacer(),
        Text(
          '$price EGP',
          style: priceStyle(context),
        ),
      ],
    );
  }
}
