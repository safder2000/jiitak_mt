import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants.dart';

class SumbitBtn extends StatelessWidget {
  const SumbitBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(style: BorderStyle.none),
      ),
      width: Get.width, // Set the desired width
      height: Get.width / 7, // Set the desired height
      child: ElevatedButton(
        onPressed: () {
          // Handle button press
        },
        style: ElevatedButton.styleFrom(
          elevation: 5,
          backgroundColor: Colors.red, // Set the button color to red
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Set the border radius
          ),
        ),
        child: Text(
          '編集を保存',
          style: TextStyle(
              fontSize: 20, color: kWhite, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
