import '../controller/addToCartCardController.dart';
import 'package:get/get.dart';

class Iphone14ProMaxTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentController());
  }
}
