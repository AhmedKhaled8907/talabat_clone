import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/empty_view.dart';
import 'package:talabat_clone/core/utils/entities/empty_view_entity.dart';

class FlowersSearchView extends StatelessWidget {
  const FlowersSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        EmptyView(
          entity: emptyViewList[3],
        ),
      ],
    );
  }
}
