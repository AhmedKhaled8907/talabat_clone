import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_button.dart';
import 'package:talabat_clone/features/home/presentation/views/widgets/home_search.dart';
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(AppSize.s20),
          bottomRight: Radius.circular(AppSize.s20),
        ),
        color: AppColors.primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
        ).copyWith(
          top: AppPadding.p32,
          bottom: AppPadding.p6,
        ),
        child: Column(
          spacing: AppSize.s12,
          children: [
            _city(context),
            Padding(
              padding: const EdgeInsets.symmetric().copyWith(
                bottom: AppPadding.p16,
              ),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRoutes.kSearchRoute);
                },
                child: SizedBox(
                  width: context.width,
                  child: HomeSearch(
                    title: AppStrings.searchForGroceries,
                  ),
                ),
              ),
            ),
          ],
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
        Text(
          AppStrings.elMahalla,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleMedium14(context).copyWith(
            color: AppColors.white,
          ),
        ),
        Transform.rotate(
          angle: -3.14 / 2,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: AppSize.s14,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
