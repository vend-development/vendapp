import '../controller/receipts_controller.dart';
import 'package:get/get.dart';

class ReceiptsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReceiptsController());
  }
}
