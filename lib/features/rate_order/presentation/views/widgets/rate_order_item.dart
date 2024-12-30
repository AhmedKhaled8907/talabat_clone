import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class RateOrderItem extends StatelessWidget {
  const RateOrderItem({
    super.key,
    required this.selectedTopics,
    required this.index,
  });

  final List<String> selectedTopics;
  final Object? index;

  @override
  Widget build(BuildContext context) {
    var isTopicSelected = selectedTopics.contains(index);
    return Container(
      padding: const EdgeInsets.all(AppPadding.p8),
      decoration: BoxDecoration(
        color: isTopicSelected ? AppColors.primaryColor : null,
        border: Border.all(
          color: isTopicSelected ? AppColors.primaryColor : AppColors.grey,
        ),
        borderRadius: BorderRadius.circular(AppSize.s16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: AppSize.s6,
        children: [
          Icon(
            Icons.trending_up_rounded,
            color: isTopicSelected ? AppColors.white : AppColors.secondaryColor,
            size: AppSize.s16,
          ),
          Text(
            index.toString(),
            style: AppStyles.styleBold12(context).copyWith(
              color:
                  isTopicSelected ? AppColors.white : AppColors.secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
