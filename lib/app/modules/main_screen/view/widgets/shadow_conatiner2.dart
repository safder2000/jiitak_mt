import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants.dart';

class ShadowConatiner2 extends StatelessWidget {
  const ShadowConatiner2({
    required this.icon,
    required this.color,
    required this.onTap,
    super.key,
  });
  final IconData icon;
  final VoidCallback onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height < width ? height / 3 : width / 3,
        width: height < width ? height / 3 : width / 3,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            offset: Offset(0.5, 0.5),
            color: Color.fromARGB(255, 231, 231, 231),
            blurRadius: 10,
            spreadRadius: 8,
          ),
        ], borderRadius: BorderRadius.circular(20), color: color),
        child: Icon(
          icon,
          size: height < width ? height / 7 : width / 7,
          color: kWhite,
        ),
      ),
    );
  }
}
