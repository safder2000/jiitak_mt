import 'package:get/get.dart';

class EditStoreController extends GetxController {
  RxString businessHoursStart = ''.obs;
  RxString businessHoursEnd = ''.obs;
  RxString lunchTimeStarts = ''.obs;
  RxString lunchTimeEnd = ''.obs;
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
