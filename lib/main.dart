import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'featuers/splash/presentaion/view/spalsh_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: const SplashScreen(),
    );
  }
}
