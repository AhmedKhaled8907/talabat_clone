import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/ratings_and_numbers.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/great_deals_entity.dart';

class GreatDealsItem extends StatelessWidget {
  const GreatDealsItem({
    super.key,
    required this.greatDealsEntity,
  });

  final GreatDealsEntity greatDealsEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSize.s4,
      children: [
        SizedBox(
          height: context.height * 0.175,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.s10),
            child: AspectRatio(
              aspectRatio: 145 / 110,
              child: Image.asset(
                greatDealsEntity.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Text(
          greatDealsEntity.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleBold14(context),
        ),
        Text(
          greatDealsEntity.subtitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleMedium10(context).copyWith(
            color: AppColors.grey,
          ),
        ),
        RatingAndNumbers(
          rating: greatDealsEntity.rating ?? 0,
          numberOfRatings: greatDealsEntity.numberOfRatings ?? 0,
        )
      ],
    );
  }
}
