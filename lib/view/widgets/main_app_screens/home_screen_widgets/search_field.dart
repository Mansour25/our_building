import 'package:flutter/material.dart';

import '../../../../core/class/size_config/size_config.dart';

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
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
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
