import 'package:flutter/material.dart';
import 'package:our_building/view/widgets/custom_public_widgets/custom_text.dart';

import '../../../../../core/class/app_data/app_color.dart';
import '../../../../../core/class/size_config/size_config.dart';
import '../../../../../core/functions/spaces.dart';
import '../../../../../core/functions/transitions.dart';
import '../../../../widgets/main_app_screens/home_screen_widgets/custom_item_provider_service.dart';
import '../../../../widgets/main_app_screens/home_screen_widgets/search_field.dart';

class ServiceDetailsScreen extends StatelessWidget {
  const ServiceDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(

          title: CustomText('الشركات المقدمة لهذه الخدمة', 14, Colors.white),
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: SizeConfig.scaleHeight(15),
              horizontal: SizeConfig.scaleWidth(10),
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSearchField(
                    (value) => null,
                    TextEditingController(),
                    'ابحث عن الشركات المتوفرة',
                  ),
                  spaceH(40),
                  CustomText(' اختر الشركة المطلوبة', 15, Theme.of(context).textTheme.titleLarge!.color!),
                  Divider(
                    height: SizeConfig.scaleHeight(20),
                    thickness: 0.5,
                    color: Colors.grey,
                    endIndent: 20,
                    indent: 20,
                  ),
                  CustomItemProviderServices('مواد البناء'),
                  CustomItemProviderServices('معدات بناء'),
                  CustomItemProviderServices('مقاول عام'),
                  CustomItemProviderServices('عامل فني'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
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

 */
