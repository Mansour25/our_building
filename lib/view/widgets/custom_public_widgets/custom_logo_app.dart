import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:our_building/core/class/app_data/app_assets.dart';
import 'package:our_building/core/class/app_data/app_color.dart';
import 'package:our_building/core/class/size_config/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/functions/spaces.dart';
import 'custom_text.dart';
import 'package:jovial_svg/jovial_svg.dart';

class CustomLogoApp extends StatelessWidget {
  final double height;
  final String imgPath;
  final bool isSvg;

  // image default is the app logo
  const CustomLogoApp({
    Key? key,
    required this.height,
    this.imgPath = AppAssets.logoApp,
    this.isSvg = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: SizeConfig.scaleHeight(height),
        child: CircleAvatar(
          backgroundColor: AppColor.mainAppColor,
          radius: 150,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: ScalableImageWidget.fromSISource(
              si: ScalableImageSource.fromSvg(
                MySVG(imagePath: AppAssets.logoApp),
                bigFloats: false,
                'key',
                compact: false,
              ),
              scale: 0.8,
            ),
          ),
        ),
      ),
    );
  }
}

class MySVG extends AssetBundle {
  final String imagePath;

  MySVG({required this.imagePath});

  @override
  Future<ByteData> load(String key) async {
// TODO: implement load
    return await rootBundle.load(imagePath);
  }

  @override
  Future<T> loadStructuredData<T>(String key,
      Future<T> Function(String value) parser) {
    // TODO: implement loadStructuredData
    throw UnimplementedError();
  }
}
// using as widget

class TitleAndBackIcon extends StatelessWidget {
  final String title;

  final Function()? function;

  TitleAndBackIcon(this.title, this.function);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: function,
          // color: AppColor.mainAppColor,
          icon: const Icon(Icons.arrow_back_ios),
        ),
        spaceW(10),
        CustomText(title, 14, Colors.black),
      ],
    );
  }
}

// use svg using   jovial_svg: ^1.1.17 package
/*

 */



