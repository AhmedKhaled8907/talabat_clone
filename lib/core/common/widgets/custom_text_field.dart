import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.suffixIcon,
    this.onSaved,
    this.obscureText = false,
    required this.validator,
  });

  final String hintText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validator,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: AppStyles.styleMedium14(context),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        floatingLabelStyle: AppStyles.styleMedium14(context).copyWith(
          color: AppColors.black,
        ),
        label: Text(
          hintText,
          textAlign: TextAlign.start,
          style: AppStyles.styleMedium14(context).copyWith(
            color: AppColors.secondaryColor,
          ),
        ),
        suffixIcon: suffixIcon,
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(color: AppColors.primaryColor),
        errorBorder: _buildBorder(color: AppColors.red),
      ),
    );
  }

  UnderlineInputBorder _buildBorder({Color? color}) {
    return UnderlineInputBorder(
      borderSide: BorderSide(
        color: color ?? AppColors.secondaryColor,
      ),
    );
  }
}
