import 'package:flutter/material.dart';
import 'package:talabat_clone/core/common/widgets/thin_divider.dart';
import 'package:talabat_clone/core/utils/resources/app_colors.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';
import 'package:talabat_clone/core/utils/resources/app_styles.dart';
import 'package:talabat_clone/core/utils/resources/app_values.dart';

Future<dynamic> selectDeliveryTime(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: AppColors.black.withValues(
      alpha: AppSize.s0_75,
    ),
    builder: (context) {
      return Center(
        child: Dialog(
          backgroundColor: AppColors.white,
          insetPadding: const EdgeInsets.all(
            AppPadding.p24,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppSize.s10,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(
              AppPadding.p16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppStrings.selectDeliveryTime,
                  textAlign: TextAlign.center,
                  style: AppStyles.styleBold16(context),
                ),
                const SizedBox(height: AppSize.s8),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: context.height * 0.65,
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return const ThinDivider(
                        height: AppSize.s8,
                      );
                    },
                    itemCount: deliveryList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        borderRadius: BorderRadius.circular(
                          AppSize.s8,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: _selectDeliveryTimeItem(
                          deliveryList[index],
                          context,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget _selectDeliveryTimeItem(String title, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(AppPadding.p4),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.start,
          style: AppStyles.styleMedium14(context),
        ),
      ],
    ),
  );
}

final List<String> deliveryList = [
  '19-09-2023 13:35',
  '19-09-2023 14:35',
  '19-09-2023 15:35',
  '19-09-2023 16:35',
  '19-09-2023 17:35',
  '19-09-2023 18:35',
  '19-09-2023 19:35',
  '19-09-2023 20:35',
  '19-09-2023 21:35',
  '19-09-2023 22:35',
  '19-09-2023 23:35',
  '19-09-2023 00:35',
  '19-09-2023 01:35',
  '19-09-2023 02:35',
];
