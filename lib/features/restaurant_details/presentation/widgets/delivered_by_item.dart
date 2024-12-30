import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/restaurant_details/domain/entities/delivered_by_entity.dart';

class DeliveredByItem extends StatelessWidget {
  const DeliveredByItem({
    super.key,
    required this.entity,
  });

  final DeliveredByEntity entity;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
        entity.image,
        fit: BoxFit.fill,
        width: AppSize.s16,
      ),
      title: Text(
        entity.title,
        style: AppStyles.styleBold12(context),
      ),
      subtitle: Text(
        entity.subtitle,
        style: AppStyles.styleMedium12(context),
      ),
    );
  }
}
