import 'package:flutter/material.dart';

import '../../../../core/common/widgets/app_bar_icon.dart';
import '../../../../core/utils/resources/app_assets.dart';
import '../../../../core/utils/resources/app_values.dart';

class ItemDetailsViewHeader extends StatelessWidget {
  const ItemDetailsViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: context.height * 0.3,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: AppPadding.p8,
          right: AppPadding.p8,
        ),
        child: AppBarIcon(
          onTap: () {
            Navigator.pop(context);
          },
          image: AppAssets.imagesFoodArrowForward,
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          AppAssets.imagesFoodFriedRice,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
