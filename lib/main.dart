import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/config/theme.dart';
import 'package:news_app/home_page_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'News App',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: darkTheme,
      home: HomePageController(),
    );
  }
}
