import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_mt/app/modules/edit_store_profile/view/edit_store_profile_screen.dart';
import 'package:jiitak_mt/app/modules/home/view/home_screen.dart';
import 'package:jiitak_mt/app/modules/main_screen/view/widgets/shadow_conatiner2.dart';
import 'package:jiitak_mt/app/modules/stamp_details/view/stamp_details_screen.dart';
import 'package:jiitak_mt/utils/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  static String routeName = "/main_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 14, 14, 14),
      body: Get.height < Get.width
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ShadowConatiner2(
                      onTap: () async {
                        // DialogHelper.showLoading();
                        Get.toNamed(HomeScreen.routeName);
                      },
                      color: kOrangeGradientDark,
                      icon: Icons.home,
                    ),
                    ShadowConatiner2(
                      onTap: () {
                        // DialogHelper.showLoading();
                        Get.toNamed(StampDetailsScreen.routeName);
                      },
                      color: kPurple,
                      icon: Icons.receipt,
                    ),
                    ShadowConatiner2(
                      onTap: () {
                        // DialogHelper.showLoading();

                        Get.toNamed(EditStoreProfileScreen.routeName);
                      },
                      color: kGreen,
                      icon: Icons.edit_note,
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ShadowConatiner2(
                      onTap: () async {
                        // DialogHelper.showLoading();
                        Get.toNamed(HomeScreen.routeName);
                      },
                      color: kOrangeGradientDark,
                      icon: Icons.home,
                    ),
                    ShadowConatiner2(
                      onTap: () {
                        // DialogHelper.showLoading();
                        Get.toNamed(StampDetailsScreen.routeName);
                      },
                      color: kPurple,
                      icon: Icons.receipt,
                    ),
                    ShadowConatiner2(
                      onTap: () {
                        // DialogHelper.showLoading();

                        Get.toNamed(EditStoreProfileScreen.routeName);
                      },
                      color: kGreen,
                      icon: Icons.edit_note,
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
