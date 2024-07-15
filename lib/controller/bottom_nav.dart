import 'package:get/get.dart';
import 'package:news_app/pages/articalPage/artical_page.dart';
import 'package:news_app/pages/homePage/home_page.dart';
import 'package:news_app/pages/profilePage/profile_page.dart';

class BottomNavController extends GetxController {
  RxInt index = 0.obs;

  var pages = [
    HomePage(),
    ArticalPage(),
    ProfilePage(),
  ];
}
