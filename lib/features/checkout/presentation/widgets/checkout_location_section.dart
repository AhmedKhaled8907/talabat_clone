import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class CheckoutLocationSection extends StatelessWidget {
  const CheckoutLocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppSize.s10,
        ),
        border: Border.all(
          color: AppColors.black.withValues(
            alpha: AppSize.s0_25,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSize.s8,
        children: [
          AspectRatio(
            aspectRatio: 343 / 99,
            child: Image.asset(
              AppAssets.imagesFoodLocation,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p16,
            ).copyWith(
              bottom: AppPadding.p8,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: AppSize.s8,
              children: [
                Image.asset(
                  AppAssets.imagesFoodPin,
                  width: AppSize.s16,
                ),
                const SizedBox(width: AppSize.s8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: AppSize.s4,
                    children: [
                      Text(
                        AppStrings.alMuraqqabat,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.styleMedium14(context),
                      ),
                      Text(
                        AppStrings.alRigga,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.styleRegular12(context).copyWith(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      Text(
                        AppStrings.phoneNumber,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.styleRegular12(context).copyWith(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(AppSize.s4),
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.p4),
                    child: Text(
                      AppStrings.change,
                      style: AppStyles.styleMedium14(context).copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
