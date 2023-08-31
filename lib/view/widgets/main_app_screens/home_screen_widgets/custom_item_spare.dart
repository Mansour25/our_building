import 'package:flutter/material.dart';

import '../../../../core/class/app_data/app_color.dart';
import '../../../../core/class/size_config/size_config.dart';
import '../../../../core/functions/spaces.dart';
import '../../custom_public_widgets/custom_text.dart';

class BuildItemSpare extends StatelessWidget {
  const BuildItemSpare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.scaleHeight(15),
        horizontal: SizeConfig.scaleWidth(15),
      ),
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.scaleHeight(10),
        horizontal: SizeConfig.scaleWidth(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: SizeConfig.screenWidth / 2 - SizeConfig.scaleWidth(70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  'محمد أحمد',
                  16,
                  AppColor.mainAppColor,
                  fontWeight: FontWeight.w600,
                ),
                spaceH(20),
                CustomText(
                  'المواد الفائضة : دهان',
                  12,
                  Theme.of(context).textTheme.titleLarge!.color!,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.start,
                ),
                spaceH(10),
                CustomText(
                  'الكمية : 100 لتر',
                  12,
                  Theme.of(context).textTheme.titleLarge!.color!,
                  fontWeight: FontWeight.w500,
                ),
                spaceH(10),
                CustomText(
                  'رقم الهاتف +966123456789',
                  12,
                  Theme.of(context).textTheme.titleLarge!.color!,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.start,
                ),
                spaceH(20),
                CustomText(
                  'صور المواد',
                  12,
                  Theme.of(context).textTheme.titleLarge!.color!,
                  fontWeight: FontWeight.w500,
                ),
                spaceH(10),
                Container(
                  alignment: Alignment.center,
                  width: SizeConfig.scaleWidth(50),
                  height: SizeConfig.scaleHeight(50),
                  decoration: BoxDecoration(
                    color: AppColor.mainAppColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomText('Photo', 10, Colors.white),
                ),
              ],
            ),
          ),
          Container(
            padding:EdgeInsets.symmetric(
              vertical: SizeConfig.scaleHeight(20),
            ),
            alignment: Alignment.center,
            color: AppColor.mainAppColor,
            width: SizeConfig.scaleWidth(150),
            // height: SizeConfig.scaleHeight(),
            child: CustomText('Photo', 30, Colors.white),
          ),
        ],
      ),
    );
  }
}
