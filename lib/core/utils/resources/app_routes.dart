import 'package:go_router/go_router.dart';
import 'package:talabat_clone/features/account_settings/presentation/views/offers_view.dart';
import 'package:talabat_clone/features/auth/presentation/views/forgot_password_view.dart';
import 'package:talabat_clone/features/auth/presentation/views/sign_in_options_view.dart';
import 'package:talabat_clone/features/auth/presentation/views/sign_in_view.dart';
import 'package:talabat_clone/features/auth/presentation/views/sign_up_view.dart';
import 'package:talabat_clone/features/account_settings/presentation/views/account_settings_view.dart';
import 'package:talabat_clone/features/basket/presentation/views/basket_view.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/food/presentation/views/food_view.dart';
import 'package:talabat_clone/features/home/presentation/views/home_view.dart';
import 'package:talabat_clone/features/item_details/presentation/views/item_details_view.dart';
import 'package:talabat_clone/features/main/presentation/views/main_view.dart';
import 'package:talabat_clone/features/orders/presentation/views/orders_view.dart';
import 'package:talabat_clone/features/rate_order/presentation/views/rate_order_view.dart';
import 'package:talabat_clone/features/rate_order/presentation/views/more_notes_view.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/views/restaurant_about_view.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/views/restaurant_details_view.dart';
import 'package:talabat_clone/features/search/presentation/views/search_view.dart';
import 'package:talabat_clone/features/settings/presentation/views/settings_view.dart';
import 'package:talabat_clone/features/splash/presentation/views/splash_view.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/views/talabat_mart_view.dart';

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
  static const kTalabatMartRoute = '/talabat_mart';
  static const kSearchRoute = '/search';
  static const kOrdersRoute = '/orders';
  static const kOffersRoute = '/offers';
  static const kRateOrderRoute = '/rate_order';
  static const kMoreNotesRoute = '/more_notes';
  static const kRestaurantDetailsRoute = '/restaurant_details';
  static const kRestaurantAboutRoute = '/restaurant_about';
  static const kItemDetailsRoute = '/item_details';
  static const kBasketRoute = '/basket';

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
      GoRoute(
        path: kTalabatMartRoute,
        builder: (context, state) => const TalabatMartView(),
      ),
      GoRoute(
        path: kSearchRoute,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kOrdersRoute,
        builder: (context, state) => const OrdersView(),
      ),
      GoRoute(
        path: kOffersRoute,
        builder: (context, state) => const OffersView(),
      ),
      GoRoute(
        path: kRateOrderRoute,
        builder: (context, state) => const RateOrderView(),
      ),
      GoRoute(
        path: kMoreNotesRoute,
        builder: (context, state) => const MoreNotesView(),
      ),
      GoRoute(
        path: AppRoutes.kRestaurantDetailsRoute,
        builder: (context, state) {
          return RestaurantDetailsView(
            entity: state.extra as AllRestaurantsEntity,
          );
        },
      ),
      GoRoute(
        path: AppRoutes.kRestaurantAboutRoute,
        builder: (context, state) {
          return RestaurantAboutView(
            restaurantsEntity: state.extra as AllRestaurantsEntity,
          );
        },
      ),
      GoRoute(
        path: AppRoutes.kItemDetailsRoute,
        builder: (context, state) {
          return ItemDetailsView(
            itemEntity: state.extra as AllRestaurantsEntity,
          );
        },
      ),
      GoRoute(
        path: AppRoutes.kBasketRoute,
        builder: (context, state) => BasketView(
          entity: state.extra as AllRestaurantsEntity,
        ),
      ),
    ],
  );
}
