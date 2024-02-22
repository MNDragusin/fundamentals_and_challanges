import 'package:flutter/material.dart';
import 'package:fundamentals_and_challanges/roll_the_dice/gradient_container.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors.teal, Colors.tealAccent),
      ),
    );
  }
}
