import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta_api/screens/home/view/home_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => HomeScreen(),),
      ],
    ),
  );
}
