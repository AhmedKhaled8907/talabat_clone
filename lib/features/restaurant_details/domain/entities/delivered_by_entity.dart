import 'package:talabat_clone/core/utils/resources/app_assets.dart';

class DeliveredByEntity {
  final String title;
  final String subtitle;
  final String image;

  DeliveredByEntity({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

List<DeliveredByEntity> deliveredByList = [
  DeliveredByEntity(
    title: 'Track your order with constant live updates',
    subtitle:
        'When you place your order, we can show you where it is in real-time',
    image: AppAssets.imagesFoodMap,
  ),
  DeliveredByEntity(
    title: 'On time delivery',
    subtitle:
        'When you place your order, we can show you what time it will arrive',
    image: AppAssets.imagesFoodClock,
  ),
  DeliveredByEntity(
    title: 'Our talabat chat agents are here for you',
    subtitle: 'If something goes wrong with your order, we can assist you',
    image: AppAssets.imagesFoodHeadphones,
  ),
];
