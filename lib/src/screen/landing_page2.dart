import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_ly/asset/theme/theme_color.dart';
import 'package:home_ly/element/background_widget.dart';
import 'package:home_ly/element/floating_button.dart';
import 'package:home_ly/src/controller/login_controller.dart';
import 'package:dropdown_search/dropdown_search.dart';
class LandingPage2 extends StatelessWidget {
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
              Get.toNamed<dynamic>('/LandingPage3');
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
                // TextField(
                //   style: TextStyle(color: ThemeColor.white, fontSize: 20.h),
                //   cursorColor: ThemeColor.white,
                //   // controller: _con.textEditingControllerEmail,
                //   // onChanged: _con.validateEmail,
                //   onTap: (){
                //     print('TextField is taped');
                //     return PopupMenuButton<String>(
                //       itemBuilder: (BuildContext context) => _con.dropDownItem
                //           .map<PopupMenuItem<String>>((String value) =>
                //           PopupMenuItem(child: Text(value), value: value))
                //           .toList(),
                //     );
                //   },
                //   decoration: InputDecoration(
                //     hintText: 'Location or zip code',
                //     hintStyle: TextStyle(
                //         color: ThemeColor.white,
                //         fontSize: 16,
                //         fontWeight: FontWeight.w500),
                //     prefixIcon: Icon(
                //       Icons.search,
                //       size: 25.h,
                //       color: ThemeColor.white,
                //     ),
                //     suffixIcon: PopupMenuButton<String>(
                //       itemBuilder: (BuildContext context) => _con.dropDownItem
                //           .map<PopupMenuItem<String>>((String value) =>
                //               PopupMenuItem(child: Text(value), value: value))
                //           .toList(),
                //     ),
                //     enabledBorder: UnderlineInputBorder(
                //         borderSide: BorderSide(
                //             width: 2, color: ThemeColor.inputBorder)),
                //     focusedBorder: UnderlineInputBorder(
                //         borderSide: BorderSide(
                //             width: 2, color: ThemeColor.inputBorder)),
                //   ),
                // ),
                DropdownSearch<String>(
                  // validator: (v) => v == null ? "required field" : null,
                  hint: 'Location or zip code',
                  dropdownSearchDecoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 25.h,
                          color: ThemeColor.white,
                        ),
                    hintText: 'Location or zip code',
                    hintStyle: TextStyle(
                        color: ThemeColor.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: ThemeColor.inputBorder)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: ThemeColor.inputBorder)),
                  ),
                  searchBoxDecoration: InputDecoration(
                    hintText: 'Location or zip code',
                    hintStyle: TextStyle(
                        color: ThemeColor.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: ThemeColor.inputBorder)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: ThemeColor.inputBorder)),
                  ),
                  mode: Mode.DIALOG,
                  showSelectedItem: true,
                  items: _con.dropDownItem,
                  showClearButton: true,
                  onChanged: print,
                  popupItemDisabled: (String s) => s.startsWith('I'),
                  // selectedItem: "Tunisia",
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 26.h,
                      width: 26.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          gradient: LinearGradient(
                              colors: ThemeColor.fusion01,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight)),
                      child: Icon(
                        Icons.location_searching,
                        size: 21.h,
                        color: ThemeColor.white,
                      ),
                    ),
                    SizedBox(
                      width: 12.h,
                    ),
                    Text(
                      'Use Current Location',
                      style: TextStyle(
                          fontSize: 16.h,
                          color: ThemeColor.inputBorder,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
