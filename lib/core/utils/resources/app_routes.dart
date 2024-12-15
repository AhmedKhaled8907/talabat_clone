import 'package:go_router/go_router.dart';
import 'package:talabat_clone/features/auth/presentation/views/forgot_password_view.dart';
import 'package:talabat_clone/features/auth/presentation/views/sign_in_options_view.dart';
import 'package:talabat_clone/features/auth/presentation/views/sign_in_view.dart';
import 'package:talabat_clone/features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  // Routes
  static const kInitialRoute = '/';
  static const kSignInOptionsRoute = '/sign_in_options';
  static const kSignInRoute = '/sign_in';
  static const kForgotPasswordRoute = '/forgot_password';

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
    ],
  );
}
