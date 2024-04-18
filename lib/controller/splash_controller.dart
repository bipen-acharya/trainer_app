import 'dart:async';

import 'package:get/get.dart';
import 'package:trainer_app/controller/core_controller.dart';
import 'package:trainer_app/views/dashboard/home_screen.dart';
import '../views/auth/login_screen.dart';

class SplashScreenController extends GetxController {
  final c = Get.put(CoreController());
  @override
  void onInit() {
    Timer(const Duration(seconds: 2), () async {
      if (c.isUserLoggedIn()) {
        Get.offAll(() => const HomeScreen());
      } else {
        Get.offAll(() => LogInScreen());
      }
    });
    super.onInit();
  }
}
