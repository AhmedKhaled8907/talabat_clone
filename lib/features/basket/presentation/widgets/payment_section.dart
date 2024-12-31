import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';

import '../../../../core/utils/resources/app_strings.dart';
import '../../../../core/utils/resources/app_styles.dart';
import '../../../../core/utils/resources/app_values.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: AppSize.s16,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          spacing: AppSize.s16,
          children: [
            Text(
              AppStrings.paymentSummary,
              style: AppStyles.styleBold16(context),
            ),
            PaymentItem(
              title: AppStrings.subtotal,
              price: 100,
            ),
            PaymentItem(
              title: AppStrings.deliveryFee,
              price: 10,
              icon: Icons.info_outline_rounded,
            ),
            PaymentItem(
              title: AppStrings.serviceFee,
              price: 110,
              icon: Icons.info_outline_rounded,
            ),
            PaymentItem(
              title: AppStrings.totalAmount,
              price: 220,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(AppSize.s4),
              onTap: () {},
              child: Text(
                AppStrings.readMoreAboutFees,
                style: AppStyles.styleMedium14(context).copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
    required this.title,
    this.icon,
    required this.price,
  });

  final String title;
  final IconData? icon;
  final num price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: AppSize.s8,
      children: [
        FittedBox(
          child: Text(
            title,
            style: AppStyles.styleRegular12(context).copyWith(
              color: AppColors.black,
            ),
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
          style: AppStyles.styleBold12(context),
        ),
      ],
    );
  }
}
