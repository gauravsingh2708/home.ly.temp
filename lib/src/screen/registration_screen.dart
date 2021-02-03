import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_ly/asset/theme/theme_color.dart';
import 'package:home_ly/element/background_widget.dart';
import 'package:home_ly/element/primary_button.dart';
import 'package:home_ly/src/controller/login_controller.dart';

class RegistrationScreen extends StatelessWidget {
  final LoginController _con = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final screenHeight = mediaQuery.height - MediaQuery.of(context).padding.top;
    final screenWidth = mediaQuery.width;
    ScreenUtil.init(context, designSize: Size(screenWidth, screenHeight), allowFontScaling: false);
    return Scaffold(
      body: SafeArea(
        child: BackgroundImage(
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(16.h),
                child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50.h,
                        child: Icon(
                          Icons.arrow_back,
                          size: 30.h,
                          color: ThemeColor.white,
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Text(
                        'Enter Your Email To Continue',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30.h,
                          color: ThemeColor.white,
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Text(
                        'Email Address',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12.h,
                          color: ThemeColor.white,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Obx(()=>TextField(
                        style: TextStyle(color: ThemeColor.white, fontSize: 20.h),
                        cursorColor: ThemeColor.white,
                        controller: _con.textEditingControllerEmail,
                        onChanged: _con.validateEmail,
                        decoration: InputDecoration(
                          suffixIcon: _con.emailValidate.value?Icon(Icons.check,size: 30.h,color: ThemeColor.lightGreen,):Icon(Icons.clear,size: 30.h,color: ThemeColor.lightRed,),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: ThemeColor.inputBorder)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: ThemeColor.inputBorder)),
                        ),
                      ),),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        'Password',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12.h,
                          color: ThemeColor.white,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextField(
                        style:
                            TextStyle(color: ThemeColor.white, fontSize: 20.h),
                        cursorColor: ThemeColor.white,
                        controller: _con.textEditingControllerPassword,
                        onChanged:_con.validatePasswordAndStrength ,
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: ThemeColor.inputBorder)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: ThemeColor.inputBorder)),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Obx(()=>  Text(
                        'At least 8 Characters',
                        style:
                        _con.passWordValidate.value
                            ? TextStyle(
                            fontSize: 12.h, color: ThemeColor.lightGreen)
                            :
                        TextStyle(
                            fontSize: 12.h, color: ThemeColor.lightRed),
                      ),),
                      SizedBox(
                        height: 12.h,
                      ),
                     Obx(()=> Text(
                       'Mix of letters and numbers',
                       style:
                       _con.passMixIn.value
                           ? TextStyle(
                           fontSize: 12.h, color: ThemeColor.lightGreen)
                           :
                       TextStyle(
                           fontSize: 12.h, color: ThemeColor.lightRed),
                     ),),
                      SizedBox(
                        height: 12.h,
                      ),
                      Obx(()=> Text(
                        'Password strength : Excellent',
                        style: _con.passMixIn.value?TextStyle(
                            fontSize: 12.h,
                            color: ThemeColor.lightGreen):TextStyle(
                            fontSize: 12.h,
                            color: ThemeColor.white.withOpacity(0.5)),
                      ),),
                      SizedBox(
                        height: 37.h,
                      ),
                      RichText(
                        textScaleFactor: 1.0,
                        text: TextSpan(
                          text:
                              'By creating or logging an account you’re agreeing with our ',
                          style: TextStyle(
                              fontSize: 12.h,
                              color: ThemeColor.white,
                              height: 1.5),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Terms & Conditions',
                                style: TextStyle(
                                    fontSize: 12.h,
                                    color: ThemeColor.lightGreen)),
                            TextSpan(
                                text: ' and ',
                                style: TextStyle(
                                    fontSize: 12.h, color: ThemeColor.white)),
                            TextSpan(
                                text: 'Privacy Statement',
                                style: TextStyle(
                                    fontSize: 12.h,
                                    color: ThemeColor.lightGreen)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      PrimaryButton(
                        text: 'Register',
                        onPressed: () {
                          print('Button');
                          _con.clickRegister();
                        },
                      )
                    ],
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
