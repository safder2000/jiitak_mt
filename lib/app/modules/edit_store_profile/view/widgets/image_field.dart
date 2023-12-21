import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_mt/utils/constants.dart';
import 'package:jiitak_mt/utils/strings.dart';

class ImageField extends StatelessWidget {
  final String title;
  final String description;
  final List<String> images;

  ImageField(
      {required this.title, required this.description, required this.images});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: kDarkGray,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              "*",
              style: TextStyle(
                fontSize: 18,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            kWidth10,
            Visibility(
              visible: description.isNotEmpty,
              child: Text(
                "($description)",
                style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 156, 152, 150),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            for (int i = 0; i < 3; i++)
              _buildImageContainer(i < images.length ? images[i] : null),
          ],
        ),
      ],
    );
  }

  Widget _buildImageContainer(String? imagePath) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: 27 * Get.width / 100,
      height: 27 * Get.width / 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(style: BorderStyle.none),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (imagePath != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover, // Adjust the BoxFit property as needed
              ),
            ),
          if (imagePath == null)
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.asset(
                  addPhoto,
                  fit: BoxFit.fill, // Adjust the BoxFit property as needed
                ),
              ),
            ),
          if (imagePath != null)
            Positioned(
              right: 5,
              top: 5,
              child: GestureDetector(
                onTap: () {
                  // Handle remove image
                },
                child: Icon(
                  Icons.close,
                  color: kTextLightGray,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
