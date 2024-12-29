import 'package:flutter/material.dart';
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
      padding: EdgeInsets.all(AppPadding.p12),
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
          InkWell(
            borderRadius: BorderRadius.circular(AppSize.s4),
            onTap: () {},
            child: Text(
              AppStrings.addPeople,
              style: AppStyles.styleBold12(context).copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
