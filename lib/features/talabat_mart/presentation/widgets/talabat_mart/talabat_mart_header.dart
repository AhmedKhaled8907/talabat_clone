import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/search_text_field.dart';
import 'package:talabat_clone/core/common/widgets/shadow_background.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class TalabatMartHeader extends StatelessWidget {
  const TalabatMartHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowBackground(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
        ).copyWith(
          top: AppPadding.p8,
          bottom: AppPadding.p16,
        ),
        child: SearchTextField(
          title: AppStrings.searchProduct,
        ),
      ),
    );
  }
}
