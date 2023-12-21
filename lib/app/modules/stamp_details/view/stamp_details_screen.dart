import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jiitak_mt/app/modules/stamp_details/view/widgets/acquisition_tile.dart';
import 'package:jiitak_mt/app/modules/stamp_details/view/widgets/appbar_stamp_details.dart';
import 'package:jiitak_mt/app/modules/stamp_details/view/widgets/star_card.dart';
import 'package:jiitak_mt/utils/constants.dart';

import '../../../../utils/widgets/carouel_slider/carousel_slider.dart';

class StampDetailsScreen extends StatelessWidget {
  static String routeName = "/stamp_details_screen";

  const StampDetailsScreen({super.key});
  // stamp_details_screen
  @override
  Widget build(BuildContext context) {
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

              viewportFraction: 0.8,
              enlargeCenterPage: false,
              // enableInfiniteScroll: false,
            ),
            items: List.generate(
              5, // Replace with the number of StartCard items you have
              (index) => const StartCard(),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      '2 / 2枚目',
                      style: TextStyle(color: kTextGray, fontSize: 13),
                    ),
                  ),
                  // Other widgets above the scrollable content

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 13),
                        child: Text(
                          'スタンプ獲得履歴',
                          style: TextStyle(
                              color: kTextGray,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      kWidth40,
                      SizedBox(
                        height: Get.height /
                            2.7, // Set a specific height for your ListView
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) =>
                              const AcquisitionTile(),
                          itemCount: 10,
                          separatorBuilder: (BuildContext context, int index) =>
                              const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Divider(
                                color: Color.fromARGB(255, 231, 231, 231)),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Other widgets below the scrollable content
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
