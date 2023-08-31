import 'package:flutter/material.dart';
import 'package:our_building/core/class/app_data/app_color.dart';

//1 => 0xFF282828
// 2 => 0xFF40444b

class AppTheme {


 static int color1 = 0xFF282828 ;
 static int color2 = 0xFF202225 ;

  ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor:  Color(color1),
    primaryColor:  Color(color1),
    cardColor: Colors.black87,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white70,
      ),
    ),
  );
  ThemeData lightTheme = ThemeData(
    cardColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColor.mainAppColor,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}
