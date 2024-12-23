import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/talabat_mart_List_view.dart';
import 'package:talabat_clone/features/talabat_mart/presentation/widgets/talabat_mart_header.dart';

class TalabatMartViewBody extends StatelessWidget {
  const TalabatMartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TalabatMartHeader(),
        _body(),
      ],
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p16,
        vertical: AppPadding.p16,
      ),
      child: Column(
        children: [
          TalabatMartListView(),
        ],
      ),
    );
  }
}
