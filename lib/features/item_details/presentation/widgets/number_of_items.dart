import 'package:flutter/material.dart';

import '../../../../core/utils/resources/app_colors.dart';
import '../../../../core/utils/resources/app_styles.dart';
import '../../../../core/utils/resources/app_values.dart';

class NumberOfItems extends StatefulWidget {
  const NumberOfItems({
    super.key,
    required this.onItemCountChanged,
  });

  final ValueChanged<int> onItemCountChanged;

  @override
  State<NumberOfItems> createState() => _NumberOfOrdersState();
}

class _NumberOfOrdersState extends State<NumberOfItems> {
  int itemCount = 1;

  void _updateItemCount(int newCount) {
    if (newCount < 1) return;
    setState(() {
      itemCount = newCount;
    });
    widget.onItemCountChanged(itemCount);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppPadding.p6),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSize.s10),
        boxShadow: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        spacing: AppSize.s4,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(AppSize.s4),
            onTap: () => _updateItemCount(itemCount - 1),
            child: Icon(
              Icons.remove,
              color: AppColors.primaryColor,
            ),
          ),
          Text(
            itemCount.toString(),
            style: AppStyles.styleMedium16(context),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(AppSize.s4),
            onTap: () => _updateItemCount(itemCount + 1),
            child: Icon(
              Icons.add,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
