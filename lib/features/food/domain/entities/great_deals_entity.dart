import 'package:talabat_clone/core/utils/resources/app_assets.dart';

class GreatDealsEntity {
  final String image;
  final String title;
  final String subtitle;
  final num? rating;
  final num? numberOfRatings;

  GreatDealsEntity({
    required this.image,
    required this.title,
    required this.subtitle,
    this.rating = 0.0,
    this.numberOfRatings = 0,
  });
}

List<GreatDealsEntity> get greatDealsList => [
      GreatDealsEntity(
        image: AppAssets.imagesFoodMalak,
        title: 'Malak Al Tawouk',
        subtitle: 'Lebanese, Shawarma',
        rating: 4.5,
        numberOfRatings: 1000,
      ),
      GreatDealsEntity(
        image: AppAssets.imagesFoodPoke,
        title: 'Poke & Co',
        subtitle: 'Poke, Healthy',
        rating: 4.5,
        numberOfRatings: 99,
      ),
      GreatDealsEntity(
        image: AppAssets.imagesFoodHealthy,
        title: 'Healthy Little Secrets',
        subtitle: 'Healthy, Breakfast',
        rating: 4.0,
        numberOfRatings: 500,
      ),
      GreatDealsEntity(
        image: AppAssets.imagesFoodMalak,
        title: 'Malak Al Tawouk',
        subtitle: 'Lebanese, Shawarma',
        rating: 4.5,
        numberOfRatings: 1000,
      ),
    ];
