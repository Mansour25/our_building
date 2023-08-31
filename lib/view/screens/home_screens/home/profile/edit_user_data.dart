import 'package:flutter/material.dart';
import 'package:our_building/core/class/app_data/app_color.dart';
import 'package:our_building/view/widgets/custom_public_widgets/custom_text.dart';

class EditUserProfileDataScreen extends StatefulWidget {
  const EditUserProfileDataScreen({Key? key}) : super(key: key);

  @override
  State<EditUserProfileDataScreen> createState() =>
      _EditUserProfileDataScreenState();
}

class _EditUserProfileDataScreenState extends State<EditUserProfileDataScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 200), () {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(milliseconds: 1500),
          content: Text('قيد التطوير'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.mainAppColor,
        centerTitle: true,
        title: const Text(
          'تعديل بيانات الملف الشخصي',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
