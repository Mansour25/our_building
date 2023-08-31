
import 'package:flutter/material.dart';

import '../../custom_public_widgets/custom_text.dart';

Future<bool> willPopScop(context) async {
  final shouldPop = await showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        // backgroundColor: AppColor.mainAppColor,
        elevation: 15,
        shadowColor: Colors.grey,

        title: CustomText('هل أنت متأكد من الخروج ؟', 14, Colors.black),
        actionsAlignment: MainAxisAlignment.spaceBetween,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: CustomText('نعم', 14, Colors.red),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: CustomText('لا', 14, Colors.black),
          ),
        ],
      );
    },
  );

  return shouldPop!;
}
