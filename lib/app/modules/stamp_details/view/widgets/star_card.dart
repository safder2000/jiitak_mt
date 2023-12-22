import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_mt/utils/strings.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/widgets/common_gradients.dart';

class StartCard extends StatelessWidget {
  const StartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Container(
        decoration: const BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(49, 171, 171, 171),
              blurRadius: 9,
              spreadRadius: 5,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: SizedBox(
            width: Get.width / 1.55,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 10,
                crossAxisSpacing: 1,
              ),
              itemCount: 15,
              itemBuilder: (context, index) {
                return Padding(
                    padding:
                        const EdgeInsets.all(5), // Adjust spacing if needed
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: yellowGradient(),
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage(starPng),
                          )),
                    ));
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