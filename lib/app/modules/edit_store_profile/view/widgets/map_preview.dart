import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/strings.dart';

class MapPreview extends StatelessWidget {
  const MapPreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Get.width / 1.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage(googleMapPreview),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
