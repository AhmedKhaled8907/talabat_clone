import 'package:flutter/material.dart';

class DeliveredByEntity {
  final String title;
  final String subtitle;
  final IconData icon;

  DeliveredByEntity({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}

List<DeliveredByEntity> deliveredByList = [
  DeliveredByEntity(
    title: 'Track your order with constant live updates',
    subtitle:
        'When you place your order, we can show you where it is in real-time',
    icon: Icons.location_on_outlined,
  ),
  DeliveredByEntity(
    title: 'On time delivery',
    subtitle:
        'When you place your order, we can show you what time it will arrive',
    icon: Icons.lock_clock_outlined,
  ),
  DeliveredByEntity(
    title: 'Our talabat chat agents are here for you',
    subtitle: 'If something goes wrong with your order, we can assist you',
    icon: Icons.headphones_rounded,
  ),
];
