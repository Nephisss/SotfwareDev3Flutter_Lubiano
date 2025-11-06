import 'package:flutter/material.dart';

void main() => runApp(ListViewApp());

class ListViewApp extends StatelessWidget {
  final items = [
    'Mango', 'Banana', 'Apple', 'Orange', 'Grapes',
    'Strawberry', 'Pineapple', 'Watermelon', 'Papaya', 'Kiwi'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ListView Example')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.check_circle_outline),
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
