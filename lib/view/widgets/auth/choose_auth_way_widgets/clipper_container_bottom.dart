import 'package:flutter/material.dart';
import '../../../../core/class/app_data/app_color.dart';
import '../../../../core/class/size_config/size_config.dart';
import '../../../../core/constant/constant_user_data.dart';
import '../../../../core/functions/spaces.dart';
import '../../../../core/functions/transitions.dart';
import '../../../screens/auth/choose_auth_type_screen.dart';
import '../../../screens/auth/login_screen.dart';
import '../../../screens/home_screens/main_home_screen.dart';
import '../../custom_public_widgets/custom_button.dart';
import '../../custom_public_widgets/custom_text.dart';

class ClipperedBottomContainerBlueWidget extends StatelessWidget {
  const ClipperedBottomContainerBlueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipperContainerSignUpScreen(),
      child: Container(
        height: SizeConfig.screenHeight * 0.5,
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.scaleWidth(20),
        ),
        // height: SizeConfig.scaleHeight(450),
        width: double.infinity,
        color: AppColor.mainAppColor,
        child: Padding(
          padding: EdgeInsets.only(
            top: SizeConfig.screenHeight * 0.18,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.scaleHeight(40),
                ),
                child: Column(
                  children: [
                    CustomButton(
                      Center(
                        child: CustomText(
                          'تسجيل الدخول',
                          14,
                          Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      () {
                        push(context, const LoginScreen());
                      },
                      double.infinity,
                      45,
                      Colors.white,
                    ),
                    spaceH(20),
                    CustomButton(
                      Center(
                        child: CustomText(
                          'إنشاء حساب',
                          14,
                          Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      () {
                        push(context, const ChooseAuthTypeScreen());
                      },
                      double.infinity,
                      45,
                      Colors.white,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: SizeConfig.screenHeight  * 0.02,
              ),
              TextButton(
                onPressed: () {
                  StaticUserData.isUser = true;
                  pushAndRemoveAll(context, const MainHomeScreen());
                },
                child: CustomText(
                  'دخول كزائر',
                  12,
                  Colors.white,
                ),
              ),
              // spaceH(50),
            ],
          ),
        ),
      ),
    );
  }
}

class ClipperContainerSignUpScreen extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    myPrint(width);
    double height = size.height;
    var path = Path();
    path.lineTo(0, 150);
    path.quadraticBezierTo(SizeConfig.screenWidth / 2, 0, width, 150);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
