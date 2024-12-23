import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/common/widgets/custom_loading_indicator.dart';
import 'package:talabat_clone/core/common/widgets/social_button.dart';
import 'package:talabat_clone/core/utils/functions/show_snack_bar.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/auth/presentation/manager/auth_bloc/auth_bloc.dart';

class SignInOptionsViewBody extends StatelessWidget {
  const SignInOptionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            GoRouter.of(context).pushReplacement(AppRoutes.kMainRoute);
          }
          if (state is AuthFailure) {
            showSnackbar(
              context,
              message: state.message,
            );
          }
        },
        builder: (context, state) {
          return CustomLoadingIndicator(
            isLoading: state is AuthLoading ? true : false,
            child: _body(context),
          );
        },
      ),
    );
  }

  Column _body(BuildContext context) {
    return Column(
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
        _google(context),
        _facebook(context),
        _apple(context),
        _email(context),
        const SizedBox(height: AppSize.s24),
      ],
    );
  }

  Widget _image(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375 / 256,
      child: Image.asset(
        width: double.infinity,
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

  SocialButton _google(BuildContext context) {
    return SocialButton(
      icon: AppAssets.imagesAuthGoogle,
      title: AppStrings.continueWithGoogle,
      onTap: () {
        context.read<AuthBloc>().add(GoogleEvent());
      },
    );
  }

  SocialButton _facebook(BuildContext context) {
    return SocialButton(
      icon: AppAssets.imagesAuthFacebook,
      title: AppStrings.continueWithFacebook,
      onTap: () {
        context.read<AuthBloc>().add(FacebookEvent());
      },
    );
  }

  SocialButton _apple(BuildContext context) {
    return SocialButton(
      icon: AppAssets.imagesAuthApple,
      title: AppStrings.continueWithApple,
      onTap: () {
        showSnackbar(
          context,
          message: AppStrings.appleComingSoon,
        );
      },
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
