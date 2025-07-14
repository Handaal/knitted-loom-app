import 'package:get/get.dart';
import 'package:knitting_teaching_app/screens/about_app.dart';
import 'package:knitting_teaching_app/screens/home/home.dart';
import 'package:knitting_teaching_app/screens/tanfeez.dart';


class BottomNavController extends GetxController {
  var currentIndex = 1.obs;

  final pages = [
    const AboutApp(),
    const HomePage(),
    const Tanfeez(),
  ];

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }
}