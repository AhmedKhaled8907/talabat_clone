import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';


class SearchViewHeader extends StatelessWidget {
  const SearchViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p16,
      ),
      child: Column(
        spacing: AppSize.s16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
        ],
      ),
    );

    // ShadowBackground(
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(
    //       horizontal: AppPadding.p16,
    //     ).copyWith(
    //       top: AppPadding.p8,
    //       bottom: AppPadding.p16,
    //     ),
    //     child:
    //   ),
    // );
  }
}
