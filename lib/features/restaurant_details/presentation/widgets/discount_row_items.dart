import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/discount_widget.dart';

class DiscountRowItems extends StatelessWidget {
  const DiscountRowItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSize.s16,
      children: [
        Expanded(
          child: DiscountWidget(
            title: AppStrings.off15,
            onTap: () {},
          ),
        ),
        Expanded(
          child: DiscountWidget(
            title: AppStrings.off10,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
