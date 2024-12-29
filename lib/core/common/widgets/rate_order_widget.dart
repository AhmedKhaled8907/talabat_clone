import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class RateOrderWidget extends StatelessWidget {
  const RateOrderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSize.s4),
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kRateOrderRoute);
      },
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
