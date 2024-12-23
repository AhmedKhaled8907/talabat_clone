import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class CasseroleItem extends StatelessWidget {
  const CasseroleItem({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s4),
      child: AspectRatio(
        aspectRatio: 343 / 180,
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
