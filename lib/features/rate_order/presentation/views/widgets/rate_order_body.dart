import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_button.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_routes.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/rate_order/domain/entities/rate_order_entity.dart';
import 'package:talabat_clone/features/rate_order/presentation/manager/rate_order_cubit/rate_order_cubit.dart';
import 'package:talabat_clone/features/rate_order/presentation/views/widgets/rate_order_wrap.dart';

import '../../../../../core/utils/functions/rating_bar.dart';

class RateOrderBody extends StatelessWidget {
  const RateOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RateOrderCubit, RateOrderState>(
      builder: (context, state) {
        final cubit = context.read<RateOrderCubit>();
        final items = getItemsForRating(state.rating);

        return Padding(
          padding: const EdgeInsets.all(AppPadding.p16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSize.s32,
                  children: [
                    Center(
                      child: Image.asset(
                        AppAssets.imagesTalabatMartTalabat,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      AppStrings.whatDidYouLike,
                      style: AppStyles.styleBold20(context),
                    ),
                    ratingBar(context),
                    Text(
                      getTextForRating(state.rating),
                      style: AppStyles.styleMedium14(context).copyWith(
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    if (state.rating > 0)
                      RateOrderWrap(
                        items: items,
                        cubit: cubit,
                      ),
                    InkWell(
                      borderRadius: BorderRadius.circular(AppSize.s50),
                      onTap: () {
                        GoRouter.of(context).push(AppRoutes.kMoreNotesRoute);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(AppPadding.p8),
                        child: Text(
                          AppStrings.anyMoreNotes,
                          style: AppStyles.styleMedium14(context).copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const Spacer(),
                    CustomOrangeButton(
                      onPressed: () {},
                      title: 'Next',
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
