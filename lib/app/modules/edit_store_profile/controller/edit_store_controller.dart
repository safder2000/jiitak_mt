import 'package:get/get.dart';

class EditStoreController extends GetxController {
  RxString businessHoursStart = ''.obs;
  RxString businessHoursEnd = ''.obs;
  RxString lunchTimeStarts = ''.obs;
  RxString lunchTimeEnd = ''.obs;

  RxBool checkBox1 = true.obs;
  RxBool checkBox2 = false.obs;
  RxBool checkBox3 = true.obs;
  RxBool checkBox4 = false.obs;
  RxBool checkBox5 = true.obs;
  RxBool checkBox6 = false.obs;
  RxBool checkBox7 = true.obs;
  RxBool checkBox8 = false.obs;
  RxBool checkBox9 = false.obs;
  RxBool checkBox10 = true.obs;
  RxBool checkBox11 = false.obs;
  RxBool checkBox12 = true.obs;
  RxBool checkBox13 = true.obs;
  RxBool checkBox14 = false.obs;

  List<String> hoursList = [
    "06:00",
    "07:00",
    "08:00",
    "09:00",
    "10:00",
    "11:00",
    "12:00",
  ];
}
