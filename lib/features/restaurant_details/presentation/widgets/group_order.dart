import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_text_button.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class GroupOrder extends StatelessWidget {
  const GroupOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s10),
        border: Border.all(
          color: AppColors.black.withValues(
            alpha: AppSize.s0_25,
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            AppStrings.startAGroupOrder,
            style: AppStyles.styleBold12(context),
          ),
          Spacer(),
          CustomTextButton(
            title: AppStrings.addPeople,
          ),
        ],
      ),
    );
  }
}
