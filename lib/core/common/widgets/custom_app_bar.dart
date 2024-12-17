import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.isTitleShown = true,
    this.title,
  });

  final bool isTitleShown;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: isTitleShown
          ? Text(
              title ?? '',
              style: AppStyles.styleBold16(context),
            )
          : null,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
