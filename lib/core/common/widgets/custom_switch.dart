import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    super.key,
  });

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.85,
      child: Switch.adaptive(
        activeColor: AppColors.primaryColor,
        value: isSwitched,
        onChanged: (value) {
          setState(() {});
          isSwitched = value;
        },
      ),
    );
  }
}
