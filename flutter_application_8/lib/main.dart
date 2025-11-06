import 'package:flutter/material.dart';

void main() => runApp(CustomCounterApp());

class CustomCounterApp extends StatefulWidget {
  @override
  State<CustomCounterApp> createState() => _CustomCounterAppState();
}

class _CustomCounterAppState extends State<CustomCounterApp> {
  int count = 0;

  void increment() => setState(() => count++);
  void reset() => setState(() => count = 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Custom Counter App')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$count', style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: increment,
                child: Text('Increment'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: reset,
                child: Text('Reset'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
