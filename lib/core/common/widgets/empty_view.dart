import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/entities/empty_view_entity.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({
    super.key,
    required this.entity,
  });

  final EmptyViewEntity entity;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: AppSize.s16,
          children: [
            Image.asset(
              entity.image,
              fit: BoxFit.fill,
            ),
            Text(
              entity.title,
              textAlign: TextAlign.center,
              style: AppStyles.styleMedium18(context),
            ),
            Text(
              entity.subtitle,
              textAlign: TextAlign.center,
              style: AppStyles.styleMedium12(context).copyWith(
                color: AppColors.secondaryColor,
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(AppSize.s8),
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: AppPadding.p8,
                  horizontal: AppPadding.p12,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s8),
                  border: Border.all(color: AppColors.primaryColor),
                ),
                child: Text(
                  'Search ${entity.buttonText} ',
                  style: AppStyles.styleMedium12(context).copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
