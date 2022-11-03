import '../controller/orders_confirmation_controller.dart';
import 'package:get/get.dart';

class OrdersConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrdersConfirmationController());
  }
}
