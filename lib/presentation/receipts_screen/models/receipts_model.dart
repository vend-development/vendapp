import 'package:get/get.dart';
import 'receipts_item_model.dart';

class ReceiptsModel {
  RxList<ReceiptsItemModel> receiptsItemList =
      RxList.filled(3, ReceiptsItemModel());
}
