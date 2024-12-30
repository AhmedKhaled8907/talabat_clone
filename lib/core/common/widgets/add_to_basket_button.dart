import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class AddToBasketButton extends StatelessWidget {
  const AddToBasketButton({
    super.key,
    required this.onPressed,
    this.height = AppSize.s50,
  });

  final void Function()? onPressed;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppPadding.p16,
        vertical: AppPadding.p16,
      ),
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s10),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Add to Basket',
                style: AppStyles.styleMedium16(context).copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '150 EGP',
                style: AppStyles.styleMedium16(context).copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
