import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ly/utility/util.dart';

class BackgroundImage extends StatelessWidget {
  BackgroundImage({this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final screenHeight = mediaQuery.height - MediaQuery.of(context).padding.top;
    final screenWidth = mediaQuery.width;
    ScreenUtil.init(context,designSize: Size(screenWidth, screenHeight),allowFontScaling: false);
    return SafeArea(
      top: false,
      child: Stack(
        children: [
          Container(
            height: screenHeight,
            width: screenHeight,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('${Utility.imagePath}splash_bg.png'),
                  fit: BoxFit.cover
                )
            ),),
          child
        ],
      ),
    );
  }
}
