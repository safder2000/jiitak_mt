import 'package:get/get.dart';

import '../app/modules/bottom_navigation/controllers/bottom_nav_controller.dart';

class IntitalControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<BottomNavController>(BottomNavController(), permanent: true);
  }
}
