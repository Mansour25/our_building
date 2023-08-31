import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../controller/greeting/on_boarding_controller.dart';
import '../../../core/class/app_data/app_color.dart';
import '../../../core/class/size_config/size_config.dart';
import '../../../core/functions/spaces.dart';
import '../custom_public_widgets/custom_button.dart';
import '../custom_public_widgets/custom_text.dart';

class SkipButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OnBoardingController logic = Get.find();
    return InkWell(
      onTap: () {
        logic.skip(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomText('تخطي', 12, Colors.grey),
      ),
    );
  }
}

class IndicatorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(builder: (logic) {
      return SizedBox(
        width: double.infinity,
        height: SizeConfig.scaleHeight(7),
        child: Center(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            scrollDirection: Axis.horizontal, // reverse: true,
            itemBuilder: (context, index) {
              return AnimatedContainer(
                margin: EdgeInsets.symmetric(
                  horizontal: SizeConfig.scaleWidth(5),
                ),
                height: SizeConfig.scaleHeight(10),
                width: logic.currentScreen == index
                    ? SizeConfig.scaleWidth(30)
                    : SizeConfig.scaleWidth(8),
                duration: const Duration(
                  milliseconds: 400,
                ),
                decoration: BoxDecoration(
                  color: index == logic.currentScreen
                      ? AppColor.mainAppColor
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                ),
              );
            },
          ),
        ),
      );
    });
  }
}

class NextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OnBoardingController logic = Get.find();
    return CustomButton(
      Center(
        child: CustomText(
          logic.onBoardingData[logic.currentScreen].nextText,
          14,
          Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
          () => logic.next(context),
      double.infinity,
      40,
      AppColor.mainAppColor,
    );
  }
}


class AnimatedImageAndTextInOnBoarding extends StatelessWidget {
  const AnimatedImageAndTextInOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(builder: (logic) {
      return Column(children: [
        Center(
          child: SizedBox(
            height: SizeConfig.scaleHeight(300),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder:
                  (Widget child, Animation<double> animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              child: Image.asset(
                logic.onBoardingData[logic.currentScreen].imgName,
                key: ValueKey<int>(logic.currentScreen),
              ),
            ),
          ),
        ),
        spaceH(100),
        Center(
          child: SizedBox(
            height: SizeConfig.scaleHeight(40),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder:
                  (Widget child, Animation<double> animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
              child: Text(
                logic.onBoardingData[logic.currentScreen].desc,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: SizeConfig.scaleTextFont(14),
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
                key: ValueKey<int>(logic.currentScreen),
              ),
            ),
          ),
        ),
      ],);
    });
  }
}

