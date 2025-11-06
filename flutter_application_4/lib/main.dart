import 'package:flutter/material.dart';

void main() => runApp(ImagesAndIconsApp());

class ImagesAndIconsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activity 4 - Images and Icons',
      home: Scaffold(
        appBar: AppBar(title: Text('Images and Icons')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Local image
              Image.asset('assets/my_local_image.png', width: 120),
              SizedBox(height: 10),

              // Network image
              Image.network(
                'https://flutter.dev/images/flutter-logo-sharing.png',
                width: 120,
              ),
              SizedBox(height: 10),

              // Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite, color: Colors.red, size: 40),
                  SizedBox(width: 20),
                  Icon(Icons.star, color: Colors.amber, size: 40),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
