import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_text_button.dart';
import 'package:talabat_clone/core/common/widgets/payment_item.dart';

import '../../utils/resources/app_strings.dart';
import '../../utils/resources/app_styles.dart';
import '../../utils/resources/app_values.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({
    super.key,
    this.isReadMoreShown = true,
  });

  final bool isReadMoreShown;

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
          children: [
            Text(
              AppStrings.paymentSummary,
              style: AppStyles.styleBold16(context),
            ),
            const SizedBox(height: AppSize.s16),
            PaymentItem(
              title: AppStrings.subtotal,
              price: 100,
            ),
            const SizedBox(height: AppSize.s16),
            PaymentItem(
              title: AppStrings.deliveryFee,
              price: 10,
              icon: Icons.info_outline_rounded,
            ),
            const SizedBox(height: AppSize.s16),
            PaymentItem(
              title: AppStrings.serviceFee,
              price: 110,
              icon: Icons.info_outline_rounded,
            ),
            const SizedBox(height: AppSize.s16),
            PaymentItem(
              title: AppStrings.totalAmount,
              titleStyle: AppStyles.styleBold14,
              priceStyle: AppStyles.styleBold14,
              price: 220,
            ),
            if (isReadMoreShown)
              CustomTextButton(
                title: AppStrings.readMoreAboutFees,
              ),
          ],
        ),
      ],
    );
  }
}
