import '/core/app_export.dart';
import 'package:application3/presentation/orders_confirmation_screen/models/orders_confirmation_model.dart';

class OrdersConfirmationController extends GetxController {
  Rx<OrdersConfirmationModel> ordersConfirmationModelObj =
      OrdersConfirmationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
