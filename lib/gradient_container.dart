import 'package:flutter/material.dart';

import 'home_screen.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.colors, super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: HomeScreen()),
    );
  }
}
