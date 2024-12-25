import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/search_text_field.dart';
import 'package:talabat_clone/core/common/widgets/shadow_background.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/search/presentation/views/search_tabs.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchViewHeader(),
        ],
      ),
    );
  }
}

class SearchViewHeader extends StatelessWidget {
  const SearchViewHeader({
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
        child: Column(
          spacing: AppSize.s16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: context.width,
              child: SearchTextField(
                title: AppStrings.searchForGroceries,
              ),
            ),
            SearchTabs(),
          ],
        ),
      ),
    );
  }
}
