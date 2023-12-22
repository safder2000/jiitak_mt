import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jiitak_mt/app/modules/home/controller/home_controller.dart';
import 'package:jiitak_mt/app/modules/home/view/widgets/custom_card.dart';
import 'package:jiitak_mt/app/modules/home/view/widgets/custom_date_container.dart';
import 'package:jiitak_mt/app/modules/home/view/widgets/custom_appbar.dart';
import 'package:jiitak_mt/app/modules/home/view/widgets/home_floating_btn.dart';
import 'package:jiitak_mt/utils/constants.dart';

import '../../../../utils/widgets/dialog_helper.dart';
import '../../edit_store_profile/view/edit_store_profile_screen.dart';
import '../../stamp_details/view/stamp_details_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  static String routeName = "/home_screen";
  final HomeController _ctrl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    DialogHelper.hideDialog();
    var srcWidth = Get.width;

    return Scaffold(
      floatingActionButton: HomeFloatingActionButton(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(srcWidth / 7),
        child: HomeAppbar(srcWidth: srcWidth),
      ),
      body: Column(
        children: [
          DateContainer(srcWidth: srcWidth),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    kHeight5,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var date in _ctrl.dates)
                            SingleDateBox(
                              dateNo: date['day'],
                              dateText: date['date'],
                              isSelected: date['isSelected'],
                            ),
                        ],
                      ),
                    ),
                    kHeight10,
                    kHeight5,
                    // Card gen
                    Column(
                      children: [
                        ...List.generate(
                            3,
                            (index) => HomeCard(
                                  srcWidth: srcWidth,
                                ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
