import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

class CasserolePageView extends StatefulWidget {
  const CasserolePageView({
    super.key,
    required this.child,
    required this.height,
  });

  final Widget child;
  final double height;
  @override
  State<CasserolePageView> createState() => _CasserolePageViewState();
}

class _CasserolePageViewState extends State<CasserolePageView> {
  late CarouselSliderController? pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSize.s8,
      children: [
        SizedBox(
          height: widget.height,
          width: double.infinity,
          child: CarouselSlider.builder(
            carouselController: pageController,
            options: CarouselOptions(
              aspectRatio: 343 / 180,
              viewportFraction: 0.95,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentPageIndex = index;
                });
              },
            ),
            itemCount: 6,
            itemBuilder: (
              BuildContext context,
              int itemIndex,
              int pageViewIndex,
            ) {
              return widget.child;
            },
          ),
        ),
        DotsIndicator(
          dotsCount: 6,
          position: currentPageIndex,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: AppColors.grey.withValues(
              alpha: AppSize.s0_25,
            ),
          ),
          onTap: (index) {
            pageController!.animateToPage(index);
            setState(() {
              currentPageIndex = index;
            });
          },
        ),
      ],
    );
  }
}
