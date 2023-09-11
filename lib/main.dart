import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:our_building/core/class/helper_local_data/hive_helper.dart';
import 'package:our_building/core/functions/spaces.dart';
import 'package:our_building/view/screens/greeting/splash_screen.dart';
import 'controller/theme_controller/theme_controller.dart';
import 'core/class/app_data/app_color.dart';
import 'core/class/size_config/size_config.dart';
import 'package:get/get.dart';
// import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HiveHelper.myBox = await HiveHelper.openHiveBox('my_app');
  // تلوين منطقة status bar
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: AppColor.mainAppColor),
  );
  WidgetsFlutterBinding.ensureInitialized();
  // Step 3
  // لمنع تدوير الشاشة
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  myPrint(HiveHelper.myBox!.get('is_dark'));

  runApp(const MainScreen());
  // runApp(
  //   DevicePreview(
  //     enabled: !kReleaseMode,
  // // تعني انه سيعمل عندما لا يكون التطبيق في وضع ال relase
  //     builder: (context) => const MainScreen(), // Wrap your app
  //   ),
  // );
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('theme controller is init');
    Get.put(ThemeController());
    SizeConfig.init(context);
    return GetBuilder<ThemeController>(builder: (logic) {
      return MaterialApp(
        // locale: DevicePreview.locale(context),
        // builder: DevicePreview.appBuilder,
        themeMode: logic.themeMode,
        theme: logic.themeData,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
    });
  }
}
