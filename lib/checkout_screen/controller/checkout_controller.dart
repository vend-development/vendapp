import '../models/checkout_model.dart';
import '/core/app_export.dart';

class CheckoutController extends GetxController {
  Rx<CheckoutModel> checkoutModelObj = CheckoutModel().obs;

  Rx<String> paymentMethod = "Mpesa".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
