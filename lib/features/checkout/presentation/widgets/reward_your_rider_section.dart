import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class RewardYourRiderSection extends StatelessWidget {
  const RewardYourRiderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16).copyWith(
        bottom: AppPadding.p16,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.black.withValues(
            alpha: AppSize.s0_25,
          ),
        ),
        borderRadius: BorderRadius.circular(
          AppSize.s10,
        ),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.asset(
              AppAssets.imagesFoodPerson,
              fit: BoxFit.fill,
            ),
            title: Row(
              spacing: AppSize.s4,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    AppStrings.rewardYourRider,
                    style: AppStyles.styleMedium14(context),
                  ),
                ),
                Icon(
                  Icons.info_outlined,
                  size: AppSize.s16,
                ),
              ],
            ),
            subtitle: Text(
              AppStrings.yourRiderKeeps,
              style: AppStyles.styleMedium12(context).copyWith(
                color: AppColors.secondaryColor,
              ),
            ),
          ),
          Row(
            spacing: AppSize.s8,
            children: [
              Expanded(
                child: RewardYourRiderItem(
                  title: AppStrings.egp10,
                  image: AppAssets.imagesFoodIcecream,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: RewardYourRiderItem(
                  title: AppStrings.egp20,
                  onTap: () {},
                  image: AppAssets.imagesFoodFries,
                ),
              ),
              Expanded(
                child: RewardYourRiderItem(
                  title: AppStrings.other,
                  onTap: () {},
                  image: AppAssets.imagesFoodPen,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RewardYourRiderItem extends StatelessWidget {
  const RewardYourRiderItem({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
  });

  final String title;
  final String image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(
        AppSize.s10,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p8,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.black.withValues(
              alpha: AppSize.s0_25,
            ),
          ),
          borderRadius: BorderRadius.circular(
            AppSize.s10,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: AppSize.s4,
          children: [
            Text(
              title,
              style: AppStyles.styleMedium12(context),
            ),
            Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
