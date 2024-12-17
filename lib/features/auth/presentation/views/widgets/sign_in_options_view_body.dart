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

import 'social_media_bloc_consumer.dart';

class SignInOptionsViewBody extends StatelessWidget {
  const SignInOptionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: AppSize.s24),
          _logo(),
          const SizedBox(height: AppSize.s10),
          Text(
            AppStrings.everyday,
            style: AppStyles.styleBold14(context).copyWith(
              color: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(height: AppSize.s48),
          _image(context),
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
          const SizedBox(height: AppSize.s48),
          SocialMediaBlocConsumer(),
          _email(context),
          const SizedBox(height: AppSize.s24),
        ],
      ),
    );
  }

  Widget _image(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375 / 256,
      child: Image.asset(
        width: double.infinity,
        // height: MediaQuery.sizeOf(context).height * 0.4,
        AppAssets.imagesAuthStart,
        fit: BoxFit.fill,
      ),
    );
  }

  Center _logo() {
    return Center(
      child: SvgPicture.asset(
        AppAssets.imagesSplashLogoOrange,
        fit: BoxFit.fill,
      ),
    );
  }

  SocialButton _email(BuildContext context) {
    return SocialButton(
      icon: AppAssets.imagesAuthBaselineEmail,
      title: AppStrings.continueWithEmail,
      onTap: () {
        GoRouter.of(context).push(
          AppRoutes.kSignInRoute,
        );
      },
    );
  }

}