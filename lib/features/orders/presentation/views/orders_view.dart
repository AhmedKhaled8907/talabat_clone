import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/auth_app_bar.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/features/orders/presentation/views/widgets/orders_view_body.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(
        title: AppStrings.orders,
        isBackShown: false,
      ),
      body: OrdersViewBody(),
    );
  }
}
