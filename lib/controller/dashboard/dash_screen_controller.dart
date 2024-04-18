import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainer_app/views/dashboard/history_screen.dart';
import 'package:trainer_app/views/dashboard/profile_screen.dart';

import '../../views/dashboard/home_screen.dart';

class DashScreenController extends GetxController {
  final key = GlobalKey<ScaffoldState>();
  RxList<Widget> pages = RxList(
    [
      HomeScreen(),
      const HistoryScreen(),
      const ProfileScreen(),
    ],
  );

  RxInt currentIndex = RxInt(0);

  void onItemTapped(int index) {
    currentIndex.value = index;
  }
}
