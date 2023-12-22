import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isliked = false.obs;
  var height = Get.height.obs;
  var width = Get.width.obs;
  bool like(bool isLiked) => !isLiked;
  onDateSelected(Map<String, dynamic> date) {}
  List<Map<String, dynamic>> dates = [
    {'day': '木', 'date': '26', 'isSelected': true},
    {'day': '金', 'date': '27', 'isSelected': false},
    {'day': '土', 'date': '28', 'isSelected': false},
    {'day': '日', 'date': '29', 'isSelected': false},
    {'day': '月', 'date': '30', 'isSelected': false},
    {'day': '火', 'date': '31', 'isSelected': false},
    {'day': '水', 'date': '1', 'isSelected': false},
  ].obs;
}
