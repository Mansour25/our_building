import 'package:flutter/material.dart';
import 'package:our_building/core/class/size_config/size_config.dart';
import 'package:our_building/view/widgets/custom_public_widgets/custom_title_and_back_icon.dart';

import '../../../../core/class/app_data/app_assets.dart';
import '../../../../core/functions/spaces.dart';
import '../../custom_public_widgets/custom_logo_app.dart';
import '../../custom_public_widgets/custom_text.dart';
import '../custom_title_and_textfield.dart';

class LogoAndTextFieldsInLogin extends StatelessWidget {
  const LogoAndTextFieldsInLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         const CustomTitleAndBackIcon(title: 'تسجيل الدخول'),
        const CustomLogoApp(
          height: 250,
          imgPath: AppAssets.signIn,
          isSvg: true,
        ),
        CustomTitleAndTextField(
          'رقم الجوال',
          '+966 123456789',
          TextEditingController(),
          TextInputType.phone,
          false,
          acceptedTheme: false,
        ),
        CustomTitleAndTextField(
          'كلمة المرور',
          '**********',
          TextEditingController(),
          TextInputType.visiblePassword,
          true,
          acceptedTheme: false,

        ),
        spaceH(30),
      ],
    );
  }
}
