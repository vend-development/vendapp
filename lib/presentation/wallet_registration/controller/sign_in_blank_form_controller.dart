import '../../../core/services/APIService.dart';
import '/core/app_export.dart';
import 'package:application3/presentation/sign_in_blank_form_screen/models/sign_in_blank_form_model.dart';
import 'package:flutter/material.dart';

class WalletRegistrationController extends GetxController {

  TextEditingController phoneController = TextEditingController();


  TextEditingController nameController = TextEditingController();


  TextEditingController pinController = TextEditingController();

  TextEditingController confirmPinController = TextEditingController();


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
    pinController.dispose();
    phoneController.dispose();
  }




}
