import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/talabat_mart/domain/entities/talabat_mart_entity.dart';

import 'shop_by_category_item.dart';

class ShopByCategoryGridView extends StatelessWidget {
  const ShopByCategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: shopByCategoryList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: AppSize.s8,
        crossAxisSpacing: AppSize.s8,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (BuildContext context, int index) {
        return ShopByCategoryItem(
          talabatMartEntity: shopByCategoryList[index],
        );
      },
    );
  }
}
