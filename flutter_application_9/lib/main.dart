import 'package:flutter/material.dart';

void main() => runApp(SimpleCalculatorApp());

class SimpleCalculatorApp extends StatefulWidget {
  @override
  State<SimpleCalculatorApp> createState() => _SimpleCalculatorAppState();
}

class _SimpleCalculatorAppState extends State<SimpleCalculatorApp> {
  final num1 = TextEditingController();
  final num2 = TextEditingController();
  double result = 0;

  void calculate(String op) {
    double a = double.tryParse(num1.text) ?? 0;
    double b = double.tryParse(num2.text) ?? 0;
    setState(() {
      if (op == '+') result = a + b;
      else if (op == '-') result = a - b;
      else if (op == '*') result = a * b;
      else if (op == '/') result = b != 0 ? a / b : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Simple Calculator')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(controller: num1, keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'Number 1')),
              TextField(controller: num2, keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'Number 2')),
              SizedBox(height: 20),
              Wrap(
                spacing: 10,
                children: [
                  ElevatedButton(onPressed: () => calculate('+'), child: Text('+')),
                  ElevatedButton(onPressed: () => calculate('-'), child: Text('-')),
                  ElevatedButton(onPressed: () => calculate('*'), child: Text('*')),
                  ElevatedButton(onPressed: () => calculate('/'), child: Text('/')),
                ],
              ),
              SizedBox(height: 20),
              Text('Result: $result', style: TextStyle(fontSize: 24)),
            ],
          ),
        ),
      ),
    );
  }
}
