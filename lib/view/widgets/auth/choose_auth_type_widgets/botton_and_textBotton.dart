import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../controller/auth/choose_auth_type_controller.dart';
import '../../../../core/class/app_data/app_color.dart';
import '../../../../core/class/size_config/size_config.dart';
import '../../../../core/functions/spaces.dart';
import '../../../../core/functions/transitions.dart';
import '../../../screens/auth/login_screen.dart';
import '../../custom_public_widgets/custom_button.dart';
import '../../custom_public_widgets/custom_text.dart';
import 'package:get/get.dart';
class BottonAndTextBotton extends StatelessWidget {
  const BottonAndTextBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaceH(10),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.scaleWidth(20),
          ),
          child: CustomButton(
            Center(
              child: CustomText(
                'التالي',
                14,
                Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
                () {
              ChooseAuthTypeController controller = Get.find();
              controller.isUserSelected
                  ? controller.goToRegisterUserScreen(context)
                  : controller
                  .goToRegisterProviderServiceScreen(context);
            },
            double.infinity,
            50,
            AppColor.mainAppColor,
          ),
        ),
        spaceH(10),
        TextButton(
          onPressed: () async {
            Navigator.pop(context);
            push(context, LoginScreen());
          },
          child: CustomText(
            'أمتلك حساب بالفعل',
            10,
            Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),

      ],
    );
  }
}
