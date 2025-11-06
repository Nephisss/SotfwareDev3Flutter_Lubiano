import 'package:flutter/material.dart';

void main() => runApp(BasicWidgetsApp());

class BasicWidgetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activity 2 - Basic Widgets',
      home: Scaffold(
        appBar: AppBar(title: Text('Basic Widgets Practice')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Marlon Jay Lubiano',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '"Strive for progress, not perfection."',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 233, 68, 255),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
