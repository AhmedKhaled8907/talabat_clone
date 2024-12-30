import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';

import '../../../features/rate_order/presentation/manager/rate_order_cubit/rate_order_cubit.dart';

Widget ratingBar(BuildContext context) {
  return RatingBar.builder(
    initialRating: 0,
    minRating: 1,
    direction: Axis.horizontal,
    itemCount: 5,
    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
    itemBuilder: (context, _) => Icon(
      Icons.star,
      color: AppColors.starColor,
    ),
    onRatingUpdate: (rating) {
      context.read<RateOrderCubit>().updateRating(rating.toInt());
    },
  );
}
