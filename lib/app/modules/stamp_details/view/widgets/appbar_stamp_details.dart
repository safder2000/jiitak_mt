import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants.dart';

class StampDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const StampDetailsAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: kLightPurple,
      // shape: const ContinuousRectangleBorder(
      //   borderRadius: BorderRadius.only(
      //     bottomLeft: Radius.circular(20.0),
      //     bottomRight: Radius.circular(20.0),
      //   ),
      // ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48),
                  color: kPurple,
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: kWhite,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
          const Text(
            'スタンプカード詳細',
            style: TextStyle(color: kWhite, fontSize: 15),
          ),
          IconButton(
            icon: const Icon(
              Icons.remove_circle_outline,
              size: 28,
              color: kWhite,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class AppBarExtra extends StatelessWidget {
  const AppBarExtra({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: const BoxDecoration(color: kLightPurple),
      height: 100,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Mer キッチン',
                  style: TextStyle(
                      fontSize: 16, color: kWhite, fontWeight: FontWeight.bold),
                ),
                RichText(
                    text: const TextSpan(
                  // style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: '現在の獲得数 ',
                      style: TextStyle(fontSize: 14, color: kWhite),
                    ),
                    TextSpan(
                      text: '30',
                      style: TextStyle(
                          fontSize: 28,
                          color: kWhite,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' 個',
                      style: TextStyle(
                          fontSize: 16,
                          color: kWhite,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppbarExtraWithCurve extends StatelessWidget {
  const AppbarExtraWithCurve({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Stack(
        fit: StackFit.expand,
        children: [
          const AppBarExtra(),
          Positioned(
            top: 50,
            child: Container(
              width: Get.width,
              height: Get.width,
              decoration: const BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
