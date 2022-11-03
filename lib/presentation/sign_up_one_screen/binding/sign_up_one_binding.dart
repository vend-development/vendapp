import '../controller/sign_up_one_controller.dart';
import 'package:get/get.dart';

class SignUpOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpOneController());
  }
}
