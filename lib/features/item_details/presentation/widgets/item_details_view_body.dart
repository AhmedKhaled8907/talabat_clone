import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/app_bar_icon.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/item_details/presentation/widgets/number_of_items.dart';

class ItemDetailsViewBody extends StatelessWidget {
  const ItemDetailsViewBody({
    super.key,
    required this.itemEntity,
  });

  final AllRestaurantsEntity itemEntity;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        ItemDetailsViewHeader(),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: AppSize.s8,
              children: [
                Text(
                  itemEntity.name,
                  style: AppStyles.styleBold16(context),
                ),
                Text(
                  itemEntity.description,
                  style: AppStyles.styleMedium12(context).copyWith(
                    color: AppColors.secondaryColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${itemEntity.price} EGP',
                      style: AppStyles.styleBold14(context),
                    ),
                    NumberOfItems(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ItemDetailsViewHeader extends StatelessWidget {
  const ItemDetailsViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: context.height * 0.35,
      leading: Padding(
        padding: const EdgeInsets.only(left: AppPadding.p8),
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
