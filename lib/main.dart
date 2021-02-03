import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:home_ly/binding.dart';
import 'package:home_ly/router.dart';
import 'package:home_ly/src/screen/landing_page1.dart';
import 'package:home_ly/src/screen/registration_screen.dart';
import 'package:home_ly/src/screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetMaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    initialRoute: '/LoginPage',
    defaultTransition: Transition.native,
    theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     getPages:Routers.routes,
      // home: LoginScreen(),
    );
}
