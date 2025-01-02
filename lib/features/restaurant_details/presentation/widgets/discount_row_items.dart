import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/discount_widget.dart';

class DiscountRowItems extends StatelessWidget {
  const DiscountRowItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSize.s16,
      children: [
        Expanded(
          child: DiscountWidget(
            title: AppStrings.off15,
            onTap: () {
              _showModal(
                context,
                AppStrings.off15,
              );
            },
          ),
        ),
        Expanded(
          child: DiscountWidget(
            title: AppStrings.off10,
            onTap: () {
              _showModal(
                context,
                AppStrings.off10,
              );
            },
          ),
        ),
      ],
    );
  }
}

// Add Show modal for discount row items
Future<dynamic> _showModal(
  BuildContext context,
  String text,
) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(AppPadding.p24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppSize.s16,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(AppSize.s8),
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  AppAssets.imagesFoodX,
                ),
              ),
            ),
            Text(
              text,
              style: AppStyles.styleBold16(context),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        AppStrings.minSpend,
                        style: AppStyles.styleMedium12(context).copyWith(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      Text(
                        AppStrings.price75,
                        style: AppStyles.styleMedium14(context),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        AppStrings.maxSavings,
                        style: AppStyles.styleMedium12(context).copyWith(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      Text(
                        AppStrings.noUpperLimit,
                        style: AppStyles.styleMedium14(context),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        AppStrings.minSpend,
                        style: AppStyles.styleMedium12(context).copyWith(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      Text(
                        AppStrings.date08,
                        style: AppStyles.styleMedium14(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(AppSize.s8),
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p4),
                child: Text(
                  AppStrings.viewTerms,
                  style: AppStyles.styleMedium14(context).copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    },
  );
}
