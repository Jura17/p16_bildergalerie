import 'package:flutter/material.dart';
import 'package:p16_bildergalerie/image_details_bottom_sheet.dart';

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
        elevation: 2,
        clipBehavior: Clip.antiAlias,
        child: Container(
          color: Theme.of(context).highlightColor,
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
      ),
      onTap: () => showBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return ImageDetailsBottomSheet(
                imagePath: imagePath,
                imageTitle: imageTitle,
                imageDate: imageDate,
                imageDescription: imageDescription);
          }),
    );
  }
}
