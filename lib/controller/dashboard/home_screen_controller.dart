import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final keys = GlobalKey<ScaffoldState>();

  RxInt selectedIndex = 1.obs;

  RxBool isLoadingIncomes = RxBool(false);
  RxDouble online = RxDouble(10);
  RxDouble offline = RxDouble(10);

  RxInt current = RxInt(0);

  final CarouselController controller = CarouselController();

  final List<String> imgList = [
    'https://www.himalayajourneys.com/assets/images/adventure/travel-in-nepal.jpg',
    'https://media.istockphoto.com/id/1132086660/photo/side-view-of-beautiful-muscular-woman-running-on-treadmill.jpg?s=612x612&w=0&k=20&c=5Vq_BJjG7sbIyKIP-Adu0pChReDXm0dC7BVPvto2M0I=',
    'https://www.diabetes.co.uk/wp-content/uploads/2019/01/Untitled-design138-1000x600.jpg',
  ];

  late List<Widget> imageSliders = imgList
      .map((item) => Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Image.network(
                  item,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 136,
                )),
          ))
      .toList();
}

class TravelCategory {
  final int id;
  final String name;
  TravelCategory({
    required this.id,
    required this.name,
  });
}
