import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({
    super.key,
    required this.title,
    this.onTap,
  });

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSize.s10),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(AppPadding.p8),
        decoration: BoxDecoration(
          color: AppColors.discountColor,
          borderRadius: BorderRadius.circular(AppSize.s10),
          boxShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          spacing: AppSize.s8,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  height: AppSize.s16,
                  width: AppSize.s16,
                  AppAssets.imagesTalabatMartOffer,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Text(
                title,
                maxLines: 2,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.styleBold10(context).copyWith(
                  color: AppColors.thirdColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
