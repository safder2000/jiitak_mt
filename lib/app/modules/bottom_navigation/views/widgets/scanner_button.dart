import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/strings.dart';
import '../../../../../utils/widgets/common_gradients.dart';
import '../../controllers/bottom_nav_controller.dart';

class PositionedFloatingActionButton extends StatelessWidget {
  const PositionedFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    var ctrl = Get.put(BottomNavController());
    return Stack(
      children: [
        Obx(
          () => Positioned(
            bottom: ctrl.currentIndex == 2
                ? kBottomNavigationBarHeight / 2.1
                : kBottomNavigationBarHeight / 2.3,
            left: MediaQuery.of(context).size.width / 2 - 28.0,
            child: InkWell(
              onTap: () {
                ctrl.changePage(2);
              },
              child: Container(
                  width: ctrl.currentIndex == 2 ? 56 : 55,
                  height: ctrl.currentIndex == 2 ? 56 : 55,
                  decoration: BoxDecoration(
                    color: kOrangeGradientDark,
                    gradient: yellowGradient(multiplayer: 2),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      scanLineSvg,
                      width: ctrl.currentIndex == 2 ? 42 : 37,
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
