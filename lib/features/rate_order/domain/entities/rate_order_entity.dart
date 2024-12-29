class RateOrderEntity {
  final int rating;
  final String image;
  final String title;

  RateOrderEntity({
    required this.rating,
    required this.image,
    required this.title,
  });
}

List<String> poorRatingList = [
  'Missing item',
  'Wrong item',
  'Items quality',
  'Items out of stock',
  'Freshness',
  'Overpriced',
];

List<String> notGoodRatingList = [
  'Missing item',
  'Wrong item',
  'Items quality',
  'Items out of stock',
  'Freshness',
  'Overpriced',
];

List<String> averageRatingList = [
  'Missing item',
  'Wrong item',
  'Items quality',
  'Items out of stock',
  'Freshness',
  'Overpriced',
];

List<String> veryGoodRatingList = [
  'Items quality',
  'Freshness',
  'Good price',
  'Good discounts',
  'Wide variety',
];

List<String> excellentRatingList = [
  'Items quality',
  'Freshness',
  'Good price',
  'Good discounts',
  'Wide variety',
];

String getTextForRating(int rating) {
  switch (rating) {
    case 0:
      return 'Please rate your experience';
    case 1:
      return 'Poor';
    case 2:
      return 'Not Good';
    case 3:
      return 'Average';
    case 4:
      return 'Very Good';
    case 5:
      return 'Excellent';
    default:
      return 'Please rate your experience';
  }
}

List<String> getItemsForRating(int rating) {
  switch (rating) {
    case 1:
      return poorRatingList;
    case 2:
      return notGoodRatingList;
    case 3:
      return averageRatingList;
    case 4:
      return veryGoodRatingList;
    case 5:
      return excellentRatingList;
    default:
      return [];
  }
}
