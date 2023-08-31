import 'package:flutter/material.dart';import 'package:our_building/core/class/app_data/app_color.dart';import '../../../core/functions/spaces.dart';import '../../../core/functions/transitions.dart';import 'package:our_building/core/class/size_config/size_config.dart';import 'package:our_building/view/screens/auth/verification_code_screen.dart';import 'package:our_building/view/widgets/custom_public_widgets/custom_button.dart';import 'package:our_building/view/widgets/custom_public_widgets/custom_text.dart';import '../../widgets/auth/custom_title_and_textfield.dart';import '../../widgets/custom_public_widgets/custom_logo_app.dart';class SendEmailScreen extends StatelessWidget {  const SendEmailScreen({super.key});  @override  Widget build(BuildContext context) {    return Scaffold(      backgroundColor: Colors.white,      body: SafeArea(        child: SingleChildScrollView(          physics: const BouncingScrollPhysics(),          child: Directionality(            textDirection: TextDirection.rtl,            child: Padding(              padding: EdgeInsets.symmetric(                horizontal: SizeConfig.scaleWidth(20),              ),              child: Column(                crossAxisAlignment: CrossAxisAlignment.start,                children: [                  spaceH(50),                  const CustomLogoApp(height:200),                  spaceH(100),                  CustomText('إعادة تعيين كلمة المرور', 14, Colors.black),                  spaceH(30),                  CustomText('من فضلك أدخل البريد الإلكتروني', 12, Colors.grey),                  CustomTitleAndTextField(                    'البريد الإلكتروني',                    'example@gmail.com',                    TextEditingController(),                    TextInputType.emailAddress,                    false,                    acceptedTheme: false,                  ),                  spaceH(30),                  CustomButton(                    Center(                      child: CustomText(                        'إرسال الكود',                        14,                        Colors.white,                        fontWeight: FontWeight.w600,                      ),                    ),                    () => push(context, const VerificationCodeScreen()),                    double.infinity,                    50,                    AppColor.mainAppColor,                  ),                ],              ),            ),          ),        ),      ),    );  }}