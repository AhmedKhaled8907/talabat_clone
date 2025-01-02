import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_border_button.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_button.dart';
import 'package:talabat_clone/core/common/widgets/custom_switch.dart';
import 'package:talabat_clone/core/common/widgets/payment_section.dart';
import 'package:talabat_clone/core/common/widgets/thin_divider.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/checkout/presentation/widgets/select_delivery_time.dart';

Future<dynamic> enterCardDetailsSection(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(
          AppPadding.p16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppSize.s12,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(AppSize.s8),
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p4),
                child: Image.asset(
                  AppAssets.imagesFoodX,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.enterCardDetails,
                  style: AppStyles.styleBold16(context),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(
                    AppSize.s8,
                  ),
                  onTap: () {},
                  child: Image.asset(
                    AppAssets.imagesFoodScanCard,
                    fit: BoxFit.fill,
                    width: AppSize.s24,
                  ),
                ),
              ],
            ),

            // card number textfield
            _cardDetailsTextField(
              context,
              hintText: AppStrings.cardNumber,
              maxLength: 16,
            ),

            // text fields
            Row(
              spacing: AppSize.s8,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: _cardDetailsTextField(
                    context,
                    hintText: AppStrings.expiryDate,
                    maxLength: 5,
                  ),
                ),
                Expanded(
                  child: _cardDetailsTextField(
                    context,
                    hintText: AppStrings.securityCods,
                    isSuffixIcon: true,
                    maxLength: 3,
                  ),
                ),
              ],
            ),

            // switch
            Row(
              spacing: AppSize.s8,
              children: [
                Expanded(
                  child: Text(
                    AppStrings.forFaster,
                    style: AppStyles.styleRegular12(context).copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ),
                CustomSwitch(),
              ],
            ),

            // more about card
            Row(
              spacing: AppSize.s8,
              children: [
                Icon(
                  Icons.lock_outline_rounded,
                  color: AppColors.deliveredColor,
                ),
                Text(
                  AppStrings.moreAboutCardSecurity,
                  style: AppStyles.styleRegular12(context).copyWith(
                    color: AppColors.primaryColor,
                  ),
                )
              ],
            ),

            ThinDivider(height: AppSize.s0_5),

            // payment section
            PaymentSection(
              isReadMoreShown: false,
            ),

            // by placing this order
            Text(
              AppStrings.byPlacingThisOrder,
              style: AppStyles.styleRegular12(context).copyWith(
                color: AppColors.secondaryColor,
              ),
            ),

            ThinDivider(height: AppSize.s0_5),

            const SizedBox(),

            // buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: AppSize.s12,
              children: [
                Expanded(
                  child: CustomOrangeBorderButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    title: AppStrings.cancel,
                  ),
                ),
                Expanded(
                  child: CustomOrangeButton(
                    onPressed: () {
                      selectDeliveryTime(context);
                    },
                    title: AppStrings.pay,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}

TextField _cardDetailsTextField(
  BuildContext context, {
  required String hintText,
  bool isSuffixIcon = false,
  required int maxLength,
}) {
  return TextField(
    textAlignVertical: TextAlignVertical.center,
    maxLength: maxLength,
    style: AppStyles.styleBold14(context),
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      counterText: '',
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p8,
        vertical: AppPadding.p8,
      ),
      hintText: hintText,
      hintStyle: AppStyles.styleBold12(context).copyWith(
        color: AppColors.secondaryColor,
      ),
      suffixIcon: isSuffixIcon
          ? Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: Image.asset(
                AppAssets.imagesFoodSecurityCods,
              ),
            )
          : null,
      border: _buildBorder(),
      enabledBorder: _buildBorder(),
      focusedBorder: _buildBorder(color: AppColors.primaryColor),
      errorBorder: _buildBorder(color: AppColors.red),
    ),
  );
}

UnderlineInputBorder _buildBorder({Color? color}) {
  return UnderlineInputBorder(
    borderSide: BorderSide(
      color: color ?? AppColors.secondaryColor,
    ),
  );
}
