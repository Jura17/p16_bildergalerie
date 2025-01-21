import 'package:flutter/material.dart';
import 'package:p16_bildergalerie/about_me_screen.dart';
import 'package:p16_bildergalerie/gallery_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GalleryApp(),
    );
  }
}

class GalleryApp extends StatefulWidget {
  const GalleryApp({super.key});

  @override
  State<GalleryApp> createState() => _GalleryAppState();
}

class _GalleryAppState extends State<GalleryApp> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyGallery"),
      ),
      body: [
        GalleryScreen(),
        AboutMeScreen(),
      ][activeIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: activeIndex,
          onTap: (index) {
            setState(() {
              activeIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.image),
              label: "Bilder",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Über mich",
            ),
          ]),
    );
  }
}
