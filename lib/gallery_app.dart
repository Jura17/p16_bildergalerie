import 'package:flutter/material.dart';
import 'package:p16_bildergalerie/about_me_screen.dart';
import 'package:p16_bildergalerie/gallery_screen.dart';

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
      appBar: AppBar(title: Text("Fotogalerie Kaya Müller")),
      body: [
        GalleryScreen(),
        AboutMeScreen(),
      ][activeIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).highlightColor,
          unselectedItemColor: Theme.of(context).disabledColor,
          backgroundColor: Theme.of(context).primaryColor,
          currentIndex: activeIndex,
          onTap: (index) {
            setState(() {
              // stellt sicher, dass offene bottomSheets geschlossen werden, bevor wir zur anderen page wechseln
              if (Navigator.of(context).canPop()) Navigator.pop(context);
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
