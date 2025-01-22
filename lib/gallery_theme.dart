import 'package:flutter/material.dart';

class GalleryColors {
  static const Color primaryColor = Color.fromARGB(255, 47, 142, 237);
  static const Color highlightColor = Color.fromARGB(255, 241, 249, 255);
  static const Color scaffoldBGColor = Color.fromARGB(255, 217, 237, 254);
  static const Color disabledColor = Color.fromARGB(255, 13, 67, 120);
}

class GalleryTextStyles {
  static const TextStyle appBarTitleStyle = TextStyle(
    color: GalleryColors.highlightColor,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
}
