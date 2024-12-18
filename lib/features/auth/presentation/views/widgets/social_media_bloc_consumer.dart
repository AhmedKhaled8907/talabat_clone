import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/utils/functions/show_snack_bar.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';

import '../../../../../core/common/widgets/social_button.dart';
import '../../../../../core/utils/resources/app_assets.dart';
import '../../../../../core/utils/resources/app_strings.dart';
import '../../manager/auth_bloc/auth_bloc.dart';

class SocialMediaBlocConsumer extends StatelessWidget {
  const SocialMediaBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      if (state is AuthSuccess) {
        GoRouter.of(context).pushReplacement(AppRoutes.kHomeRoute);
      } else if (state is AuthFailure) {
        showSnackbar(
          context,
          message: state.message,
        );
      }
    }, builder: (context, state) {
      return Column(
        children: [
          _google(context),
          _facebook(context),
          _apple(context),
        ],
      );
    });
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
}
