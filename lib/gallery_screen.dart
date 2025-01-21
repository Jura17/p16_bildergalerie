import 'package:flutter/material.dart';
import 'package:p16_bildergalerie/gallery_data.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        children: [
          for (int i = 0; i < galleryData.length; i++) galleryData[i],
        ],
      ),
    );
  }
}
