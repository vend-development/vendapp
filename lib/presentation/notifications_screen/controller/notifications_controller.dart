import '../../../core/services/APIService.dart';
import '../models/notifications_item_model.dart';
import '/core/app_export.dart';
import 'package:application3/presentation/notifications_screen/models/notifications_model.dart';
import 'package:application3/widgets/custom_bottom_bar.dart';

class NotificationsController extends GetxController {
  var isLoading = true.obs;
  var notificationsList = <NotificationsItemModel>[].obs;

  @override
  void onInit() {
    fetchCart();
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



  void fetchCart() async {
    try {
      isLoading(true);
      var notifications= await getData("api/notifications/receivingUser_Notifications/v1/");

      if (notifications != null) {
        notificationsList.value = notificationsItemModelFromJson(notifications);
      }
    } finally {
      isLoading(false);
    }
  }
}



