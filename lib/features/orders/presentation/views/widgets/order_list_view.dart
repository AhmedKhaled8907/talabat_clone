import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/orders/domain/entities/order_entity.dart';
import 'package:talabat_clone/features/orders/presentation/views/widgets/order_item.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: ordersList.length,
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          height: 32,
          thickness: AppSize.s0_5,
          color: AppColors.black.withValues(alpha: AppSize.s0_5),
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left: AppPadding.p16),
          child: OrderItem(
            order: ordersList[index],
          ),
        );
      },
    );
  }
}
