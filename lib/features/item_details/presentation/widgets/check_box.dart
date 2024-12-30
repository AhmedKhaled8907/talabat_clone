
import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({
    super.key,
  });

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 16,
      height: 16,
      child: Checkbox(
        activeColor: AppColors.primaryColor,
        checkColor: AppColors.white,
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}
