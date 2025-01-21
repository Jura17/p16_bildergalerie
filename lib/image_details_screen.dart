import 'package:flutter/material.dart';

class ImageDetailsScreen extends StatelessWidget {
  const ImageDetailsScreen({
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 241, 249, 255)),
        title: Text(
          "Details",
          style: TextStyle(
              color: Theme.of(context).highlightColor,
              fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
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
      ),
    );
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
