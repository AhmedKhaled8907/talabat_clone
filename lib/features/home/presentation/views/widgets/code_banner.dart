import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class CodeBanner extends StatelessWidget {
  const CodeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(AppSize.s6),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 4,
                  offset: Offset(2, 2),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 4,
                  offset: Offset(-2, -2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              spacing: AppSize.s8,
              children: [
                Expanded(
                  child: Center(
                    child: Image.asset(
                      AppAssets.imagesHomeCode,
                      height: context.height * 0.1,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: AppSize.s8,
                    children: [
                      Text(
                        AppStrings.gotACode,
                        style: AppStyles.styleMedium16(context),
                      ),
                      Text(
                        AppStrings.addCode,
                        style: AppStyles.styleMedium12(context).copyWith(
                          color:
                              AppColors.black.withValues(alpha: AppSize.s0_5),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
