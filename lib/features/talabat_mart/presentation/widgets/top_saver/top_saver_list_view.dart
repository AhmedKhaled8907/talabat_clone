import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/talabat_mart/domain/entities/talabat_mart_entity.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/top_saver/top_saver_item.dart';

class TopSaverListView extends StatelessWidget {
  const TopSaverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.25,
      child: ListView.separated(
        itemCount: topSaversList.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(width: AppSize.s8);
        },
        itemBuilder: (context, index) {
          return TopSaverItem(
            entity: trendingNowList[index],
          );
        },
      ),
    );
  }
}
