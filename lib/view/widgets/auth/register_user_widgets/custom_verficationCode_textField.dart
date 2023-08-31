
import 'package:flutter/material.dart';

import '../../../../core/class/app_data/app_color.dart';
import '../../../../core/class/size_config/size_config.dart';

class CustomVerficationCodeTextField extends StatelessWidget {
  const CustomVerficationCodeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.scaleHeight(50),
      width: SizeConfig.screenWidth / 2,
      decoration: BoxDecoration(
          color: const Color(0xFFf6f6f6),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color(0xFFf6f6f6),
            width: 1,
          )),
      child: TextFormField(
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Tajawal',
          fontSize: SizeConfig.scaleTextFont(15),
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        keyboardType: TextInputType.number,
        controller: TextEditingController(),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),

            // حدود خارجية عندما يتم تحديد الحقل
            borderSide: BorderSide(color: AppColor.mainAppColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xFFf6f6f6),
            ),
          ),
          hintStyle: TextStyle(
            fontSize: SizeConfig.scaleTextFont(14),
            color: Colors.grey,
            fontFamily: 'Tajawal',
          ),
        ),
      ),
    );
  }
}