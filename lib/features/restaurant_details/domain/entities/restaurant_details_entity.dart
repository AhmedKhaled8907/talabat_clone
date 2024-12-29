import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/views/free_soup_view.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/views/starters_view.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/views/trending_view.dart';

List<Widget> resTaurantDetailsList = [
  TrendingView(),
  FreeSoupView(),
  StartersView(),
];

final List<Widget> restaurantDetailsTextTabs = const [
  Text(AppStrings.trending),
  Text(AppStrings.freeSoupEclipses),
  Text(AppStrings.starters),
];
