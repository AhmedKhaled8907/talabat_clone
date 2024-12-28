import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/thin_divider.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/account_settings/domain/entities/offers_entity.dart';
import 'package:talabat_clone/features/account_settings/presentation/views/widgets/offers_item.dart';

class OffersListView extends StatelessWidget {
  const OffersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: accountOffersList.length,
      separatorBuilder: (BuildContext context, int index) {
        return ThinDivider();
      },
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left: AppPadding.p16),
          child: OffersItem(
            offer: accountOffersList[index],
          ),
        );
      },
    );
  }
}
