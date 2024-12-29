import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class RatingAndNumbers extends StatelessWidget {
  const RatingAndNumbers({
    super.key,
    required this.rating,
    required this.numberOfRatings,
  });

  final num rating;
  final num numberOfRatings;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSize.s6,
      children: [
        Icon(
          Icons.star,
          size: AppSize.s16,
          color: AppColors.starColor,
        ),
        Text(
          rating.toString(),
          style: AppStyles.styleMedium10(context).copyWith(
            color: AppColors.blackWithOpacity,
          ),
        ),
        Text(
          ratingCounts(numberOfRatings),
          style: AppStyles.styleMedium10(context).copyWith(
            color: AppColors.blackWithOpacity,
          ),
        ),
      ],
    );
  }

  String ratingCounts(num rating) {
    if (rating > 100) {
      return '(100+)';
    } else {
      return '($rating)';
    }
  }
}
