import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/orders/domain/entities/order_entity.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.order,
  });

  final OrderEntity order;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: AppSize.s10,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(AppSize.s0_5),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.black.withValues(
                  alpha: 0.1,
                ),
              ),
              borderRadius: BorderRadius.circular(AppSize.s10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSize.s10),
              child: Image.asset(
                order.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: AppSize.s4,
            children: [
              Text(
                order.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.styleBold16(context),
              ),
              Text(
                order.status,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.styleRegular12(context).copyWith(
                  color: AppColors.deliveredColor,
                ),
              ),
              Text(
                order.time,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.styleRegular12(context).copyWith(
                  color: AppColors.grey,
                ),
              ),
              Text(
                order.orderId,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.styleRegular12(context).copyWith(
                  color: AppColors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReOrder(),
                  RateOrder(),
                ],
              )
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_ios,
            color: AppColors.grey,
            size: AppSize.s16,
          ),
        ),
      ],
    );
  }
}

class RateOrder extends StatelessWidget {
  const RateOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSize.s10),
      onTap: () {},
      child: Row(
        spacing: AppSize.s4,
        children: [
          Icon(
            Icons.tag_faces_sharp,
            color: AppColors.primaryColor,
            size: AppSize.s16,
          ),
          Text(
            "Rate order",
            style: AppStyles.styleRegular12(context).copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

class ReOrder extends StatelessWidget {
  const ReOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSize.s10),
      onTap: () {},
      child: Row(
        spacing: AppSize.s4,
        children: [
          Icon(
            Icons.replay,
            color: AppColors.primaryColor,
            size: AppSize.s16,
          ),
          Text(
            "Re-order",
            style: AppStyles.styleRegular12(context).copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
