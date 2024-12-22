import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class AllRestaurantHeader extends StatefulWidget {
  const AllRestaurantHeader({super.key});

  @override
  State<AllRestaurantHeader> createState() => _AllRestaurantHeaderState();
}

class _AllRestaurantHeaderState extends State<AllRestaurantHeader> {
  bool isGridViewSelected = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppStrings.allRestaurants,
          style: AppStyles.styleBold16(context),
        ),
        Row(
          children: [
            _ToggleButton(
              icon: Icons.computer_rounded,
              isSelected: isGridViewSelected,
              onTap: () {
                return setState(() => isGridViewSelected = true);
              },
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(AppSize.s15),
                bottomLeft: Radius.circular(AppSize.s15),
              ),
            ),
            _ToggleButton(
              icon: Icons.format_list_bulleted_outlined,
              isSelected: !isGridViewSelected,
              onTap: () {
                return setState(() => isGridViewSelected = false);
              },
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(AppSize.s15),
                bottomRight: Radius.circular(AppSize.s15),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ToggleButton extends StatelessWidget {
  const _ToggleButton({
    required this.icon,
    required this.isSelected,
    required this.onTap,
    required this.borderRadius,
  });

  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p8,
          vertical: AppPadding.p4,
        ),
        decoration: _getStyle(),
        child: Center(
          child: Icon(
            icon,
            color: isSelected
                ? AppColors.primaryColor
                : AppColors.grey.withValues(
                    alpha: AppSize.s50,
                  ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _getStyle() {
    return BoxDecoration(
      color: isSelected ? const Color(0xFFFFEEE6) : Colors.white,
      borderRadius: borderRadius,
      border: Border.all(
        color: isSelected
            ? AppColors.primaryColor.withValues(
                alpha: AppSize.s0_25,
              )
            : Colors.transparent,
        width: AppSize.s0_5,
      ),
      boxShadow: isSelected
          ? null
          : const [
              BoxShadow(
                color: Color(0x0C000000),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
    );
  }
}
