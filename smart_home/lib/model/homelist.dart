import 'package:smart_home/design_course/home_design_course.dart';
import 'package:smart_home/fitness_app/fitness_app_home_screen.dart';
import 'package:smart_home/hotel_booking/hotel_home_screen.dart';
import 'package:smart_home/meru_house/meru_home_screen.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'assets/hotel/hotel_booking.png',
      navigateScreen: HotelHomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/fitness_app/fitness_app.png',
      navigateScreen: FitnessAppHomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/design_course/design_course.png',
      navigateScreen: DesignCourseHomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/meru_house/house2.png',
      navigateScreen: MeruHouseHomeScreen(),
    ),
  ];
}
