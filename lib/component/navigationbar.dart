import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/bottom_nav.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: 200,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color.fromARGB(255, 233, 236, 249)),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        controller.index.value = 0;
                      },
                      child: Obx(
                        () => AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.bounceInOut,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: controller.index.value == 0
                                ? Color.fromARGB(255, 0, 170, 255)
                                : null,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.home,
                              color: controller.index.value == 0
                                  ? Color(0xffFFFFFF)
                                  : Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                              size: 30,
                            ),
                          ),
                        ),
                      )),
                  InkWell(
                    onTap: () {
                      controller.index.value = 1;
                    },
                    child: Obx(
                      () => AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.bounceInOut,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: controller.index.value == 1
                              ? Color.fromARGB(255, 0, 170, 255)
                              : null,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.book,
                            color: controller.index.value == 1
                                ? Color(0xffFFFFFF)
                                : Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.index.value = 2;
                    },
                    child: Obx(
                      () => AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.bounceInOut,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: controller.index.value == 2
                              ? Color.fromARGB(255, 0, 170, 255)
                              : null,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.settings,
                            color: controller.index.value == 2
                                ? Color(0xffFFFFFF)
                                : Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
