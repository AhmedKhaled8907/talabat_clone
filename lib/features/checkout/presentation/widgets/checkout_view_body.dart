import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/checkout/presentation/widgets/checkout_location_section.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(
          AppPadding.p16,
        ),
        child: Column(
          spacing: AppSize.s16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckoutLocationSection(),
            // CheckoutOrderSummarySection(),
            // CheckoutPaymentSection(),
            // CheckoutDeliverySection(),
            // CheckoutPromoCodeSection(),
            // CheckoutOrderButton(),
          ],
        ),
      ),
    );
  }
}
