import 'package:flutter/material.dart';
import 'package:test_app/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            text: "Hello, Everton!",
            topLeftColor: Colors.blueGrey,
            bottomRightColor: Colors.white),
      ),
    );
  }
}
