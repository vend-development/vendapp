import 'package:application3/presentation/filter_result_container_screen/filter_result_container_screen.dart';

import '../../../core/services/APIService.dart';
import '/core/app_export.dart';
import 'package:application3/presentation/sign_in_blank_form_screen/models/sign_in_blank_form_model.dart';
import 'package:flutter/material.dart';

class SignInBlankFormController extends GetxController {

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignInBlankFormModel> signInBlankFormModelObj = SignInBlankFormModel().obs;


  Rx<bool> tokenVerified = false.obs;

  RxBool checkbox = false.obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onInit() {
    super.onInit();

    verifyToken();

  }

  @override
  void onReady() {
    super.onReady();
    if(tokenVerified == true){
      Get.to(GeneralScreen());
    }
  }

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    emailController.dispose();
  }




}
