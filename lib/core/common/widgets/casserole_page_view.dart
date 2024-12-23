import 'package:dots_indicator/dots_indicator.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class CasserolePageView extends StatefulWidget {
  const CasserolePageView({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<CasserolePageView> createState() => _CasserolePageViewState();
}

class _CasserolePageViewState extends State<CasserolePageView> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      final page = pageController.page?.round() ?? 0;
      if (currentPageIndex != page) {
        setState(() {
          currentPageIndex = page;
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView(
          controller: pageController,
          children: List.generate(
            6,
            (index) => widget.child,
          ),
        ),
        const SizedBox(height: AppSize.s8),
        DotsIndicator(
          dotsCount: 6,
          position: currentPageIndex,
          decorator: DotsDecorator(
            activeColor: AppColors.secondaryColor,
            color: AppColors.grey.withValues(
              alpha: AppSize.s0_35,
            ),
          ),
          onTap: (index) {
            pageController.animateToPage(
              index.toInt(),
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
      ],
    );
  }
}
