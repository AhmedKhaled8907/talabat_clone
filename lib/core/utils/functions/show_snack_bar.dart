import 'package:flutter/material.dart';

void showSnackbar(BuildContext context, {required String message}) {
  ScaffoldMessenger.of(context)
    ..clearSnackBars()
    ..showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
}
