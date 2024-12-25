import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/search_text_field.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/search/presentation/views/search_tabs.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.s16,
      children: [
        Container(
          width: context.width,
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
          child: SearchTextField(
            title: AppStrings.searchForGroceries,
          ),
        ),
        SearchTabs(),
      ],
    );
  }
}
