import '/core/app_export.dart';
import 'package:application3/presentation/receipts_screen/models/receipts_model.dart';

class ReceiptsController extends GetxController {
  Rx<ReceiptsModel> receiptsModelObj = ReceiptsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
