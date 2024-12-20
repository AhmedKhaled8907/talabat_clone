import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class CasseroleItem extends StatelessWidget {
  const CasseroleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s8),
      child: AspectRatio(
        aspectRatio: 343 / 180,
        child: Image.asset(
          AppAssets.imagesHomeCasserole,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
