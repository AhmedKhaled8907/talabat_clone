import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class CustomOrangeBorderButton extends StatelessWidget {
  const CustomOrangeBorderButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.height = AppSize.s50,
  });

  final void Function()? onPressed;
  final String title;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          overlayColor: AppColors.secondaryColor,
          side: BorderSide(color: AppColors.primaryColor),
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s10),
          ),
        ),
        onPressed: onPressed,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: AppStyles.styleBold14(context).copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
