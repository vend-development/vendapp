import '/core/app_export.dart';
import 'package:application3/presentation/filter_result_container_screen/models/filter_result_container_model.dart';
import 'package:application3/widgets/custom_bottom_bar.dart';

class FilterResultContainerController extends GetxController {
  Rx<FilterResultContainerModel> filterResultContainerModelObj =
      FilterResultContainerModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
