import '/core/app_export.dart';
import 'package:application3/presentation/accout_view_screen/models/accout_view_model.dart';
import 'package:application3/widgets/custom_bottom_bar.dart';

class AccoutViewController extends GetxController {
  Rx<AccoutViewModel> accoutViewModelObj = AccoutViewModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
