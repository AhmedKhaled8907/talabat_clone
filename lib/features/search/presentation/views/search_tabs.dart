import 'package:flutter/material.dart';
import 'package:talabat_clone/features/search/domain/entities/search_entity.dart';

class SearchTabs extends StatefulWidget {
  const SearchTabs({super.key});

  @override
  State<SearchTabs> createState() => _SearchTabsState();
}

class _SearchTabsState extends State<SearchTabs> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 5,
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
    return Expanded(
      child: Column(
        children: [
          // TabBar
          TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: searchTextTabs,
          ),
          // TabBarView
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: List.generate(
                searchList.length,
                (index) => searchList[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
