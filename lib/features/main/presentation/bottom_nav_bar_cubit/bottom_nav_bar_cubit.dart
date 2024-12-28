import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/features/account_settings/presentation/views/account_settings_view.dart';
import 'package:talabat_clone/features/home/presentation/views/home_view.dart';
import 'package:talabat_clone/features/orders/presentation/views/orders_view.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(const BottomNavBarInitial(HomeView()));
  static BottomNavBarCubit get(BuildContext context) =>
      BlocProvider.of(context);
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  List<Widget> views = [
    const HomeView(),
    const OrdersView(),
    const AccountSettingsView(),
  ];

  List<BottomNavigationBarItem> get navBarItems => [
        // home
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          activeIcon: Icon(Icons.home_filled),
          label: AppStrings.navBarHome,
        ),
        // search
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt),
          activeIcon: Icon(Icons.receipt),
          label: AppStrings.navBarOrders,
        ),
        // account
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          activeIcon: Icon(Icons.person),
          label: AppStrings.navBarAccount,
        ),
      ];

  void changeCurrentIndex(int index) {
    _currentIndex = index;
    emit(
      ChangeCurrentIndexState(views[_currentIndex]),
    );
  }
}
