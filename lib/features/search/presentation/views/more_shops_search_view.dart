import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/empty_view.dart';
import 'package:talabat_clone/core/utils/entities/empty_view_entity.dart';

class MoreShopsSearchView extends StatelessWidget {
  const MoreShopsSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EmptyView(
          entity: emptyViewList[4],
        ),
      ],
    );
  }
}
