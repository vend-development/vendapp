import 'package:get/get.dart';
import 'listellipsefifteen3_item_model.dart';
import 'listellipsetwentytwo_one_item_model.dart';

class MessagesModel {
  RxList<Listellipsefifteen3ItemModel> listellipsefifteen3ItemList =
      RxList.filled(6, Listellipsefifteen3ItemModel());

  RxList<ListellipsetwentytwoOneItemModel> listellipsetwentytwoOneItemList =
      RxList.filled(5, ListellipsetwentytwoOneItemModel());
}
