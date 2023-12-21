import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants.dart';

class EditStoreAppBar extends StatelessWidget {
  const EditStoreAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: kWhite,
      automaticallyImplyLeading: false,
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
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kTextLightGray3,
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: kGray,
                    size: 23,
                  ),
                ),
              ),
            ),
          ),
          const Text(
            '店舗プロフィール編集',
            style: TextStyle(color: kDarkGray),
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
              size: 30,
              color: kDarkGray,
            ),
            onPressed: () {},
          ),
        ],
      ),
      elevation: 1,
      shadowColor: kBlack,
    );
  }
}
