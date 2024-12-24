import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kSearchRoute);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p12,
        ),
        decoration: BoxDecoration(
          color: AppColors.searchColor,
          borderRadius: BorderRadius.circular(AppSize.s50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: AppSize.s8,
          children: [
            Image.asset(AppAssets.imagesSearch),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                style: AppStyles.styleMedium14(context).copyWith(
                  color: AppColors.blackWithOpacity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
