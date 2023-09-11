import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../../../../core/class/app_data/app_assets.dart';
import '../../../../core/functions/spaces.dart';
import '../../custom_public_widgets/custom_logo_app.dart';
import '../../custom_public_widgets/custom_text.dart';

class TopRowAndLogo extends StatelessWidget {
  const TopRowAndLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaceH(30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              autofocus: true,
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            // spaceW(20),
            CustomText('إنشاء حساب كمقدم خدمة', 14, Colors.black),
          ],
        ),
        // const CustomLogoApp(
        //   height: 350,
        //   imgPath: AppAssets.signUp,
        //   isSvg: true,
        // ),

        const CustomImageApp(
          path: AppAssets.signUp,
          height: 350,
          isSvg: true,
        ),
      ],
    );
  }
}
