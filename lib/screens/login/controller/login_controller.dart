import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:products/services/login_services.dart';

import '../../ChoiceScreen/ChoiceScreen.dart';

class loginController extends GetxController{
  final userNameController=TextEditingController();
  final passController=TextEditingController();
  LoginServices l=LoginServices();
  log()async{
    await l.login(Get.context! ,userNameController.text,passController.text);
    Get.to(ChoiceScreen());
  }
}
