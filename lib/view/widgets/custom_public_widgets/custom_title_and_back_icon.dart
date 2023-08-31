import 'package:flutter/material.dart';
import '../../../../core/class/app_data/app_assets.dart';
import '../../../../core/functions/spaces.dart';
import 'custom_logo_app.dart';
import 'custom_text.dart';

class CustomTitleAndBackIcon extends StatelessWidget {
 final String title ;
  const CustomTitleAndBackIcon({super.key,required this.title});

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
              // autofocus: true,
              onPressed: () {
                // FocusManager.instance.primaryFocus?.unfocus();
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            // spaceW(20),
            CustomText(title, 14, Colors.black),
          ],
        ),
      ],
    );
  }
}
