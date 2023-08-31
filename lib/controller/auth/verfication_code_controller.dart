import 'package:get/get.dart';

import '../../core/functions/transitions.dart';
import '../../view/screens/auth/reset_password_screen.dart';

class VerficationCodeController extends GetxController {
  bool isLoading = false;

  verfication(context) async {
    isLoading = true;
    update();

    await Future.delayed(const Duration(milliseconds: 2200)).then((value) {
      isLoading = false;
      update();
      goToResetPass(context);
    });
  }

  goToResetPass(context) {
    push(context, const ResetPassScreen());
  }
}
