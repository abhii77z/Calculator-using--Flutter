import 'package:flutter/material.dart';
import '../services/calculator_service.dart';
import '../widgets/calc_button.dart';
import '../widgets/display.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final CalculatorService calculator = CalculatorService();

  double num1 = 0;
  double num2 = 0;
  String result = "0";

  void calculate(String op) {
    setState(() {
      try {
        switch (op) {
          case '+':
            result = calculator.add(num1, num2).toString();
            break;
          case '-':
            result = calculator.subtract(num1, num2).toString();
            break;
          case '*':
            result = calculator.multiply(num1, num2).toString();
            break;
          case '/':
            result = calculator.divide(num1, num2).toString();
            break;
        }
      } catch (e) {
        result = "Error";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // INPUT 1
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Number 1"),
              onChanged: (val) => num1 = double.tryParse(val) ?? 0,
            ),

            // INPUT 2
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Number 2"),
              onChanged: (val) => num2 = double.tryParse(val) ?? 0,
            ),

            const SizedBox(height: 20),

            // BUTTONS
            Wrap(
              spacing: 10,
              children: [
                CalcButton(label: "+", onTap: () => calculate('+')),
                CalcButton(label: "-", onTap: () => calculate('-')),
                CalcButton(label: "*", onTap: () => calculate('*')),
                CalcButton(label: "/", onTap: () => calculate('/')),
              ],
            ),

            const SizedBox(height: 20),

            // RESULT DISPLAY
            Display(value: result),
          ],
        ),
      ),
    );
  }
}