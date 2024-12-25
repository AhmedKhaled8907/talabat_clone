import 'package:flutter/material.dart';

import '../../../../core/common/widgets/empty_view.dart';
import '../../../../core/utils/entities/empty_view_entity.dart';

class HealthSearchView extends StatelessWidget {
  const HealthSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EmptyView(
          entity: emptyViewList[2],
        ),
      ],
    );
  }
}
