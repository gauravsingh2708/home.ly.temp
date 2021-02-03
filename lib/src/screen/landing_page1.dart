import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_ly/asset/theme/theme_color.dart';
import 'package:home_ly/element/background_widget.dart';
import 'package:home_ly/element/custom_container.dart';
import 'package:home_ly/element/floating_button.dart';
import 'package:home_ly/src/controller/login_controller.dart';



class LandingPage extends StatelessWidget{
  final LoginController _con = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final screenHeight = mediaQuery.height - MediaQuery.of(context).padding.top;
    final screenWidth = mediaQuery.width;
    ScreenUtil.init(context,
        designSize: Size(screenWidth, screenHeight), allowFontScaling: false);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: floatingButton(
          onPressed: (){
            Get.toNamed<dynamic>('/LandingPage2');
          }
        ),
        body: BackgroundImage(
          child: Padding(
            padding: EdgeInsets.all(16.0.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                          Icons.arrow_back,
                          color: ThemeColor.white,
                          size: 30.h,
                        ),
                    Text(
                      'Skip',
                      style: TextStyle(
                          color: ThemeColor.white,
                          fontSize: 15.h,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(
                  height: 28.h,
                ),
                Text(
                  'What brings you to Home.ly today?',
                  style: TextStyle(
                      color: ThemeColor.white,
                      fontSize: 30.h,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Obx(() => Wrap(
                      children: List.generate(
                          _con.title.length,
                          (index) => customContainer(_con.title[index],
                                  _con.selected.contains(index), 20.h, () {
                                if (_con.selected.contains(index)) {
                                  _con.selected.remove(index);
                                } else {
                                  _con.selected.add(index);
                                }
                              })),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
