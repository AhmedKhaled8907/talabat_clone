import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/custom_text_button.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

import '../../../../core/utils/resources/app_styles.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.mode_comment_outlined,
          size: AppSize.s18,
        ),
        const SizedBox(width: AppSize.s8),
        Text(
          AppStrings.specialRequest,
          style: AppStyles.styleMedium14(context),
        ),
        const Spacer(),
        CustomTextButton(
          title: AppStrings.addANote,
        ),
      ],
    );
  }
}
