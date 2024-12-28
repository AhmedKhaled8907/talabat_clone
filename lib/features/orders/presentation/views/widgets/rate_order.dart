import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class RateOrder extends StatelessWidget {
  const RateOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSize.s10),
      onTap: () {},
      child: Row(
        spacing: AppSize.s4,
        children: [
          Icon(
            Icons.tag_faces_sharp,
            color: AppColors.primaryColor,
            size: AppSize.s16,
          ),
          Text(
            "Rate order",
            style: AppStyles.styleRegular12(context).copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

