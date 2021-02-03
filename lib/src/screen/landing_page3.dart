import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_ly/asset/theme/theme_color.dart';
import 'package:home_ly/element/background_widget.dart';
import 'package:home_ly/element/floating_button.dart';

class LandingPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final screenHeight = mediaQuery.height - MediaQuery.of(context).padding.top;
    final screenWidth = mediaQuery.width;
    ScreenUtil.init(context, designSize: Size(screenWidth, screenHeight), allowFontScaling: false);
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
                      size: 25.h,
                      color: ThemeColor.white,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
