import 'package:get/get.dart';

class LoginController extends GetxController {
  bool checkValue = true;

  changeCheckValue(value) {
    checkValue = !checkValue;
    update();
  }
}
