import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/talabat_mart/domain/entities/talabat_mart_entity.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/trending_now_item.dart';

class TrendingNowListView extends StatelessWidget {
  const TrendingNowListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.25,
      child: ListView.separated(
        itemCount: trendingNowList.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(width: AppSize.s8);
        },
        itemBuilder: (context, index) {
          return TrendingNowItem(
            entity: trendingNowList[index],
          );
        },
      ),
    );
  }
}
