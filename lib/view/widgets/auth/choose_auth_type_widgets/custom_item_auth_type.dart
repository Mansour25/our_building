import 'package:flutter/material.dart';

import '../../../../controller/auth/choose_auth_type_controller.dart';
import 'package:get/get.dart';

import '../../../../core/class/app_data/app_assets.dart';
import '../../../../core/class/app_data/app_color.dart';
import '../../../../core/class/size_config/size_config.dart';
import '../../custom_public_widgets/custom_logo_app.dart';
import '../../custom_public_widgets/custom_text.dart';

class BuildUserTypeItem extends StatelessWidget {
  final bool isUser;

  const BuildUserTypeItem(this.isUser, {super.key});

  @override
  Widget build(BuildContext context) {
    ChooseAuthTypeController controller = Get.find();
    return GestureDetector(
      onTap: () {
        if (controller.isUserSelected != isUser) {
          controller.changeSelected();
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.scaleHeight(15),
        ),
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          vertical: SizeConfig.scaleHeight(15),
        ),
        height: SizeConfig.scaleHeight(190),
        decoration: BoxDecoration(
          color: controller.isUserSelected == isUser
              ? Colors.grey[200]
              : Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 0.5, color: Colors.black87),
        ),
        child: Column(
          children: [
            // CustomLogoApp(
            //   height: 120,
            //   imgPath: isUser
            //       ? AppAssets.registerAsUser
            //       : AppAssets.registerAsServiceProvider,
            //   isSvg: false,
            // ),
            CustomImageApp(
                path: isUser
                    ? AppAssets.registerAsUser
                    : AppAssets.registerAsServiceProvider,
                height: 120,
                isSvg: false),

            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.scaleWidth(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(isUser ? 'مستخدم عادي' : 'مقدم الخدمة', 14,
                      Colors.black87),
                  Spacer(),
                  Icon(
                    controller.isUserSelected == isUser
                        ? Icons.circle
                        : Icons.circle_outlined,
                    color: AppColor.mainAppColor,
                    size: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
