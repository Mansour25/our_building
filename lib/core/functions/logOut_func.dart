import 'package:get/get.dart';
import 'package:our_building/core/functions/transitions.dart';
import 'package:our_building/view/screens/auth/choose_auth_way_screen.dart';
import 'package:our_building/view/screens/auth/login_screen.dart';

import '../../controller/home_controllers/profile/profile_controller.dart';

signOut(context) {

  pushAndRemoveAll(context, const ChooseAuthWayScreen());

  Get.delete<
      ProfileController>(); // افترض أن اسم الـ Controller هو ProfileController
}
