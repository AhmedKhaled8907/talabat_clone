import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/title_with_see_all.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/trending_now/trending_now_list_view.dart';

class TopSaverSection extends StatelessWidget {
  const TopSaverSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.s16,
      children: [
        TitleWithSeeAll(
          title: AppStrings.topSavers,
        ),
        TrendingNowListView(),
      ],
    );
  }
}
