import '/core/app_export.dart';
import 'package:application3/presentation/messages_screen/models/messages_model.dart';
import 'package:application3/widgets/custom_bottom_bar.dart';

class MessagesController extends GetxController {
  Rx<MessagesModel> messagesModelObj = MessagesModel().obs;

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
