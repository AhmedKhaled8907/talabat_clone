import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/talabat_mart/domain/entities/talabat_mart_entity.dart';

class TalabatMartItem extends StatelessWidget {
  const TalabatMartItem({
    super.key,
    required this.talabatMartEntity,
  });

  final TalabatMartEntity talabatMartEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: AppSize.s4,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              talabatMartEntity.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            talabatMartEntity.title,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleBold12(context),
          ),
        ],
      ),
    );
  }
}
