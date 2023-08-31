import 'package:flutter/cupertino.dart';

import '../custom_title_and_textfield.dart';

class ListTextFieldInRegisterProviderServices extends StatelessWidget {
  const ListTextFieldInRegisterProviderServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTitleAndTextField(
          'اسم المؤسسة/ الشركة',
          'إسم المؤسسة',
          TextEditingController(),
          TextInputType.text,
          false,
          acceptedTheme: false,
        ),
        CustomTitleAndTextField(
          'مقدم الخدمة',
          'إسم مقدم الخدمة',
          TextEditingController(),
          TextInputType.phone,
          false,
          acceptedTheme: false,
        ),
        CustomTitleAndTextField(
          'السجل التجاري',
          '123456789',
          TextEditingController(),
          TextInputType.number,
          false,
          acceptedTheme: false,
        ),
        CustomTitleAndTextField(
          'رقم الجوال',
          '+966 1234456789',
          TextEditingController(),
          TextInputType.phone,
          false,
          acceptedTheme: false,
        ),
        CustomTitleAndTextField(
          'رقم الجوال',
          '+966 1234456789',
          TextEditingController(),
          TextInputType.phone,
          false,
          acceptedTheme: false,
        ),
        CustomTitleAndTextField(
          'العنوان',
          'جدة الشارع الخامس',
          TextEditingController(),
          TextInputType.phone,
          false,
          acceptedTheme: false,
        ),
        CustomTitleAndTextField(
          'كلمة المرور',
          '************',
          TextEditingController(),
          TextInputType.visiblePassword,
          true,
          acceptedTheme: false,
        ),
        CustomTitleAndTextField(
          'تأكيد كلمة المرور',
          '************',
          TextEditingController(),
          TextInputType.visiblePassword,
          true,
          acceptedTheme: false,
        ),
      ],
    );
  }
}
