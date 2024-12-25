import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/search/domain/entities/search_entity.dart';

class SearchTabs extends StatefulWidget {
  const SearchTabs({super.key});

  @override
  State<SearchTabs> createState() => _SearchTabsState();
}

class _SearchTabsState extends State<SearchTabs> with TickerProviderStateMixin {
  late TabController _tabController;
  late VoidCallback _tabListener;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 5,
      vsync: this,
    );

    _tabListener = () {
      _tabController.addListener(_tabListener);
      setState(() {});
    };
  }

  @override
  void dispose() {
    _tabController.removeListener(_tabListener);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.s16,
      children: [
        TabBar(
          physics: const BouncingScrollPhysics(),
          indicatorSize: TabBarIndicatorSize.label,
          controller: _tabController,
          isScrollable: true,
          tabs: searchTextTabs,
        ),
        SizedBox(
          height: context.height,
          child: TabBarView(
            controller: _tabController,
            children: searchList,
          ),
        ),
      ],
    );
  }
}
