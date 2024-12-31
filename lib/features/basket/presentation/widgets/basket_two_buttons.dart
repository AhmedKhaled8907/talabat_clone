import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_border_button.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_button.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class BasketTwoButtons extends StatelessWidget {
  const BasketTwoButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: AppSize.s12,
      children: [
        Expanded(
          child: CustomOrangeBorderButton(
            onPressed: () {},
            title: AppStrings.addItems,
          ),
        ),
        Expanded(
          child: CustomOrangeButton(
            onPressed: () {},
            title: AppStrings.checkout,
          ),
        ),
      ],
    );
  }
}
