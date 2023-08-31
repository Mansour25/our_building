import 'package:flutter/material.dart';

import '../../../../../core/class/size_config/size_config.dart';
import '../../../../../core/functions/spaces.dart';
import '../../../custom_public_widgets/custom_text.dart';

class CustomTitleAndSubProfile extends StatelessWidget {
  final String title;

  final String sub;

  const CustomTitleAndSubProfile(this.title, this.sub, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.scaleWidth(5),
        vertical: SizeConfig.scaleHeight(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          spaceW(double.infinity),
          spaceH(2),
          CustomText(title, 14,Theme.of(context).textTheme.titleLarge!.color!),
          spaceH(8),
          CustomText(sub, 12, Theme.of(context).textTheme.titleLarge!.color!),
        ],
      ),
    );
  }
}
