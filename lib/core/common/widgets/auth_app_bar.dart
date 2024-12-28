import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppBar({
    super.key,
    this.isTitleShown = true,
    this.isBackShown = true,
    this.title,
  });

  final bool isTitleShown;
  final bool isBackShown;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0, 
      title: isTitleShown
          ? Text(
              title ?? '',
              style: AppStyles.styleBold16(context),
            )
          : null,
      centerTitle: true,
      leading: isBackShown
          ? GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
