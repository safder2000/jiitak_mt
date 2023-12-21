import 'package:get/get.dart';
import 'package:jiitak_mt/splash_screen.dart';

import '../app/modules/bottom_navigation/views/bottom_nav_screen.dart';
import '../app/modules/edit_store_profile/view/edit_store_profile_screen.dart';
import '../app/modules/home/view/home_screen.dart';

final List<GetPage> getRoutes = [
  GetPage(
      name: SplashScreen.routeName,
      page: () => const SplashScreen(),
      transition: Transition.rightToLeftWithFade),
  GetPage(
    name: BottomNavScreen.routeName,
    page: () => const BottomNavScreen(),
    // transition: Transition.fadeIn
  ),
  GetPage(
    name: HomeScreen.routeName,
    page: () => HomeScreen(),
  ),
  GetPage(
    name: EditStoreProfileScreen.routeName,
    page: () => EditStoreProfileScreen(),
  ),
];
