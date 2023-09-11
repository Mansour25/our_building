import 'package:flutter/material.dart';import 'package:our_building/core/class/app_data/app_color.dart';import 'package:our_building/view/screens/home_screens/home/spare/add_spair_screen.dart';import 'package:our_building/view/widgets/custom_public_widgets/custom_button.dart';import 'package:our_building/view/widgets/custom_public_widgets/custom_text.dart';import '../../../../../core/class/size_config/size_config.dart';import '../../../../../core/functions/spaces.dart';import '../../../../../core/functions/transitions.dart';import '../../../../widgets/main_app_screens/home_screen_widgets/custom_item_spare.dart';import '../../../../widgets/main_app_screens/home_screen_widgets/search_field.dart';import '../home_services_screen/choose_services_screen.dart';class SpareScreen extends StatelessWidget {  const SpareScreen({super.key});  @override  Widget build(BuildContext context) {    return Padding(      padding: EdgeInsets.symmetric(        vertical: SizeConfig.scaleHeight(10),        horizontal:SizeConfig.screenWidth * 0.01,      ),      child: Stack(        children: [          SingleChildScrollView(            physics: const BouncingScrollPhysics(),            child: Column(              crossAxisAlignment: CrossAxisAlignment.start,              children: [                CustomSearchField(                  (value) => null,                  TextEditingController(),'ابحث عن الخدمة التي تريدها',                ),                spaceH(40),                CustomText('الفائض المتوفر', 18,Theme.of(context).textTheme.titleLarge!.color!),                Divider(                  height: SizeConfig.scaleHeight(20),                  thickness: 0.5,                  color: Colors.grey,                  endIndent: 20,                  indent: 20,                ),                const BuildItemSpare(),                const BuildItemSpare(),                const BuildItemSpare(),              ],            ),          ),          Positioned(            bottom: SizeConfig.scaleHeight(20),            right: SizeConfig.scaleWidth(20),            child: FloatingActionButton(              backgroundColor: AppColor.mainAppColor,              child: const Icon(                Icons.add,                size: 30,              ),              onPressed: () {                push(context, const AddSpairScreen());              },            ),          ),        ],      ),    );  }}