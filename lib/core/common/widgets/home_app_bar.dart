import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
    this.title,
    this.actions,  this.isTitleCentred = false,
  });

  final Widget? title;
  final List<Widget>? actions;
  final bool isTitleCentred;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: isTitleCentred,
      title: title,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: AppColors.black,
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
