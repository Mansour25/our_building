import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:our_building/core/constant/constant_user_data.dart';

class ProfileController extends GetxController {
  TextEditingController controller = TextEditingController();

  List<ProfileDataModel> userDataTextField = [];

  addProviderServicesDataTextField() {
    userDataTextField
        .add(ProfileDataModel(title: 'الإسم/اسم المؤسسة', hint: 'محمد أحمد'));
    userDataTextField.add(ProfileDataModel(title: 'المهنة', hint: 'أعمال رخام'));
    userDataTextField
        .add(ProfileDataModel(title: 'سنوات الخدمة', hint: '5'));
    userDataTextField.add(ProfileDataModel(title: 'العنوان', hint: 'الرياض'));
    userDataTextField.add(ProfileDataModel(title: 'السجل التجاري', hint: ''));
    userDataTextField
        .add(ProfileDataModel(title: 'رقم الجوال', hint: '+966123456789'));
    userDataTextField
        .add(ProfileDataModel(title: 'الإيميل', hint: 'example@gmail.com'));
  }

  addUserDataTextField() {
    userDataTextField.add(ProfileDataModel(title: 'الإسم', hint: 'الاسم'));
    userDataTextField
        .add(ProfileDataModel(title: 'رقم الجوال', hint: '+966123456789'));
    userDataTextField
        .add(ProfileDataModel(title: 'الإيميل', hint: 'example@gmail.com'));
  }

  @override
  void onInit() {
    // TODO: implement onInit
    if (StaticUserData.isUser == true) {
      addUserDataTextField();
    } else {
      addProviderServicesDataTextField();
    }
    super.onInit();
  }
}

class ProfileDataModel {
  final String title;

  final String hint;

  ProfileDataModel({required this.title, required this.hint});
}
