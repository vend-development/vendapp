import '../controller/filter_result_container_controller.dart';
import 'package:get/get.dart';

class FilterResultContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FilterResultContainerController());
  }
}
