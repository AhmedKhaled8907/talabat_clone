import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/home_app_bar.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/presentation/widgets/food_view_body.dart';

class FoodView extends StatelessWidget {
  const FoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(context),
      body: Scaffold(
        body: FoodViewBody(),
      ),
    );
  }

  HomeAppBar _buildAppbar(BuildContext context) {
    return HomeAppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSize.s4,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              AppStrings.delivering,
              style: AppStyles.styleMedium10(context).copyWith(
                color: AppColors.secondaryColor,
              ),
            ),
          ),
          Text(
            AppStrings.elMahalla,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleMedium12(context),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.search_rounded,
            color: AppColors.black,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
