import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/shop_by_category/shop_by_category_section.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/talabat_mart/talabat_mart_list_view.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/talabat_mart/talabat_mart_header.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/top_saver/top_saver_section.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/trending_now/trending_now_section.dart';

class TalabatMartViewBody extends StatelessWidget {
  const TalabatMartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TalabatMartHeader(),
          _body(),
        ],
      ),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p16,
        vertical: AppPadding.p16,
      ),
      child: Column(
        spacing: AppSize.s16,
        children: [
          TalabatMartListView(),
          TrendingNowSection(),
          ShopByCategorySection(),
          TopSaverSection(),
        ],
      ),
    );
  }
}
