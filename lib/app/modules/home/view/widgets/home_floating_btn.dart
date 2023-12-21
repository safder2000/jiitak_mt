import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/strings.dart';

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            // Add your onPressed action here
          },
          backgroundColor: kWhite, // Set your desired background color
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(30.0), // Set your desired border radius
          ),
          child: SvgPicture.asset(
            locationSvg,
            color: kBlack,
            width: 24,
            height: 24,
          ),
        ),
        kHeight10
      ],
    );
  }
}
