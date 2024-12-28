import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/thin_divider.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/account_settings/presentation/views/widgets/offers_list_view.dart';

class OffersViewBody extends StatelessWidget {
  const OffersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: ThinDivider(height: AppSize.s1),
        ),
        Expanded(
          child: OffersListView(),
        ),
        const SizedBox(height: AppSize.s24),
      ],
    );
  }
}
