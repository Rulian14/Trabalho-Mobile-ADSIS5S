import 'package:flutter/material.dart';

class CalculatorDisplay extends StatelessWidget {
  final String text;

  const CalculatorDisplay({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
