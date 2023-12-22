import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/strings.dart';
import '../../../../../utils/widgets/shadow_container.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.srcWidth,
  });

  final double srcWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ShadowContainer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _ImageContainer(),
            _TextContainer(),
          ],
        ),
      ),
    );
  }

  Padding _TextContainer() {
    bool isliked = false;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        height: Get.width / 1.6,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          color: kWhite,
        ),
        child: Padding(
          padding: EdgeInsets.all(Get.width / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）j',
                style: cardHead,
              ),
              SizedBox(
                height: Get.width / 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _yellowBox(),
                  const Text(
                    '¥ 6,000',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: Get.width / 30,
              ),
              Text('5月 31日（水）08 : 00 ~ 17 : 00', style: cardDisBlack),
              Text('北海道札幌市東雲町3丁目916番地17号', style: cardDisBlack),
              Text('交通費 300円', style: cardDisBlack),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('住宅型有料老人ホームひまわり倶楽部', style: cardDisGray),
                  InkWell(
                    onTap: () => isliked = !isliked,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SvgPicture.asset(
                        hollowHeartSvg,
                        color: kTextLightGray2,
                        height: srcWidth / 14.5,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Stack _ImageContainer() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Container(
            height: Get.width / 1.85,
            width: double.infinity,
            decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(img1), fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: kTextOrange,
            ),
          ),
        ),
        Positioned(
          bottom: Get.width / 40, // Adjust the left position as needed
          child: ShadowContainer(
            child: Container(
              height: 25,
              width: 74,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color.fromARGB(255, 255, 98, 98)),
              child: const Center(
                  child: Text(
                '本日まで',
                style: TextStyle(color: kWhite, fontSize: 13),
              )),
            ),
          ),
        ),
      ],
    );
  }

  Container _yellowBox() {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: kOrangeLight4,
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            '介護付き有料老人ホーム',
            style: TextStyle(color: kTextOrange),
          ),
        ));
  }
}
