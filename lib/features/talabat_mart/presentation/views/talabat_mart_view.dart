import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/home_app_bar.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/talabat_mart_view_body.dart';

class TalabatMartView extends StatelessWidget {
  const TalabatMartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: TalabatMartViewBody(),
    );
  }

  HomeAppBar _buildAppBar(BuildContext context) {
    return HomeAppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: AppSize.s8,
        children: [
          Image.asset(
            AppAssets.imagesTalabatMartTalabat,
            fit: BoxFit.fill,
          ),
          Text(
            AppStrings.talabatMart,
            style: AppStyles.styleMedium14(context),
          ),
        ],
      ),
    );
  }

}