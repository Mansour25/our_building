import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:our_building/view/screens/greeting/on_boarding_screen.dart';
import '../../../core/class/app_data/app_assets.dart';
import '../../../core/class/app_data/app_color.dart';
import '../../widgets/custom_public_widgets/custom_logo_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> with TickerProviderStateMixin {
  double _fontSize = 2;
  double _containerSize = 1.5;
  double _textOpacity = 0.0;
  double _containerOpacity = 0.0;
  double _imagePadding = 10;

  late AnimationController _controller;
  late Animation<double> animation1;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    animation1 = Tween<double>(begin: 40, end: 20).animate(CurvedAnimation(
        parent: _controller, curve: Curves.fastLinearToSlowEaseIn))
      ..addListener(() {
        setState(() {
          _textOpacity = 1.0;
        });
      });

    _controller.forward();

    Timer(const Duration(seconds: 2), () {
      setState(() {
        _fontSize = 1.06;
      });
    });
    Timer(const Duration(milliseconds: 2500), () {
      setState(() {
        _imagePadding = 70;
      });
    });
    Timer(const Duration(milliseconds: 3000), () {
      setState(() {
        _imagePadding = 5;
      });
    });

    Timer(const Duration(seconds: 2), () {
      setState(() {
        _containerSize = 2;
        _containerOpacity = 1;
      });
    });

    Timer(const Duration(seconds: 4), () {
      setState(() {
        Navigator.pushReplacement(
            context, PageTransition(const onBoardingScreen()));
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 2000),
                curve: Curves.fastLinearToSlowEaseIn,
                height: _height / _fontSize,
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: _textOpacity,
                child: Text(
                  'اعماركم',
                  style: TextStyle(
                    color: AppColor.mainAppColor,
                    fontWeight: FontWeight.bold,
                    fontSize: animation1.value,
                    fontFamily: 'Tajawal',
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              curve: Curves.fastLinearToSlowEaseIn,
              opacity: _containerOpacity,
              child: AnimatedContainer(
                padding: EdgeInsets.all(_imagePadding),
                duration: const Duration(milliseconds: 2000),
                curve: Curves.fastLinearToSlowEaseIn,
                height: _width / _containerSize,
                width: _width / _containerSize,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColor.mainAppColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset(AppAssets.logoApp2),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: ScalableImageWidget.fromSISource(
//                     // onLoading: (p0) {
//                     //   return Container(
//                     //     height: 100,
//                     //     width: 100,
//                     //     color: Colors.red,
//                     //   );
//                     // },
//                     si: ScalableImageSource.fromSvg(
//                       MySVG(imagePath: AppAssets.logoApp),
//                       bigFloats: false,
//                       'key',
//                       compact: false,
//                     ),
//                     scale: 0.8,
//                   ),
//                 ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageTransition extends PageRouteBuilder {
  final Widget page;

  PageTransition(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(milliseconds: 2000),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
              curve: Curves.fastLinearToSlowEaseIn,
              parent: animation,
            );
            return Align(
              alignment: Alignment.bottomCenter,
              child: SizeTransition(
                sizeFactor: animation,
                axisAlignment: 0,
                child: page,
              ),
            );
          },
        );
}

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple,
//         centerTitle: true,
//         title: const Text(
//           'YOUR APP\'S NAME',
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//         ),
//         systemOverlayStyle: SystemUiOverlayStyle.light,
//       ),
//     );
//   }
// }
