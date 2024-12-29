import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_clone/core/common/widgets/auth_app_bar.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/features/rate_order/presentation/manager/rate_order_cubit/rate_order_cubit.dart';
import 'package:talabat_clone/features/rate_order/presentation/views/widgets/rate_order_body.dart';

class RateOrderView extends StatelessWidget {
  const RateOrderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(
        title: AppStrings.rateOrder,
      ),
      body: BlocProvider(
        create: (_) => RateOrderCubit(),
        child: RateOrderBody(),
      ),
    );
  }
}
