import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeThemeScreen extends StatelessWidget {
  const HomeThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController());
    return GetBuilder<ThemeController>(builder: (themeController) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeController.themeData,
        themeMode: themeController.themeMode,
        // ignore: prefer_const_constructors
        home: MainHome(),
      );
    });
  }
}

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find();

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              themeController.change_theme();
            },
            icon: Icon(
              themeController.themeMode == ThemeMode.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
          ),
          IconButton(
            onPressed: () {

            },
            icon: const Icon(Icons.language),
          ),
        ],
        title: Text(
          'AppLocalizations.of(context)!.hello_world',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(),
        ),
      ),
    );
  }
}

class ThemeController extends GetxController {
  ThemeData? themeData;
  ThemeMode? themeMode;

  change_theme() {
    if (themeMode == ThemeMode.light) {
      themeMode = ThemeMode.dark;
      themeData = AppTheme().darkTheme;
      print('true');
    } else {
      themeMode = ThemeMode.light;
      themeData = AppTheme().lightTheme;

      print('false');
    }

    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit

    // if themeMode == null => theme become light

    if (themeMode == ThemeMode.dark) {
      themeData = AppTheme().darkTheme;
    } else {
      themeData = AppTheme().lightTheme;
    }

    update();
    super.onInit();
  }
}

class AppTheme {
  ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      color: Colors.black87,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white24,
      ),
    ),
  );
  ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      color: Colors.deepPurpleAccent,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  runApp(const HomeThemeScreen());
}
