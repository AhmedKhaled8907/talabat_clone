import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/auth_app_bar.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/features/account_settings/presentation/views/widgets/offers_view_body.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(
        isBackShown: false,
        title: AppStrings.offers,
      ),
      body: OffersViewBody(),
    );
  }
}
