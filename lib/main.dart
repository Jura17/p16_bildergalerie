import 'package:flutter/material.dart';
import 'package:p16_bildergalerie/gallery_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Color.fromARGB(255, 241, 249, 255)),
        ),
        primaryColor: Color.fromARGB(255, 47, 142, 237),
        highlightColor: Color.fromARGB(255, 241, 249, 255),
        scaffoldBackgroundColor: Color.fromARGB(255, 217, 237, 254),
        disabledColor: Color.fromARGB(255, 13, 67, 120),
      ),
      home: GalleryApp(),
    );
  }
}
