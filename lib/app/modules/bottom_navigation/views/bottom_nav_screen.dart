import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jiitak_mt/app/modules/bottom_navigation/views/widgets/scanner_button.dart';
import 'package:jiitak_mt/utils/constants.dart';

import '../../../../utils/strings.dart';
import '../../home/view/home_screen.dart';
import '../../page2/view/page2.dart';
import '../../page3/view/page3.dart';
import '../../page4/view/page4.dart';
import '../controllers/bottom_nav_controller.dart';

class BottomNavScreen extends StatefulWidget {
  static String routeName = "/bottom_nav_screen";

  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: PositionedFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Obx(
          () => _buildPage(Get.find<BottomNavController>().currentIndex.value)),
      bottomNavigationBar: BottomNavigation(),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return Page2();
      case 2:
        return Page3();
      case 3:
        return Page4();
      case 4:
        return Page4();
      default:
        return Container();
    }
  }
}
// bottom_navigation.dart

class BottomNavigation extends StatelessWidget {
  final BottomNavController _controller = Get.put(BottomNavController());

  BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(color: kOrangeGradientDark),
        selectedIconTheme: const IconThemeData(color: kOrangeGradientDark),
        selectedItemColor: kOrangeGradientDark,

        // unselectedLabelStyle: const TextStyle(color: kBlack),
        // unselectedIconTheme: const IconThemeData(color: kBlack),
        unselectedItemColor: kBlack,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _controller.currentIndex.value,
        onTap: (index) => _controller.changePage(index),
        items: [
          BottomNavigationBarItem(
            label: 'さがす',
            icon: SvgPicture.asset(
              searchSvg,
              color: _controller.iconColors[0].value,
              width: 24,
              height: 24,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              businessSvg,
              color: _controller.iconColors[1].value,
              width: 20,
              height: 20,
            ),
            label: 'お仕事',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              businessSvg,
              color: _controller.iconColors[2].value,
              width: 20,
              height: 20,
            ),
            label: '打刻する',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              chatSvg,
              width: 24,
              color: _controller.iconColors[3].value,
              height: 24,
            ),
            label: 'チャット',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              accountSvg,
              width: 24,
              color: _controller.iconColors[4].value,
              height: 24,
            ),
            label: 'マイページ',
          ),
        ],
      ),
    );
  }
}
