import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/core/utils/services/service_locator.dart';
import 'package:talabat_clone/features/auth/domain/repos/auth_repo.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async {
    Future.delayed(const Duration(seconds: AppDuration.d3), () async {
      var isSignedIn = sl<AuthRepo>().isSignedIn();

      if (isSignedIn) {
        if (mounted) {
          await GoRouter.of(context).pushReplacement(
            AppRoutes.kMainRoute,
          );
        }
      } else {
        if (mounted) {
          await GoRouter.of(context).pushReplacement(
            AppRoutes.kSignInOptionsRoute,
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        AppAssets.imagesSplashSplashLogo,
        fit: BoxFit.fill,
      ),
    );
  }
}
