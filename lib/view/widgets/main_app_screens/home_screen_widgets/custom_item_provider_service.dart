import 'package:flutter/material.dart';

import '../../../../core/class/app_data/app_color.dart';
import '../../../../core/class/size_config/size_config.dart';
import '../../../../core/functions/spaces.dart';
import '../../custom_public_widgets/custom_text.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomItemProviderServices extends StatelessWidget {
  final String title;

  const CustomItemProviderServices({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.scaleHeight(10),
      ),
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.scaleHeight(10),
        horizontal: SizeConfig.scaleWidth(10),
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title,
                15,
                AppColor.mainAppColor,
                fontWeight: FontWeight.w600,
              ),
              spaceH(5),
              const CustomRichText(title: 'المهنة', dec: 'بيع مواد بناء'),
              const CustomRichText(title: 'الهاتف', dec: '+966123456789'),
              const CustomRichText(title: 'الموقع', dec: 'الرياض شارغ الأغا'),
              spaceH(30),
            ],
          ),
          const CommunicatedButton(),
          const CustomContainerClipperContainImage(),
        ],
      ),
    );
  }
}

class CustomContainerClipperContainImage extends StatelessWidget {
  const CustomContainerClipperContainImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        color: AppColor.mainAppColor,
        alignment: Alignment.center,
        height: SizeConfig.scaleHeight(120),
        width: SizeConfig.scaleWidth(110),
        child: CustomText('Image', 20, Colors.white),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double width = size.width;
    double height = size.height;
    path.lineTo(0, SizeConfig.scaleHeight(10));
    path.lineTo(SizeConfig.scaleWidth(15), SizeConfig.scaleHeight(0));
    path.lineTo(width - SizeConfig.scaleWidth(20), 0);
    path.lineTo(width, height - SizeConfig.scaleHeight(20));
    path.lineTo(width - SizeConfig.scaleWidth(15), height);
    path.lineTo(SizeConfig.scaleWidth(80), height);
    path.quadraticBezierTo(SizeConfig.scaleWidth(10), height + 20, 0,
        height - SizeConfig.scaleHeight(20));
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomRichText extends StatelessWidget {
  final String title;

  final String dec;

  const CustomRichText({super.key, required this.title, required this.dec});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.scaleHeight(2),
        // horizontal: SizeConfig.scaleWidth(3),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$title : ',
              style: TextStyle(
                  fontSize: SizeConfig.scaleTextFont(13),
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).textTheme.titleLarge!.color!,
                  fontFamily: 'Tajawal',
                  overflow: TextOverflow.ellipsis),
            ),
            TextSpan(
              text: dec,
              style: TextStyle(
                  fontSize: SizeConfig.scaleTextFont(12),
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).textTheme.titleLarge!.color!,
                  fontFamily: 'Tajawal',
                  overflow: TextOverflow.ellipsis),
            ),
          ],
        ),
      ),
    );
  }
}

class CommunicatedButton extends StatelessWidget {
  const CommunicatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ActionChip(
        onPressed: () async {
          String message =
              'أنا أتواصل معك من تطبيق عماركم وأريد الاستفسار منك في الخدمة التي تقدمها\n';
          String phoneNum = '+972592851883';
          var whatsappUrl = Uri.parse(
              "whatsapp://send?phone=$phoneNum&text=${Uri.encodeComponent(message)}");
          try {
            launchUrl(whatsappUrl);
          } catch (e) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: CustomText('حدث خطأ غير معروف', 16, Colors.white),
              ),
            );
          }
        },
        label: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.scaleWidth(10),
          ),
          child: Center(
            child: CustomText('تواصل', 10, Colors.white),
          ),
        ),
        backgroundColor: AppColor.mainAppColor,
      ),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   final String phoneNumber = "رقم الهاتف هنا";
//   final String message = "مرحبًا، هذه رسالة ثابتة."; // النص الثابت الذي ترغب في إرساله
//
//   void _openWhatsApp() async {
//     final url = "whatsapp://send?phone=$phoneNumber&text=${Uri.parse(message)}";
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       print("لا يمكن فتح تطبيق WhatsApp");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("فتح WhatsApp"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _openWhatsApp,
//           child: Text("فتح WhatsApp"),
//         ),
//       ),
//     );
//   }
// }
