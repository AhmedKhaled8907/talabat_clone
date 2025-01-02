import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_button.dart';
import 'package:talabat_clone/core/common/widgets/payment_section.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/checkout/presentation/widgets/card_details_section.dart';
import 'package:talabat_clone/features/checkout/presentation/widgets/checkout_location_section.dart';
import 'package:talabat_clone/features/checkout/presentation/widgets/disclaimer_section.dart';
import 'package:talabat_clone/features/checkout/presentation/widgets/pay_with_section.dart';
import 'package:talabat_clone/features/checkout/presentation/widgets/reward_your_rider_section.dart';
import 'package:talabat_clone/features/checkout/presentation/widgets/within_section.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({
    super.key,
    required this.entity,
  });

  final AllRestaurantsEntity entity;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(
          AppPadding.p16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppSize.s16,
          children: [
            CheckoutLocationSection(),
            WithinSection(
              entity: entity,
            ),
            RewardYourRiderSection(),
            PayWithSection(),
            PaymentSection(),
            DisclaimerSection(),
            CustomOrangeButton(
              title: AppStrings.payNow,
              onPressed: () {
                enterCardDetailsSection(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
