import 'package:flutter/material.dart';
import 'package:talabat_clone/features/food/domain/entities/all_restaurants_entity.dart';
import 'package:talabat_clone/features/item_details/presentation/widgets/item_details_view_body.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({
    super.key,
    required this.itemEntity,
  });

  final AllRestaurantsEntity itemEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ItemDetailsViewBody(
        itemEntity: itemEntity,
      ),
    );
  }
}
