import 'package:flutter/material.dart';
import 'package:our_building/core/class/app_data/app_color.dart';
import 'package:our_building/core/class/size_config/size_config.dart';
import 'package:our_building/view/widgets/custom_public_widgets/custom_text.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.scaleWidth(15),
        vertical: SizeConfig.scaleHeight(10),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: SizeConfig.scaleHeight(40),
            color: AppColor.mainAppColor,
          ),
        ],
      ),
    );
  }
}

