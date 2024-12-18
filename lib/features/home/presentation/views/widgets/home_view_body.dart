import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/home/presentation/views/widgets/home_banner.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.s16,
      children: [
        HomeBanner(),
      ],
    );
  }
}
