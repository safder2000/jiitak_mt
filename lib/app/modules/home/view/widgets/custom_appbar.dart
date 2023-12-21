import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/strings.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
    required this.srcWidth,
  });

  final double srcWidth;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: scaffoldWhite,
      title: CupertinoTextField(
        padding: EdgeInsets.symmetric(
            vertical: srcWidth / 50, horizontal: srcWidth / 20),
        decoration: const BoxDecoration(
          color: kSearchfieldBgGray,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        placeholder: 'さがす',
      ),
      actions: [
        SvgPicture.asset(
          filterSvg,
          color: kGray,
          height: srcWidth / 12,
        ),
        kWidth10,
        SvgPicture.asset(
          hollowHeartSvg,
          color: kLightRed,
          height: srcWidth / 14.5,
        ),
        SizedBox(
          width: srcWidth / 15,
        )
      ],
    );
  }
}
