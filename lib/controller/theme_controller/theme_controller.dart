import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:our_building/core/class/app_data/app_color.dart';
import 'package:our_building/core/class/helper_local_data/hive_helper.dart';
import 'package:our_building/core/functions/spaces.dart';

import '../../core/class/app_data/app_theme.dart';

class ThemeController extends GetxController {
  ThemeData? themeData;
  ThemeMode? themeMode;

  changeTheme(context) {
    if (themeMode == ThemeMode.light) {
      themeMode = ThemeMode.dark;
      HiveHelper.myBox!.put('is_dark', true);
      themeData = AppTheme().darkTheme;
      print('true');
    } else {
      themeMode = ThemeMode.light;
      HiveHelper.myBox!.put('is_dark', false);
      themeData = AppTheme().lightTheme;
      print('false');
    }
    update();
  }

  late bool? isDark;

  @override
  void onInit() {
    super.onInit();
    isDark = HiveHelper.myBox!.get('is_dark');

    if (isDark == true) {
      themeMode = ThemeMode.dark;
      themeData = AppTheme().darkTheme;
    } else {
      themeMode = ThemeMode.light;
      themeData = AppTheme().lightTheme;
    }
    myPrint('theme isDark is  ${isDark ?? ' Null = Light'}');

    update();
  }
}
