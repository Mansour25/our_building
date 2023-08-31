import 'package:flutter/material.dart';

import '../../../../../core/class/app_data/app_color.dart';
import '../../../../../core/functions/spaces.dart';
import '../../../custom_public_widgets/custom_text.dart';

class TopCircleAvatarAndNameUser extends StatelessWidget {
  const TopCircleAvatarAndNameUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaceW(double.infinity),
        CircleAvatar(
          backgroundColor: AppColor.mainAppColor,
          radius: 60,
        ),
        spaceH(15),
        CustomText('محمد أحمد', 16, Theme.of(context).textTheme.titleLarge!.color!),
        spaceH(20),

      ],
    );
  }
}
