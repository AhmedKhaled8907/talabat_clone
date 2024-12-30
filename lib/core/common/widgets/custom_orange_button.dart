import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class CustomOrangeButton extends StatelessWidget {
  const CustomOrangeButton({
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
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s10),
          ),
        ),
        onPressed: onPressed,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: AppStyles.styleMedium16(context).copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
