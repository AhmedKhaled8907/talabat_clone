import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/auth_app_bar.dart';
import 'package:talabat_clone/core/common/widgets/custom_orange_button.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

import 'widgets/more_notes_text_field.dart';

class MoreNotesView extends StatelessWidget {
  const MoreNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: AppSize.s16,
                children: [
                  Text(
                    'Any more notes?',
                    style: AppStyles.styleBold16(context),
                  ),
                  MoreNotesTextField(),
                ],
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Spacer(),
                  CustomOrangeButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    title: 'Submit',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
