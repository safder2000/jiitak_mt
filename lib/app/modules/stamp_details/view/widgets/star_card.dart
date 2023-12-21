import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/widgets/common_gradients.dart';

class StartCard extends StatelessWidget {
  const StartCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Container(
        width: Get.width / 1.2,
        height: Get.width / 1.7,
        decoration: const BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(49, 171, 171, 171),
              blurRadius: 9,
              spreadRadius: 5,
              offset: Offset(0, 4), // Set the offset for the shadow
            ),
          ],
        ),
        child: Center(
          child: SizedBox(
            width: Get.width / 1.4,
            // height: Get.width / 1.8,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 10, // Space between columns
                crossAxisSpacing: 10, // Space between rows
              ),
              itemCount: 15, // Number of icons
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    gradient: yellowGradient(),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    // color: Colors.amber,
                    // image: DecorationImage(image: AssetImage(img1)),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
            // return Container(
            //   height: 10,
            //   width: 10,
            //   decoration: const BoxDecoration(
            //       color: Colors.amber,
            //       image: DecorationImage(image: AssetImage(starPng))),
            // );

            //        return SvgPicture.asset(
            //   starSvg,
            //   color: Colors.amber,
            //   width: 24,
            //   height: 24,
            // );