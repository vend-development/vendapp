import '../controller/individual_product_page_controller.dart';
import 'package:get/get.dart';

class IndividualProductPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IndividualProductPageController());
  }
}
