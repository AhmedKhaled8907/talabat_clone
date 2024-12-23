import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/trending_now/trending_now_list_view.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/trending_now/trending_now_text.dart';

class TrendingNowSection extends StatelessWidget {
  const TrendingNowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.s16,
      children: [
        TrendingNowText(),
        TrendingNowListView(),
      ],
    );
  }
}
