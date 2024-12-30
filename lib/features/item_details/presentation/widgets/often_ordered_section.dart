import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/item_details/domain/entities/often_ordered_entity.dart';
import 'package:talabat_clone/features/item_details/presentation/widgets/often_ordered_item.dart';

class OftenOrderedSection extends StatelessWidget {
  const OftenOrderedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.s4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.oftenOrdered,
          style: AppStyles.styleBold16(context),
        ),
        Text(
          AppStrings.peopleOrderThese,
          style: AppStyles.styleRegular12(context).copyWith(
            color: AppColors.blackWithOpacity,
          ),
        ),
        const SizedBox(height: AppSize.s8),
        SizedBox(
          height: context.height * 0.375,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: oftenOrderedList.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: AppSize.s8);
            },
            itemBuilder: (BuildContext context, int index) {
              return OftenOrderedItem(
                entity: oftenOrderedList[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
