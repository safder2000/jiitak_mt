import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_mt/app/modules/main_screen/view/main_screen.dart';

import 'app/modules/bottom_navigation/views/bottom_nav_screen.dart';
import 'utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String routeName = "/splash_screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkUserLoggedIn();
  }

  Future<void> checkUserLoggedIn() async {
    await Future.delayed(const Duration(seconds: 2))
        .then((value) => Get.offAndToNamed(MainScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        decoration: const BoxDecoration(color: kOrangeGradientDark),
        child: const Center(
          child: Text(
            'Jiitak',
            style: TextStyle(color: kWhite, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
