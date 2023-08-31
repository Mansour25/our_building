import 'package:flutter/material.dart';
import 'package:our_building/core/functions/spaces.dart';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;
  static late double blockWidth;
  static late double blockHeight;

  static late double textMultiplier;
  static late double imageSizeMultiplier;
  static late double heightMultiplier;
  static late double widthMultiplier;
  static late double deviceRatio;
  static late bool isPortrait;
  static late bool isMobilePortrait;

  static MediaQueryData? _mediaQueryData;
  static double? _safeAreaHorizontal;
  static double? _safeAreaVertical;
  static double? safeBlockHorizontal;
  static double? safeBlockVertical;

  static void init(BuildContext context) {


    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockWidth = screenWidth / 100;
    blockHeight = screenHeight / 100;

    _safeAreaHorizontal =
        _mediaQueryData!.padding.left + _mediaQueryData!.padding.right;
    _safeAreaVertical =
        _mediaQueryData!.padding.top + _mediaQueryData!.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal!) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical!) / 100;

    textMultiplier = blockHeight;
    imageSizeMultiplier = blockWidth;
    heightMultiplier = blockHeight;
    widthMultiplier = blockWidth;
    deviceRatio = screenWidth / screenHeight;
    isPortrait = screenHeight > screenWidth;
    isMobilePortrait = isPortrait && screenWidth < 450;

    myPrint(screenWidth);
    myPrint(screenHeight);

  }

  static double scaleTextFont(double fontSize) {
    double scale = fontSize / 8.96;
    return (textMultiplier * scale);
  }

  static double scaleWidth(double width) {
    double scale = width / 3.75;
    return (widthMultiplier * scale);
  }

  static double scaleHeight(double height) {
    double scale = height / 8.12;
    return (heightMultiplier * scale);
  }
}
