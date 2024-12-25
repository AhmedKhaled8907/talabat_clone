import 'package:talabat_clone/core/utils/resources/app_assets.dart';

class EmptyViewEntity {
  final String image;
  final String title;
  final String subtitle;
  final String buttonText;

  EmptyViewEntity({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });
}

List<EmptyViewEntity> get emptyViewList => [
      EmptyViewEntity(
        image: AppAssets.imagesSearchGroceries,
        title: 'Shop for all daily essentials',
        subtitle: 'From groceries and fresh products to household supplies.',
        buttonText: 'Food',
      ),
      EmptyViewEntity(
        image: AppAssets.imagesSearchGroceries,
        title: 'Shop for all daily essentials',
        subtitle: 'From groceries and fresh products to household supplies.',
        buttonText: 'Groceries',
      ),
      EmptyViewEntity(
        image: AppAssets.imagesSearchHealth,
        title: 'Find health & wellness stores',
        subtitle: 'From groceries and fresh products to household supplies.',
        buttonText: 'Health & Wellness',
      ),
      EmptyViewEntity(
        image: AppAssets.imagesSearchFlowers,
        title: 'Find the perfect gift',
        subtitle:
            'Order beautiful flowers, bouquets, or plants for every occasion.',
        buttonText: 'Flowers',
      ),
      EmptyViewEntity(
        image: AppAssets.imagesSearchMoreShops,
        title: 'Explore far and wide',
        subtitle: 'Search for a range of products at a variety of shops.',
        buttonText: 'More products',
      ),
    ];
