import '../../../core/services/APIService.dart';
import '/core/app_export.dart';
import 'package:application3/presentation/sign_in_blank_form_screen/models/sign_in_blank_form_model.dart';
import 'package:flutter/material.dart';

class SignUpBlankFormController extends GetxController {

  TextEditingController emailController = TextEditingController();

  TextEditingController nameController = TextEditingController();


  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();


  Rx<SignInBlankFormModel> signInBlankFormModelObj = SignInBlankFormModel().obs;

  RxBool termsCheckbox = false.obs;

  RxBool ageCheckbox = false.obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    emailController.dispose();
  }




}
