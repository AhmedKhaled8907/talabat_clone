import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/talabat_mart/domain/entities/talabat_mart_entity.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/talabat_mart/talabat_mart_item.dart';

class TalabatMartListView extends StatelessWidget {
  const TalabatMartListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: AppSize.s8,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: talabatMartsList
            .map(
              (talabatMart) => TalabatMartItem(
                talabatMartEntity: talabatMart,
              ),
            )
            .toList(),
      ),
    );
  }
}
