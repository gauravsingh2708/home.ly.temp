import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ly/element/background_widget.dart';
import 'package:home_ly/utility/util.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final screenHeight = mediaQuery.height - MediaQuery.of(context).padding.top;
    final screenWidth = mediaQuery.width;
    ScreenUtil.init(context,designSize: Size(screenWidth, screenHeight),allowFontScaling: false);
    return BackgroundImage(
      child: Center(
        child: Container(
          height: 136.h,
          width: 180.w,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('${Utility.imagePath}logo.png')
              )
          ),
        ),
      ),
    );
  }
}
