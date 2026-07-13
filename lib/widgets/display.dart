import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String value;

  const Display({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Result: $value",
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}