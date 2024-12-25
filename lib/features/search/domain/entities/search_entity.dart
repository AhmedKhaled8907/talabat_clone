import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/features/search/presentation/views/flowers_search_view.dart';
import 'package:talabat_clone/features/search/presentation/views/food_search_view.dart';
import 'package:talabat_clone/features/search/presentation/views/groceries_search_view.dart';
import 'package:talabat_clone/features/search/presentation/views/health_search_view.dart';
import 'package:talabat_clone/features/search/presentation/views/more_shops_search_view.dart';

List<Widget> searchList = [
  FoodSearchView(),
  GroceriesSearchView(),
  HealthSearchView(),
  FlowersSearchView(),
  MoreShopsSearchView(),
];

final List<Widget> searchTextTabs = const [
  Text(AppStrings.food),
  Text(AppStrings.groceries),
  Text(AppStrings.health),
  Text(AppStrings.flowers),
  Text(AppStrings.moreShops),
];
