import '../models/complete_model.dart';
import '/core/app_export.dart';

class CompleteController extends GetxController {
  Rx<CompleteModel> completeModelObj = CompleteModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
