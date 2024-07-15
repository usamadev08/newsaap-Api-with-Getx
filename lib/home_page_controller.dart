import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/component/navigationbar.dart';
import 'package:news_app/controller/bottom_nav.dart';

class HomePageController extends StatelessWidget {
  const HomePageController({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return Scaffold(
      floatingActionButton: MyBottomNav(),
      body: Obx(
        () => controller.pages[controller.index.value],
      ),
    );
  }
}
