import 'package:flutter/material.dart';
import 'package:our_building/controller/home_controllers/profile/profile_controller.dart';
import 'package:our_building/core/functions/spaces.dart';
import '../../../../../core/class/size_config/size_config.dart';
import 'custom_list_tile.dart';
import 'package:get/get.dart';

class ListTilesUserData extends StatelessWidget {
  const ListTilesUserData({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(builder: (logic) {
      myPrint(logic.userDataTextField.length);
      for (int x = logic.userDataTextField.length;
          x < logic.userDataTextField.length;
          x++) {
        myPrint(x);
      }
      return Column(
        children: [
          for (int x = 0;
              x < logic.userDataTextField.length;
              x++)
            Column(
              children: [
                CustomTitleAndSubProfile(
                  logic.userDataTextField[x].title,
                  logic.userDataTextField[x].hint,
                ),
                Divider(
                  height: SizeConfig.scaleHeight(20),
                  color: Colors.grey,
                  thickness: 0.5,
                  indent: SizeConfig.scaleWidth(20),
                  endIndent: SizeConfig.scaleHeight(20),
                ),
              ],
            ),
        ],
      );
    });
  }
}
