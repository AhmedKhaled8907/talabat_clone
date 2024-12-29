part of 'rate_order_cubit.dart';

@immutable
class RateOrderState {
  final int rating;
  final List<String> selectedTopics;

  const RateOrderState({
    required this.rating,
    required this.selectedTopics,
  });

  RateOrderState copyWith({
    int? rating,
    List<String>? selectedTopics,
  }) {
    return RateOrderState(
      rating: rating ?? this.rating,
      selectedTopics: selectedTopics ?? this.selectedTopics,
    );
  }
}
