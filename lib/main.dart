import 'package:flutter/material.dart';
import 'package:p16_bildergalerie/gallery_theme.dart';
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
          backgroundColor: GalleryColors.primaryColor,
          titleTextStyle: GalleryTextStyles.appBarTitleStyle,
        ),
        primaryColor: GalleryColors.primaryColor,
        highlightColor: GalleryColors.highlightColor,
        scaffoldBackgroundColor: GalleryColors.scaffoldBGColor,
        disabledColor: GalleryColors.disabledColor,
      ),
      home: GalleryApp(),
    );
  }
}
