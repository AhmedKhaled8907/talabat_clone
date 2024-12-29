import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/rate_order/presentation/manager/rate_order_cubit/rate_order_cubit.dart';
import 'package:talabat_clone/features/rate_order/presentation/views/widgets/rate_order_item.dart';

class RateOrderWrap extends StatelessWidget {
  const RateOrderWrap({
    super.key,
    required this.items,
    required this.cubit,
  });

  final List<String> items;
  final RateOrderCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: AppSize.s8,
      runSpacing: AppSize.s8,
      children: items
          .map(
            (e) => InkWell(
              onTap: () {
                cubit.toggleTopic(e);
              },
              borderRadius: BorderRadius.circular(AppSize.s16),
              child: RateOrderItem(
                selectedTopics: cubit.state.selectedTopics,
                index: e,
              ),
            ),
          )
          .toList(),
    );
  }
}
