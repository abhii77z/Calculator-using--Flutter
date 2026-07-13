import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const CalcButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(label, style: const TextStyle(fontSize: 18)),
    );
  }
}