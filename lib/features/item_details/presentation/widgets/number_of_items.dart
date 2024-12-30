import 'package:flutter/material.dart';

import '../../../../core/utils/resources/app_colors.dart';
import '../../../../core/utils/resources/app_styles.dart';
import '../../../../core/utils/resources/app_values.dart';

class NumberOfItems extends StatefulWidget {
  const NumberOfItems({
    super.key,
  });

  @override
  State<NumberOfItems> createState() => _NumberOfOrdersState();
}

class _NumberOfOrdersState extends State<NumberOfItems> {
  int initialValue = 1;

  int value() {
    if (initialValue < 1) {
      setState(() {});
      return 1;
    }
    setState(() {});
    return initialValue;
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
        spacing: AppSize.s8,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(AppSize.s4),
            onTap: () => setState(() => initialValue--),
            child: Icon(
              Icons.remove,
              color: AppColors.primaryColor,
            ),
          ),
          Text(
            value().toString(),
            style: AppStyles.styleMedium16(context),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(AppSize.s4),
            onTap: () => setState(() => initialValue++),
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
