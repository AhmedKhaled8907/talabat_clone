import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/item_details/presentation/widgets/check_box.dart';

class SpecialRequestSection extends StatelessWidget {
  const SpecialRequestSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.aSpecialRequest,
          style: AppStyles.styleBold16(context),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Image.asset(
            AppAssets.imagesFoodWaterBottle,
            width: AppSize.s24,
            color: AppColors.secondaryColor,
            fit: BoxFit.fill,
          ),
          title: Text(
            AppStrings.noCutlery,
            style: AppStyles.styleMedium14(context),
          ),
          subtitle: Text(
            AppStrings.lessPlastic,
            style: AppStyles.styleMedium12(context).copyWith(
              color: AppColors.secondaryColor,
            ),
          ),
          trailing: CustomCheckBox(),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(AppSize.s8),
          onTap: () {},
          child: ListTile(
            contentPadding: EdgeInsets.only(
              left: AppPadding.p6,
            ),
            leading: Icon(
              Icons.mode_comment_outlined,
              size: AppSize.s16,
              color: AppColors.secondaryColor,
            ),
            title: Text(
              AppStrings.addANote,
              style: AppStyles.styleMedium14(context),
            ),
            subtitle: Text(
              AppStrings.anythingElse,
              style: AppStyles.styleMedium12(context).copyWith(
                color: AppColors.secondaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
