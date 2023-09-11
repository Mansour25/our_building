// ignore_for_file: unnecessary_this

import 'package:our_building/core/class/size_config/size_config.dart';

extension SizeConfigExtention on num {
  double get h {
    return SizeConfig.scaleHeight(this.toDouble());
  }

  double get w {
    return SizeConfig.scaleWidth(this.toDouble());
  }
}
