import 'package:go_router/go_router.dart';
import 'package:talabat_clone/features/auth/presentation/views/sign_in_options.dart';
import 'package:talabat_clone/features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  // Routes
  static const kInitialRoute = '/';
  static const kSignInOptionsRoute = '/sign_in_options';

  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: kInitialRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSignInOptionsRoute,
        builder: (context, state) => const SignInOptions(),
      ),
    ],
  );
}
