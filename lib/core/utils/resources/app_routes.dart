import 'package:go_router/go_router.dart';
import 'package:talabat_clone/features/auth/presentation/views/forgot_password_view.dart';
import 'package:talabat_clone/features/auth/presentation/views/sign_in_options_view.dart';
import 'package:talabat_clone/features/auth/presentation/views/sign_in_view.dart';
import 'package:talabat_clone/features/auth/presentation/views/sign_up_view.dart';
import 'package:talabat_clone/features/account_settings/presentation/views/account_settings_view.dart';
import 'package:talabat_clone/features/food/presentation/views/food_view.dart';
import 'package:talabat_clone/features/home/presentation/views/home_view.dart';
import 'package:talabat_clone/features/main/presentation/views/main_view.dart';
import 'package:talabat_clone/features/settings/presentation/views/settings_view.dart';
import 'package:talabat_clone/features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  // Routes
  static const kInitialRoute = '/';
  static const kSignInOptionsRoute = '/sign_in_options';
  static const kSignInRoute = '/sign_in';
  static const kForgotPasswordRoute = '/forgot_password';
  static const kSignUpRoute = '/sign_up';
  static const kAccountSettingsRoute = '/account_settings';
  static const kSettingsRoute = '/settings';
  static const kHomeRoute = '/home';
  static const kMainRoute = '/main';
  static const kFoodRoute = '/food';

  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: kInitialRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSignInOptionsRoute,
        builder: (context, state) => const SignInOptionsView(),
      ),
      GoRoute(
        path: kSignInRoute,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: kForgotPasswordRoute,
        builder: (context, state) => const ForgotPasswordView(),
      ),
      GoRoute(
        path: kSignUpRoute,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kAccountSettingsRoute,
        builder: (context, state) => const AccountSettingsView(),
      ),
      GoRoute(
        path: kSettingsRoute,
        builder: (context, state) => const SettingsView(),
      ),
      GoRoute(
        path: kHomeRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kMainRoute,
        builder: (context, state) => const MainView(),
      ),
      GoRoute(
        path: kFoodRoute,
        builder: (context, state) => const FoodView(),
      ),
    ],
  );
}
