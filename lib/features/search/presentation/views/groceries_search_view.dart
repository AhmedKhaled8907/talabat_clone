import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/entities/empty_view_entity.dart';

import '../../../../core/common/widgets/empty_view.dart';

class GroceriesSearchView extends StatelessWidget {
  const GroceriesSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EmptyView(
          entity: emptyViewList[1],
        ),
      ],
    );
  }
}
