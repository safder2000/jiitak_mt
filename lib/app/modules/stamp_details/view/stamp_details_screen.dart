import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jiitak_mt/app/modules/stamp_details/controller/stamp_details_controller.dart';
import 'package:jiitak_mt/app/modules/stamp_details/view/widgets/acquisition_tile.dart';
import 'package:jiitak_mt/app/modules/stamp_details/view/widgets/appbar_stamp_details.dart';

import 'package:jiitak_mt/utils/constants.dart';

import '../../../../utils/widgets/carouel_slider/carousel_slider.dart';
import '../../../../utils/widgets/dialog_helper.dart';

class StampDetailsScreen extends StatelessWidget {
  static String routeName = "/stamp_details_screen";
  StampDetailsScreen({super.key});
  final ctrl = Get.put(StampDetailController());

  // stamp_details_screen
  @override
  Widget build(BuildContext context) {
    DialogHelper.hideDialog();
    return Scaffold(
      backgroundColor: kWhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Get.width / 6),
        child: const StampDetailsAppBar(),
      ),
      body: Column(
        children: [
          const AppbarExtraWithCurve(),
          CarouselSlider(
            options: CarouselOptions(
              height: Get.width / 1.6,
              onPageChanged: (index, reason) {
                ctrl.currentStarCardIndex.value = index + 1;
              },
              viewportFraction: 0.84,
              enlargeCenterPage: false,
              // enableInfiniteScroll: false,
            ),
            items: List.generate(
              ctrl.StarCardList
                  .length, // Replace with the number of StartCard items you have
              (index) => ctrl.StarCardList.value[index],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: Obx(
                      () => Text(
                        '${ctrl.currentStarCardIndex} / ${ctrl.StarCardList.length}枚目',
                        style: const TextStyle(color: kTextGray, fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Text(
                  'スタンプ獲得履歴',
                  style: TextStyle(
                      color: kTextGray,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Flexible(
            flex: 2,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    kWidth40,

                    ...List.generate(
                        growable: false, 10, (index) => const AcquisitionTile())
                    // SizedBox(
                    //   // height: Get.height /
                    //   //     2.7, // Set a specific height for your ListView
                    //   child: Expanded(
                    //     child: ListView.separated(
                    //       shrinkWrap: true,
                    //       itemBuilder: (BuildContext context, int index) =>
                    //           const AcquisitionTile(),
                    //       itemCount: 10,
                    //       separatorBuilder:
                    //           (BuildContext context, int index) =>
                    //               const Padding(
                    //         padding: EdgeInsets.symmetric(horizontal: 12),
                    //         child: Divider(
                    //             color: Color.fromARGB(255, 231, 231, 231)),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
