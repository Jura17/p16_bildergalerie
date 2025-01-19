import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyGallery"),
        ),
        body: Center(
          child: Column(
            children: [
              Image(image: AssetImage("assets/images/bike.jpeg")),
            ],
          ),
        ),
      ),
    );
  }
}
