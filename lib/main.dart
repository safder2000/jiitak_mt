import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_mt/routes/routes.dart';
import 'package:jiitak_mt/splash_screen.dart';
import 'package:jiitak_mt/utils/constants.dart';

import 'bindings/initial_controller_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Jiitak',
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldWhite,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      initialBinding: IntitalControllerBinding(),
      getPages: [
        ...getRoutes,
      ],
    );
  }
}
