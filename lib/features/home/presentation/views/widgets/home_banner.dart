import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_button.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/core/utils/services/service_locator.dart';
import 'package:talabat_clone/features/auth/domain/repos/auth_repo.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isSignedIn = sl<AuthRepo>().isSignedIn();

    return isSignedIn ? _signedIn(context) : _notSignedIn(context);
  }

  Widget _signedIn(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
        ).copyWith(
          top: AppPadding.p32,
          bottom: AppPadding.p16,
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            AppStrings.hiName,
            maxLines: 1,
            style: AppStyles.styleBold20(context).copyWith(
              color: AppColors.white,
            ),
          ),
          subtitle: _city(context),
          trailing: CircleAvatar(
            radius: AppSize.s48,
            backgroundColor: AppColors.secondaryColor.withValues(
              alpha: AppSize.s0_5,
            ),
            child: Text(
              'AK',
              style: AppStyles.styleBold16(context).copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _notSignedIn(BuildContext context) {
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
      spacing: AppSize.s8,
      children: [
        Icon(
          Icons.location_on,
          size: AppSize.s16,
          color: AppColors.secondaryColor,
        ),
        Text(
          AppStrings.elMahalla,
          maxLines: 1,
          style: AppStyles.styleMedium16(context).copyWith(
            color: AppColors.secondaryColor,
          ),
        ),
        Transform.rotate(
          angle: -3.14 / 2,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: AppSize.s16,
            color: AppColors.secondaryColor,
          ),
        ),
      ],
    );
  }
}
