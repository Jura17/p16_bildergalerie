import 'package:flutter/material.dart';

class GalleryItem extends StatelessWidget {
  final String imageTitle;
  final String imageDate;
  final String imageDescription;
  final String imagePath;
  const GalleryItem(
      {super.key,
      required this.imageTitle,
      required this.imageDate,
      required this.imageDescription,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(imageTitle)),
            )
          ],
        ),
      ),
      onTap: () => showBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return SingleChildScrollView(
              child: Column(children: [
                Image(image: AssetImage(imagePath)),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        imageTitle,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        imageDate,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      Text(imageDescription)
                    ],
                  ),
                )
              ]),
            );
          }),
    );
  }
}
