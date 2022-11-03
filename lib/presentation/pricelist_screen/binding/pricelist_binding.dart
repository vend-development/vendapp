import '../controller/pricelist_controller.dart';
import 'package:get/get.dart';

class PricelistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PricelistController());
  }
}
