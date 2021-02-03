import 'package:get/get.dart';

import 'package:home_ly/binding.dart';
import 'package:home_ly/src/screen/landing_page1.dart';
import 'package:home_ly/src/screen/landing_page2.dart';
import 'package:home_ly/src/screen/landing_page3.dart';
import 'package:home_ly/src/screen/registration_screen.dart';

class Routers{
  static final routes = [
    GetPage(name: '/LoginPage', page: () => RegistrationScreen(),binding: LoginBinding()),
    GetPage(name: '/LandingPage1', page: () => LandingPage()),
    GetPage(name: '/LandingPage2', page: () => LandingPage2()),
    GetPage(name: '/LandingPage3', page: () => LandingPage3()),

  ];
}