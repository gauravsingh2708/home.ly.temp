import 'package:flutter/material.dart';
import 'package:home_ly/asset/theme/theme_color.dart';

Widget customContainer(String title,bool isSelected,double padding, Function onPressed){
  var color = isSelected?ThemeColor.inputBorder:ThemeColor.white;
  return Padding(
    padding: EdgeInsets.only(top:padding),
    child: InkWell(
      onTap: ()=> onPressed(),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: color
          ),
        ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: padding-4,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: color
            ),),
            isSelected?Icon(Icons.verified,size: 30,color: color,):Container(),
          ],
        ),
      ),
      ),
    ),
  );}