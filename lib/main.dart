import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:publisher_test/controller/homeController.dart';
import 'package:publisher_test/view/home_screen.dart';

void main() {
  Get.put(
    HomeController(),
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Design App",
      theme: ThemeData(
        fontFamily: "NotoSans",
        checkboxTheme: CheckboxThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
