import 'package:flutter/material.dart';
import 'package:our_building/core/class/app_data/app_color.dart';

import '../../../../core/class/size_config/size_config.dart';
import '../../custom_public_widgets/custom_text.dart';

class CustomSearchField extends StatelessWidget {
  final Function(String)? onChanged;
  final TextEditingController controller;
  final String hint;

  const CustomSearchField(this.onChanged, this.controller, this.hint,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.scaleWidth(15),
      ),
      height: SizeConfig.scaleHeight(50),
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        onTap: () {
          // اخفاء كل snackBars
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: CustomText('قيد التطوير', 14, Colors.white),
            ),
          );
        },
        onChanged: onChanged,
        style: TextStyle(
          fontFamily: 'Tajawal',
          fontSize: 15,
          color: Theme.of(context).textTheme.titleSmall!.color!,
          fontWeight: FontWeight.w500,
        ),
        keyboardType: TextInputType.text,
        controller: TextEditingController(),
        decoration: InputDecoration(
          suffixIcon: const Icon(
            Icons.search,
            size: 25,
          ),
          hintText: hint,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Theme.of(context).cardColor,
              // dark -> black
              // light -> white
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          hintStyle: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
            fontFamily: 'Tajawal',
          ),
        ),
      ),
    );
  }
}
