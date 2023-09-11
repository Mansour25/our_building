// ignore_for_file: camel_case_types// ignore_for_file: must_be_immutableimport 'package:flutter/material.dart';import 'package:get/get.dart';import '../../../controller/greeting/on_boarding_controller.dart';import '../../../core/class/size_config/size_config.dart';import '../../../core/functions/spaces.dart';import '../../widgets/greeting/on_boarding_widgets.dart';class onBoardingScreen extends StatelessWidget {  const onBoardingScreen({super.key});  @override  Widget build(BuildContext context) {    return Scaffold(      backgroundColor: Colors.white,      body: Directionality(        textDirection: TextDirection.rtl,        child: SafeArea(          child: CustomOnBoardingPage(),        ),      ),    );  }}class CustomOnBoardingPage extends StatelessWidget {  @override  Widget build(BuildContext context) {    Get.put(OnBoardingController());    return Padding(      padding: EdgeInsets.symmetric(        horizontal: SizeConfig.scaleWidth(15),        vertical: SizeConfig.scaleHeight(15),      ),      child: SingleChildScrollView(          physics: const NeverScrollableScrollPhysics(),          child: Column(            crossAxisAlignment: CrossAxisAlignment.start,            children: [              spaceH(30),              SkipButton(),              // animated images and text              const AnimatedImageAndTextInOnBoarding(),              spaceH(50),              IndicatorList(),              spaceH(50),              NextButton(),            ],          )),    );  }}