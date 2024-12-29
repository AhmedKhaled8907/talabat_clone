import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'rate_order_state.dart';

class RateOrderCubit extends Cubit<RateOrderState> {
  RateOrderCubit()
      : super(
          RateOrderState(
            rating: 0,
            selectedTopics: [],
          ),
        );

  void updateRating(int rating) {
    emit(
      state.copyWith(
        rating: rating,
        selectedTopics: [],
      ),
    );
  }

  void toggleTopic(String topic) {
    final updatedTopics = List<String>.from(state.selectedTopics);
    if (updatedTopics.contains(topic)) {
      updatedTopics.remove(topic);
    } else {
      updatedTopics.add(topic);
    }
    emit(
      state.copyWith(selectedTopics: updatedTopics),
    );
  }
}
