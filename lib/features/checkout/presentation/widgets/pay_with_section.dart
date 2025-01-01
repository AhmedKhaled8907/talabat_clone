import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class PayWithSection extends StatefulWidget {
  const PayWithSection({super.key});

  @override
  State<PayWithSection> createState() => _PayWithSectionState();
}

class _PayWithSectionState extends State<PayWithSection> {
  String selectedPaymentMethod = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.payWith,
          style: AppStyles.styleBold16(context),
        ),
        const SizedBox(height: AppSize.s16),
        PayWithItem(
          title: AppStrings.applePay,
          image: AppAssets.imagesFoodApplePay,
          isSelected: selectedPaymentMethod == AppStrings.applePay,
          onSelected: () {
            setState(() {
              selectedPaymentMethod = AppStrings.applePay;
            });
          },
        ),
        const SizedBox(height: AppSize.s16),
        PayWithItem(
          title: AppStrings.creditCard,
          image: AppAssets.imagesFoodCreditCard,
          isSelected: selectedPaymentMethod == AppStrings.creditCard,
          onSelected: () {
            setState(() {
              selectedPaymentMethod = AppStrings.creditCard;
            });
          },
        ),
        const SizedBox(height: AppSize.s16),
        PayWithItem(
          title: AppStrings.cash,
          image: AppAssets.imagesFoodCash,
          isSelected: selectedPaymentMethod == AppStrings.cash,
          onSelected: () {
            setState(() {
              selectedPaymentMethod = AppStrings.cash;
            });
          },
        ),
      ],
    );
  }
}

class PayWithItem extends StatelessWidget {
  const PayWithItem({
    super.key,
    required this.title,
    required this.image,
    required this.isSelected,
    required this.onSelected,
  });

  final String title;
  final String image;
  final bool isSelected;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected,
      child: Row(
        children: [
          PayWithCheckBox(
            isSelected: isSelected,
            onChanged: onSelected,
          ),
          const SizedBox(width: AppSize.s16),
          Image.asset(
            image,
            width: AppSize.s32,
            fit: BoxFit.fill,
          ),
          const SizedBox(width: AppSize.s16),
          Text(
            title,
            style: AppStyles.styleMedium14(context),
          ),
        ],
      ),
    );
  }
}

class PayWithCheckBox extends StatelessWidget {
  const PayWithCheckBox({
    super.key,
    required this.isSelected,
    required this.onChanged,
  });

  final bool isSelected;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.s24,
      height: AppSize.s24,
      child: Transform.scale(
        scale: 1.25,
        child: Checkbox(
          shape: const CircleBorder(),
          activeColor: AppColors.primaryColor,
          checkColor: AppColors.white,
          value: isSelected,
          onChanged: (_) => onChanged(),
        ),
      ),
    );
  }
}
