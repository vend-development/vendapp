import '../../../core/services/APIService.dart';
import '../models/orders_item_model.dart';
import '/core/app_export.dart';

class OrdersController extends GetxController {
  var isLoading = true.obs;
  var orderList = <OrdersModel>[].obs;

  @override
  void onInit() {
    fetchUserOrders();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void fetchUserOrders() async {
    try {
      isLoading(true);
      var orders = await getData("api/venues/getuserorders/v1/");
      if (orders != null) {
        orderList.value = ordersModelFromJson(orders);
      }
    } finally {
      isLoading(false);
    }
  }


}

