import 'package:talabat_clone/core/utils/resources/app_assets.dart';

class OrderEntity {
  final String image;
  final String name;
  final String status;
  final String time;
  final String orderId;

  OrderEntity({
    required this.image,
    required this.name,
    required this.status,
    required this.time,
    required this.orderId,
  });
}

List<OrderEntity> get ordersList => [
      OrderEntity(
        image: AppAssets.imagesFoodJunior,
        name: 'Mandarin Oak, Jumeirah 1',
        status: 'Delivered',
        time: '24 September 2023 16:17',
        orderId: '1284566612',
      ),
      OrderEntity(
        image: AppAssets.imagesFoodJunior,
        name: 'Junior Seafood, Jumeirah 3',
        status: 'Delivered',
        time: '24 September 2023 16:17',
        orderId: '1284566612',
      ),
      OrderEntity(
        image: AppAssets.imagesFoodSushi,
        name: 'Sushi Counter, Business Bay 4',
        status: 'Delivered',
        time: '24 September 2023 16:17',
        orderId: '1284566612',
      ),
      OrderEntity(
        image: AppAssets.imagesFoodPizza2Go,
        name: 'Pizza 2 Go',
        status: 'Delivered',
        time: '24 September 2023 16:17',
        orderId: '1284566612',
      ),
      OrderEntity(
        image: AppAssets.imagesFoodSubway,
        name: 'Subway',
        status: 'Delivered',
        time: '24 September 2023 16:17',
        orderId: '1284566612',
      ),
      OrderEntity(
        image: AppAssets.imagesFoodJunior,
        name: 'Mandarin Oak, Jumeirah 1',
        status: 'Delivered',
        time: '24 September 2023 16:17',
        orderId: '1284566612',
      ),
      OrderEntity(
        image: AppAssets.imagesFoodJunior,
        name: 'Junior Seafood, Jumeirah 3',
        status: 'Delivered',
        time: '24 September 2023 16:17',
        orderId: '1284566612',
      ),
      OrderEntity(
        image: AppAssets.imagesFoodSushi,
        name: 'Sushi Counter, Business Bay 4',
        status: 'Delivered',
        time: '24 September 2023 16:17',
        orderId: '1284566612',
      ),
      OrderEntity(
        image: AppAssets.imagesFoodPizza2Go,
        name: 'Pizza 2 Go',
        status: 'Delivered',
        time: '24 September 2023 16:17',
        orderId: '1284566612',
      ),
      OrderEntity(
        image: AppAssets.imagesFoodSubway,
        name: 'Subway',
        status: 'Delivered',
        time: '24 September 2023 16:17',
        orderId: '1284566612',
      ),
    ];
