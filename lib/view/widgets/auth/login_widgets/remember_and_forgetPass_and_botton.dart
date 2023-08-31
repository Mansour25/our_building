import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:our_building/core/constant/constant_user_data.dart';

import '../../../../controller/auth/logic_controller.dart';
import '../../../../core/class/app_data/app_color.dart';
import '../../../../core/functions/spaces.dart';
import '../../../../core/functions/transitions.dart';
import '../../../screens/auth/send_email_screen.dart';
import '../../../screens/home_screens/main_home_screen.dart';
import '../../custom_public_widgets/custom_button.dart';
import '../../custom_public_widgets/custom_text.dart';
class RememberAndForgetPassAndBotton extends StatelessWidget {
  const RememberAndForgetPassAndBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GetBuilder<LoginController>(builder: (logic) {
              return Checkbox(
                value: logic.checkValue,
                onChanged: (value) => logic.changeCheckValue(value),
              );
            }),
            CustomText(
              'تذكرني',
              14,
              Colors.black87,
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                push(context, const SendEmailScreen());
              },
              child: CustomText(
                'لقد نسيت كلمة المرور ؟',
                10,
                Colors.black87,
              ),
            ),
          ],
        ),
        spaceH(15),
        CustomButton(
          Center(
            child: CustomText(
              'دخول',
              16,
              Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          () {
            StaticUserData.isUser = true;
            pushAndRemoveAll(context, const MainHomeScreen());
          },
          double.infinity,
          50,
          AppColor.mainAppColor,
        ),
      ],
    );
  }
}
