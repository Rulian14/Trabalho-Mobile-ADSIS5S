import 'package:flutter/material.dart';
import 'botao_calculadora.dart';
import 'calculadora_display.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _history = '';
  String _currentValue = '0';
  double _firstOperand = 0;
  String _operator = '';

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        _currentValue = '0';
        _history = '';
        _firstOperand = 0;
        _operator = '';
      } else if (buttonText == '+' || buttonText == '-' || buttonText == 'x' || buttonText == '/') {
        _firstOperand = double.tryParse(_currentValue) ?? 0;
        _operator = buttonText;
        _history = '$_currentValue $_operator';
        _currentValue = '0';
      } else if (buttonText == '=') {
        double secondOperand = double.tryParse(_currentValue) ?? 0;
        double result = 0;

        if (_operator == '+') result = _firstOperand + secondOperand;
        if (_operator == '-') result = _firstOperand - secondOperand;
        if (_operator == 'x') result = _firstOperand * secondOperand;
        if (_operator == '/') result = secondOperand == 0 ? 0 : _firstOperand / secondOperand; // Evita divisão por zero

        // Formata para remover o ".0" se for um número inteiro
        _currentValue = result.toStringAsFixed(result.truncateToDouble() == result ? 0 : 2);
        _history = '';
        _operator = '';
      } else {
        if (_currentValue == '0') {
          _currentValue = buttonText;
        } else {
          _currentValue += buttonText;
        }
      }
    });
  }

  Widget _buildButtonRow(List<String> buttons) {
    return Row(
      children: buttons.map((text) {
        Color bgColor = Colors.grey[800]!;
        Color txtColor = Colors.white;

        // Estilização diferenciada para operações e botão clear
        if (text == 'C') {
          bgColor = Colors.redAccent;
        } else if (['+', '-', 'x', '/', '='].contains(text)) {
          bgColor = Colors.orange;
        }

        return CalculatorButton(
          text: text,
          buttonColor: bgColor,
          textColor: txtColor,
          callback: _buttonPressed,
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Calculadora'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Exibe o histórico da operação
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 12.0, top: 24.0),
            child: Text(
              _history,
              style: const TextStyle(color: Colors.grey, fontSize: 24),
            ),
          ),
          // Componente de Display Reutilizável
          CalculatorDisplay(text: _currentValue),
          
          // Linhas de botões
          _buildButtonRow(['7', '8', '9', '/']),
          _buildButtonRow(['4', '5', '6', 'x']),
          _buildButtonRow(['1', '2', '3', '-']),
          _buildButtonRow(['C', '0', '=', '+']),
        ],
      ),
    );
  }
}