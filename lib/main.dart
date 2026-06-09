import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/product_controller.dart';
import 'views/login_page.dart';

void main() {
  Get.put(ProductController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kuis Susulan 123230215',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xfff8f3ff),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff0d47a1),
          foregroundColor: Colors.white,
          elevation: 2,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff0d47a1),
            foregroundColor: Colors.white,
          ),
        ),
      ),
      home: const LoginPage(),
    );
  }
}
