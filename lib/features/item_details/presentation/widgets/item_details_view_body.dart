import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/thick_divider.dart';
import 'package:talabat_clone/core/common/widgets/thin_divider.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/item_details/presentation/widgets/add_note_widget.dart';
import 'package:talabat_clone/features/item_details/presentation/widgets/item_details_title_and_description.dart';
import 'package:talabat_clone/features/item_details/presentation/widgets/item_details_view_header.dart';
import 'package:talabat_clone/features/item_details/presentation/widgets/often_ordered_section.dart';

import 'extras_section.dart';

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
            child: ItemDetailsTitleAndDescription(
              itemEntity: itemEntity,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ThickDivider(height: AppSize.s8),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: ExtrasSection(),
          ),
        ),
        SliverToBoxAdapter(
          child: ThickDivider(height: AppSize.s8),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: OftenOrderedSection(),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: AddNoteWidget(),
          ),
        ),
        SliverToBoxAdapter(
          child: ThinDivider(
            height: AppSize.s8,
          ),
        ),
      ],
    );
  }
}
