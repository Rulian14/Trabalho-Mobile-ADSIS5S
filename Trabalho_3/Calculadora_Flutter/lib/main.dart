import 'package:flutter/material.dart';
import 'tela_calculadora.dart';

void main() {
  runApp(const CalculadoraApp());
}

class CalculadoraApp extends StatelessWidget {
  const CalculadoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora Flutter',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: CalculatorScreen(),
    );
  }
}