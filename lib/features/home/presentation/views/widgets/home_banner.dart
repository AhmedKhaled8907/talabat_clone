import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_button.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.4,
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: AppPadding.p48,
        left: AppPadding.p16,
        // right: AppPadding.p16,
      ),
      decoration: BoxDecoration(
        color: AppColors.primaryColorWithOpacity,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSize.s12,
        children: [
          // Text Section (Left Side)
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.deliveringTo,
                  style: AppStyles.styleMedium12(context),
                ),
                const SizedBox(height: AppSize.s8),
                _city(context),
                const SizedBox(height: AppSize.s24),
                Text(
                  AppStrings.hiThere,
                  style: AppStyles.styleBold16(context),
                ),
                const SizedBox(height: AppSize.s8),
                Text(
                  AppStrings.fasterOrdering,
                  style: AppStyles.styleMedium12(context),
                ),
                const SizedBox(height: AppSize.s8),
                SizedBox(
                  height: context.height * 0.065,
                  child: CustomOrangeButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRoutes.kSignInOptionsRoute);
                    },
                    title: AppStrings.signUp,
                  ),
                ),
                const SizedBox(height: AppSize.s16),
              ],
            ),
          ),
          // Image Section (Right Side)
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              AppAssets.imagesHomePhone,
              fit: BoxFit.fill,
              height: context.height * 0.25,
            ),
          ),
        ],
      ),
    );
  }

  Row _city(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          AppStrings.elMahalla,
          maxLines: 1,
          style: AppStyles.styleRegular16(context),
        ),
        const SizedBox(width: AppSize.s8),
        Transform.rotate(
          angle: -3.14 / 2,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: AppSize.s16,
          ),
        ),
      ],
    );
  }
}
