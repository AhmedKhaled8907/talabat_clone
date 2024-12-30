import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';
import 'package:talabat_clone/features/restaurant_details/domain/entities/delivered_by_entity.dart';
import 'package:talabat_clone/features/restaurant_details/presentation/widgets/delivered_by_item.dart';

class DeliveryDetailsItem extends StatelessWidget {
  const DeliveryDetailsItem({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final Widget subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppStyles.styleMedium12(context).copyWith(
              color: AppColors.blackWithOpacity,
            ),
          ),
          subtitle,
        ],
      ),
    );
  }
}

Future<dynamic> deliveredByTalabat(BuildContext context) async {
  return await showModalBottomSheet(
    backgroundColor: AppColors.white,
    isScrollControlled: true,
    elevation: 0,
    context: context,
    builder: (context) {
      return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _image(context),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        AppStrings.deliveredBy,
                        style: AppStyles.styleBold16(context),
                      ),
                      Center(
                        child: SvgPicture.asset(
                          AppAssets.imagesSplashLogoOrange,
                          height: AppSize.s14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSize.s8),
                  Text(
                    AppStrings.bestExperience,
                    style: AppStyles.styleMedium12(context),
                  ),
                  const SizedBox(height: AppSize.s16),
                  ...deliveredByList.map(
                    (e) => DeliveredByItem(
                      entity: e,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}

GestureDetector _image(BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.pop(context),
    child: ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(AppSize.s24),
        topRight: Radius.circular(AppSize.s24),
      ),
      child: Image.asset(
        AppAssets.imagesFoodDeliveredByTalabat,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    ),
  );
}
