import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final String icon;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p6,
        horizontal: AppPadding.p16,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppSize.s8),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p12,
            horizontal: AppPadding.p16,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s8),
            border: Border.all(color: AppColors.black),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    title,
                    style: AppStyles.styleMedium16(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
