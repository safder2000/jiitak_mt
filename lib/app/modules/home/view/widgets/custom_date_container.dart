import 'package:flutter/material.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/widgets/common_gradients.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({
    super.key,
    required this.srcWidth,
  });

  final double srcWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
      ),
      child: Column(
        children: [
          Container(
            height: 45,
            decoration: BoxDecoration(
              color: kOrangeGradientDark,
              gradient: yellowGradient(),
            ),
            child: const Center(
                child: Text(
              '2022年 5月 26日（木）',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )),
          ),
        ],
      ),
    );
  }
}

class SingleDateBox extends StatelessWidget {
  SingleDateBox({
    required this.dateText,
    required this.dateNo,
    required this.isSelected,
    super.key,
  });

  final String dateText;
  final String dateNo;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 80,
              width: 52.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.0),
                color: isSelected ? kTextOrange : kSearchfieldBgGray,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  kHeight8,
                  Text(
                    dateNo,
                    style: TextStyle(
                      color: isSelected ? kWhite : kBlack,
                      fontSize: 19.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kHeight5,
                  Text(
                    dateText,
                    style: TextStyle(
                      color: isSelected ? kWhite : kBlack,
                      fontSize: 19.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kHeight8,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
