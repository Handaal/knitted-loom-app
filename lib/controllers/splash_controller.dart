import 'package:get/get.dart';
import 'package:knitting_teaching_app/screens/BottomNavBar/bottom_nav_bar.dart';
import 'dart:async';

class SplashController extends GetxController {
  static SplashController get to => Get.find();
  final _animationComplete = false.obs;
  
  bool get animationComplete => _animationComplete.value;

  @override
  void onInit() {
    super.onInit();
    _startSplashTimer();
  }

  void _startSplashTimer() {
    Timer(const Duration(milliseconds: 3500), () {
      _animationComplete.value = true;
      _navigateToHome();
    });
  }

  void _navigateToHome() {
    if (Get.currentRoute == "/splash") {
      Get.offAll(
        () => const BottomNavBar(),
        transition: Transition.fadeIn,
        duration: const Duration(milliseconds: 800),
      );
    }
  }

  @override
  void onClose() {
    _animationComplete.close();
    super.onClose();
  }
}