import 'package:application3/core/mainController.dart';

import '../../../core/services/APIService.dart';
import '../../sign_in_blank_form_screen/controller/sign_in_blank_form_controller.dart';
import '/core/app_export.dart';
import 'package:application3/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;
  SignInBlankFormController signInBlankFormController = Get.put(SignInBlankFormController());

  @override
  void onInit() {
    super.onInit();
    ControllerPage controllerPage = Get.put(ControllerPage());
    verifyToken();

  }

  @override
  void onReady() {
    super.onReady();

    Future.delayed(const Duration(milliseconds: 10000), () {
      if( signInBlankFormController.tokenVerified.isTrue){
        Get.toNamed(AppRoutes.generalScreen);
      }else{
        Get.toNamed(AppRoutes.loginScreen);
      }});
  }

  @override
  void onClose() {
    super.onClose();
  }
}
