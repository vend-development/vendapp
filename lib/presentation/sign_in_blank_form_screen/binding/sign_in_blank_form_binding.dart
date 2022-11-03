import '../controller/sign_in_blank_form_controller.dart';
import 'package:get/get.dart';

class SignInBlankFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInBlankFormController());
  }
}
