import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/common/widgets/social_button.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class SignInOptionsViewBody extends StatelessWidget {
  const SignInOptionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              AppAssets.imagesSplashLogoOrange,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: AppSize.s10),
          Text(
            AppStrings.everyday,
            style: AppStyles.styleBold14(context).copyWith(
              color: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(height: AppSize.s24),
          Image.asset(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.3,
            AppAssets.imagesAuthStart,
            fit: BoxFit.fill,
          ),
          Text(
            AppStrings.loginOrSignUp,
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(height: AppSize.s10),
          Text(
            AppStrings.receiveRewards,
            textAlign: TextAlign.center,
            style: AppStyles.styleMedium12(context).copyWith(
              color: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(height: AppSize.s24),
          SocialButton(
            icon: AppAssets.imagesAuthGoogle,
            title: AppStrings.continueWithGoogle,
            onTap: () {},
          ),
          SocialButton(
            icon: AppAssets.imagesAuthFacebook,
            title: AppStrings.continueWithFacebook,
            onTap: () {},
          ),
          SocialButton(
            icon: AppAssets.imagesAuthApple,
            title: AppStrings.continueWithApple,
            onTap: () {},
          ),
          SocialButton(
            icon: AppAssets.imagesAuthBaselineEmail,
            title: AppStrings.continueWithEmail,
            onTap: () {
              GoRouter.of(context).push(
                AppRoutes.kSignInRoute,
              );
            },
          ),
          const SizedBox(height: AppSize.s24),
          
        ],
      ),
    );
  }
}
