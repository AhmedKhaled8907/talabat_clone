import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p16,
        vertical: AppPadding.p12,
      ),
      decoration: BoxDecoration(
        color: AppColors.searchColor,
        borderRadius: BorderRadius.circular(AppSize.s50),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: AppSize.s8,
          children: [
            Image.asset(
              AppAssets.imagesSearchSearch,
              fit: BoxFit.fill,
              width: AppSize.s16,
            ),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.styleMedium14(context).copyWith(
                color: AppColors.blackWithOpacity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
