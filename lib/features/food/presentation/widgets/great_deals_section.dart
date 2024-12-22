import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/presentation/widgets/great_deals_list_item.dart';

class GreatDealsSection extends StatelessWidget {
  const GreatDealsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.s16,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.greatValue,
          style: AppStyles.styleBold16(context),
        ),
        GreatDealsListItem(),
      ],
    );
  }
}
