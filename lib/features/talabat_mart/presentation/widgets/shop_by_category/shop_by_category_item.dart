import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/talabat_mart/domain/entities/talabat_mart_entity.dart';

class ShopByCategoryItem extends StatelessWidget {
  const ShopByCategoryItem({
    super.key,
    required this.talabatMartEntity,
  });

  final TalabatMartEntity talabatMartEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Container(
            padding: EdgeInsets.all(AppSize
                .s8), // Keep padding dynamic, based on AppSize.s8 or other logic
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.grey),
            ),
            child: Center(
              child: Image.asset(
                talabatMartEntity.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Text(
          talabatMartEntity.title,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleMedium12(context),
        ),
      ],
    );
  }
}
