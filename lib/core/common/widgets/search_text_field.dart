import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s48,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s50),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: AppColors.searchColor,
          hintText: AppStrings.searchForGroceries,
          hintStyle: AppStyles.styleMedium14(context).copyWith(
            color: AppColors.blackWithOpacity,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: AppPadding.p8),
            child: Icon(
              Icons.search,
              color: AppColors.blackWithOpacity,
              size: AppSize.s24,
            ),
          ),
        ),
      ),
    );
  }
}
