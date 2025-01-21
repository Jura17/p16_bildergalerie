import 'package:flutter/material.dart';

class ImageDetailsBottomSheet extends StatelessWidget {
  const ImageDetailsBottomSheet({
    super.key,
    required this.imagePath,
    required this.imageTitle,
    required this.imageDate,
    required this.imageDescription,
  });

  final String imagePath;
  final String imageTitle;
  final String imageDate;
  final String imageDescription;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 1.0,
        minChildSize: 1.0,
        builder: (context, scrollController) {
          return Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 400,
                      child: Image(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                    ImageDetailsTextSection(
                        imageTitle: imageTitle,
                        imageDate: imageDate,
                        imageDescription: imageDescription)
                  ]),
            ),
          );
        });
  }
}

class ImageDetailsTextSection extends StatelessWidget {
  const ImageDetailsTextSection({
    super.key,
    required this.imageTitle,
    required this.imageDate,
    required this.imageDescription,
  });

  final String imageTitle;
  final String imageDate;
  final String imageDescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          Text(
            imageDescription,
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
