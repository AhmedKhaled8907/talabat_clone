import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/home_app_bar.dart';
import 'package:talabat_clone/core/common/widgets/search_text_field.dart';
import 'package:talabat_clone/features/search/presentation/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SearchViewBody(),
    );
  }

  HomeAppBar _buildAppBar(BuildContext context) {
    return HomeAppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: SearchTextField(),
          ),
        ],
      ),
    );
  }
}
