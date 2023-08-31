import 'package:flutter/material.dart';
import 'package:our_building/core/functions/logOut_func.dart';

import '../../../../../core/class/size_config/size_config.dart';
import '../../../../../core/functions/spaces.dart';
import '../../../../../core/functions/transitions.dart';
import '../../../../screens/auth/choose_auth_way_screen.dart';
import '../../../../screens/home_screens/home/profile/edit_user_data.dart';
import '../../../custom_public_widgets/custom_text.dart';

class EditDataAndSignOutBottons extends StatelessWidget {
  const EditDataAndSignOutBottons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.scaleHeight(10),
        horizontal: SizeConfig.scaleWidth(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
                onTap: () {
                  push(context, const EditUserProfileDataScreen());
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomText('تعديل البيانات', 14, Theme.of(context).textTheme.titleLarge!.color!),
                )),
          ),
          spaceW(20),
          Expanded(
            child: InkWell(
              onTap: () {
                  signOut(context);
                },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                decoration: BoxDecoration(
                        color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CustomText('تسجيل خروج', 14, Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
