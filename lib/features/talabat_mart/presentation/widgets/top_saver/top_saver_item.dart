import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/talabat_mart/domain/entities/talabat_mart_entity.dart';

class TopSaverItem extends StatelessWidget {
  const TopSaverItem({
    super.key,
    required this.entity,
  });

  final TalabatMartEntity entity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSize.s4,
        children: [
          AspectRatio(
            aspectRatio: 1.1,
            child: Container(
              padding: const EdgeInsets.all(AppPadding.p4),
              decoration: BoxDecoration(
                color: AppColors.dividerColor,
                borderRadius: BorderRadius.circular(AppSize.s10),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      entity.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(AppPadding.p8),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppSize.s10),
                        ),
                      ),
                      child: Icon(
                        Icons.add,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            entity.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleBold12(context),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              '${entity.price} EGP',
              style: AppStyles.styleMedium14(context).copyWith(
                color: AppColors.thirdColor,
              ),
            ),
          ),
          if (entity.discount != 0)
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '${entity.discount} EGP',
                style: AppStyles.styleMedium12(context).copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            )
          else
            const SizedBox.shrink(),
        ],
      ),
    );
  }
}
