import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/thin_divider.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/orders/presentation/views/widgets/order_list_view.dart';

class OrdersViewBody extends StatelessWidget {
  const OrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: ThinDivider(height: AppSize.s1),
        ),
        Expanded(
          child: OrderListView(),
        ),
        const SizedBox(height: AppSize.s24),
      ],
    );
  }
}
