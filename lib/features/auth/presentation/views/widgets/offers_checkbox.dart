import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

import '../../../../../core/utils/resources/app_styles.dart';

class OffersCheckbox extends StatefulWidget {
  const OffersCheckbox({
    super.key,
    required this.onChanged,
  });

  final ValueChanged<bool> onChanged;

  @override
  State<OffersCheckbox> createState() => _OffersCheckboxState();
}

class _OffersCheckboxState extends State<OffersCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
          widget.onChanged(isChecked);
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: AppSize.s32,
            height: AppSize.s36,
            child: Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                  widget.onChanged(isChecked);
                });
              },
              activeColor: AppColors.primaryColor,
            ),
          ),
          Expanded(
            child: Text(
              AppStrings.receiveOffers,
              style: AppStyles.styleMedium12(context),
            ),
          ),
        ],
      ),
    );
  }
}
