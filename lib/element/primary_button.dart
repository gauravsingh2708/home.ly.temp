import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ly/asset/theme/theme_color.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({this.text,this.onPressed});
  String text;
  Function onPressed;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final screenHeight = mediaQuery.height - MediaQuery.of(context).padding.top;
    final screenWidth = mediaQuery.width;
    ScreenUtil.init(context,
        designSize: Size(screenWidth, screenHeight), allowFontScaling: false);
    return InkWell(
      onTap: (){
        onPressed();
      },
      child: Container(
      height:52.h,
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: ThemeColor.fusion01
        ),
      ),
      child: Center(child: Text(text,style: TextStyle(fontSize: 16.h,fontWeight: FontWeight.w500,color: ThemeColor.white),)),
  ),
    );}
}
