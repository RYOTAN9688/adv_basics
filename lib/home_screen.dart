import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
        ),
        const SizedBox(height: 80),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 237, 223, 252),
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 18),
          ),
          child: const Text('Start Quiz'),
        )
      ],
    );
  }
}
