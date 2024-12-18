import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/main/presentation/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        var cubit = BottomNavBarCubit.get(context);
        return Scaffold(
          body: cubit.views[cubit.currentIndex],
          bottomNavigationBar: Container(
            height: AppSize.s80,
            margin: const EdgeInsets.all(AppSize.s0_5),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.secondaryColor,
                width: AppSize.s2,
              ),
            ),
            child: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeCurrentIndex(index);
              },
              items: cubit.navBarItems,
            ),
          ),
        );
      },
    );
  }
}
