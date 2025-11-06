import 'package:flutter/material.dart';

void main() => runApp(ButtonsInteractionApp());

class ButtonsInteractionApp extends StatefulWidget {
  @override
  State<ButtonsInteractionApp> createState() => _ButtonsInteractionAppState();
}

class _ButtonsInteractionAppState extends State<ButtonsInteractionApp> {
  String message = 'Press a button below';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Buttons and User Interaction')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message, style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => setState(() => message = 'You pressed ElevatedButton!'),
                child: Text('Elevated Button'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () => setState(() => message = 'You pressed TextButton!'),
                child: Text('Text Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
