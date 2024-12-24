import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/talabat_mart/domain/entities/talabat_mart_entity.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/trending_now/trending_now_item.dart';

class TrendingNowListView extends StatelessWidget {
  const TrendingNowListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSize.s8,
        children: trendingNowList
            .map(
              (e) => TrendingNowItem(entity: e),
            )
            .toList(),
      ),
    );
  }
}
