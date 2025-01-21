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
      debugShowCheckedModeBanner: false,
      home: GalleryApp(),
    );
  }
}

class GalleryApp extends StatefulWidget {
  const GalleryApp({super.key});
  static Color backGroundColor = Color.fromARGB(255, 80, 175, 129);

  @override
  State<GalleryApp> createState() => _GalleryAppState();
}

class _GalleryAppState extends State<GalleryApp> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fotogalerie Kaya Müller",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: GalleryApp.backGroundColor,
      ),
      body: [
        GalleryScreen(),
        AboutMeScreen(),
      ][activeIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Color.fromARGB(255, 48, 36, 73),
          backgroundColor: GalleryApp.backGroundColor,
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
