import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_mt/utils/constants.dart';

class DialogHelper {
  static void showLoading() {
    Get.dialog(
      Dialog(
        backgroundColor: kWhite,
        insetPadding: const EdgeInsets.symmetric(horizontal: 100),
        child: WillPopScope(
          onWillPop: () async => false,
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: CircularProgressIndicator(color: kPurple),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static void hideDialog() {
    if (Get.isDialogOpen == true) {
      Get.back();
      return;
    }
  }
}
