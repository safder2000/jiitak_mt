import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants.dart';

class BottomNavController extends GetxController {
  var currentIndex = 0.obs;

  final List<Rx<Color>> iconColors = [
    kOrangeGradientDark.obs,
    kBlack.obs,
    kBlack.obs,
    kBlack.obs,
    kBlack.obs,
  ];

  final Color unSelectedIcon = kBlack;

  void changeIconColor() {
    for (int i = 0; i < iconColors.length; i++) {
      iconColors[i].value =
          (i == currentIndex.value) ? kOrangeGradientDark : unSelectedIcon;
    }
  }

  void changePage(int index) {
    currentIndex.value = index;
    changeIconColor();
  }
}
