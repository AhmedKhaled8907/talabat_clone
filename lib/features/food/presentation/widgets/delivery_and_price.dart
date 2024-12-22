import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class DeliveryAndPrice extends StatelessWidget {
  const DeliveryAndPrice({
    super.key,
    required this.deliveryTime,
    required this.price,
  });

  final num deliveryTime;
  final num price;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: AppSize.s4,
      children: [
        Icon(
          Icons.access_time,
          color: AppColors.black,
          size: AppSize.s14,
        ),
        Text(
          '$deliveryTime mins',
          style: AppStyles.styleRegular12(context).copyWith(
            color: AppColors.black,
          ),
        ),
        Container(
          width: AppSize.s6,
          height: AppSize.s6,
          decoration: ShapeDecoration(
            color: Color(0xFFD9D9D9),
            shape: OvalBorder(),
          ),
        ),
        Icon(
          Icons.motorcycle,
          color: AppColors.black,
          size: AppSize.s14,
        ),
        Text(
          '$price EGP',
          textAlign: TextAlign.start,
          style: AppStyles.styleRegular12(context).copyWith(
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
