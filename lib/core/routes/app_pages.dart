import 'package:get/get.dart';
import 'package:knitting_teaching_app/controllers/splash_controller.dart';
import 'package:knitting_teaching_app/screens/BottomNavBar/bottom_nav_bar.dart';
import 'package:knitting_teaching_app/screens/about_app.dart';
import 'package:knitting_teaching_app/screens/home/home.dart';
import 'package:knitting_teaching_app/screens/lessons/lesson1/lesson1.dart';
import 'package:knitting_teaching_app/screens/lessons/lesson2/lesson2.dart';
import 'package:knitting_teaching_app/screens/lessons/lesson3/ghorza1.dart';
import 'package:knitting_teaching_app/screens/lessons/lesson3/ghorza2.dart';
import 'package:knitting_teaching_app/screens/lessons/lesson3/ghorza3.dart';
import 'package:knitting_teaching_app/screens/lessons/lesson3/ghorza4.dart';
import 'package:knitting_teaching_app/screens/lessons/lesson3/ghorza5.dart';
import 'package:knitting_teaching_app/screens/lessons/lesson3/ghorza6.dart';
import 'package:knitting_teaching_app/screens/lessons/lesson3/ghorza7.dart';
import 'package:knitting_teaching_app/screens/lessons/lesson3/lesson3.dart';
import 'package:knitting_teaching_app/screens/lessons/lesson4/ghoraz10.dart';
import 'package:knitting_teaching_app/screens/lessons/lesson4/ghoraz8.dart';
import 'package:knitting_teaching_app/screens/lessons/lesson4/ghoraz9.dart';
import 'package:knitting_teaching_app/screens/lessons/lesson4/lesson4.dart';
import 'package:knitting_teaching_app/screens/lessons/lesson5/lesson5.dart';
import 'package:knitting_teaching_app/screens/namazeg.dart';
import 'package:knitting_teaching_app/screens/questions.dart';
import 'package:knitting_teaching_app/screens/splash/splash_view.dart';
import 'package:knitting_teaching_app/screens/tanfeez.dart';

class AppPages {
  static final pages = [
    
    GetPage(
      name: "/splash",
      page: () => const SplashView(),
      binding: BindingsBuilder(() {
        Get.put(SplashController());
      }),
    ),
    GetPage(
      name: "/home",
      page: () => const HomePage(),
    ),
    GetPage(
      name: "/bottomNav",
      page: () => BottomNavBar(),
    ),
    GetPage(
      name: "/tanfeez",
      page: () => const Tanfeez(),
    ),
    GetPage(
      name: "/about",
      page: () => const AboutApp(),
    ),
    GetPage(
      name: "/lesson1",
      page: () => const Lesson1(),
    ),
    GetPage(
      name: "/lesson2",
      page: () => const Lesson2(),
    ),
    GetPage(
      name: "/lesson3",
      page: () => const Lesson3(),
    ),
    GetPage(
      name: "/lesson4",
      page: () => const Lesson4(),
    ),
    GetPage(
      name: "/lesson5",
      page: () => const Lesson5(),
    ),
    GetPage(
      name: "/namazeg",
      page: () => const Namazeg(),
    ),
    GetPage(
      name: "/questions",
      page: () => const Questions(),
    ),
    GetPage(
      name: "/ghorza1",
      page: () => const Ghorza1(),
    ),
    GetPage(
      name: "/ghorza2",
      page: () => const Ghorza2(),
    ),
    GetPage(
      name: "/ghorza3",
      page: () => const Ghorza3(),
    ),
    GetPage(
      name: "/ghorza4",
      page: () => const Ghorza4(),
    ),
    GetPage(
      name: "/ghorza5",
      page: () => const Ghorza5(),
    ),
    GetPage(
      name: "/ghorza6",
      page: () => const Ghorza6(),
    ),
    GetPage(
      name: "/ghorza7",
      page: () => const Ghorza7(),
    ),
    GetPage(
      name: "/ghorza8",
      page: () => const Ghorza8(),
    ),
    GetPage(
      name: "/ghorza9",
      page: () => const Ghorza9(),
    ),
    GetPage(
      name: "/ghorza10",
      page: () => const Ghorza10(),
    ),
  ];
}