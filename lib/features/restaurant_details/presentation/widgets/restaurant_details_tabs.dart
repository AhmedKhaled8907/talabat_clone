import 'package:flutter/material.dart';
import 'package:talabat_clone/features/restaurant_details/domain/entities/restaurant_details_entity.dart';

class RestaurantDetailsTabs extends StatefulWidget {
  const RestaurantDetailsTabs({super.key});

  @override
  State<RestaurantDetailsTabs> createState() => _RestaurantDetailsTabsState();
}

class _RestaurantDetailsTabsState extends State<RestaurantDetailsTabs>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TabBar
        TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: restaurantDetailsTextTabs,
        ),
        // TabBarView
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: List.generate(
              resTaurantDetailsList.length,
              (index) => resTaurantDetailsList[index],
            ),
          ),
        ),
      ],
    );
  }
}
