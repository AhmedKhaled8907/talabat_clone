import 'package:talabat_clone/core/utils/resources/app_assets.dart';
import 'package:talabat_clone/core/utils/resources/app_strings.dart';

class RestaurantsEntity {
  final String name;
  final String image;
  final String time;

  RestaurantsEntity({
    required this.name,
    required this.image,
    required this.time,
  });
}

List<RestaurantsEntity> get restaurantsList => [
      RestaurantsEntity(
        name: AppStrings.alloBeirut,
        image: AppAssets.imagesHomeAlloBeirut,
        time: '30 min',
      ),
      RestaurantsEntity(
        name: AppStrings.laffah,
        image: AppAssets.imagesHomeLaffah,
        time: '25 min',
      ),
      RestaurantsEntity(
        name: AppStrings.falafil,
        image: AppAssets.imagesHomeFalafil,
        time: '45 min',
      ),
      RestaurantsEntity(
        name: AppStrings.barbar,
        image: AppAssets.imagesHomeBarbar,
        time: '35 min',
      ),
    ];
