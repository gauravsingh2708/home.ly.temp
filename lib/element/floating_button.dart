import 'package:flutter/material.dart';
import 'package:home_ly/asset/theme/theme_color.dart';

Widget floatingButton({Function onPressed})=> FloatingActionButton(
  elevation: 9.0,
  onPressed: (){
    onPressed();
  },
  child: Container(
      height: 58,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: ThemeColor.inputBorder.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 5,
              offset: const Offset(1, 8), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
              colors: ThemeColor.fusion01,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: const Center(
          child: Icon(
            Icons.arrow_forward,
            size: 19,
          ))),
);