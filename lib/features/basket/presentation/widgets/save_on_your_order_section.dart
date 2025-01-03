import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_text_button.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class SaveOnYourOrderSection extends StatelessWidget {
  const SaveOnYourOrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSize.s16,
      children: [
        Text(
          AppStrings.saveOnYourOrder,
          style: AppStyles.styleBold16(context),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: AppPadding.p16,
            right: AppPadding.p4,
            // vertical: AppPadding.p4,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: AppColors.black.withValues(alpha: AppSize.s0_25),
              ),
              borderRadius: BorderRadius.circular(AppSize.s10),
            ),
          ),
          child: Row(
            spacing: AppSize.s8,
            children: [
              Image.asset(
                AppAssets.imagesFoodTicket,
              ),
              Text(
                AppStrings.enterVoucher,
                style: AppStyles.styleBold14(context).copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
              const Spacer(),
              CustomTextButton(
                title: AppStrings.submit,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
