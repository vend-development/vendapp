import 'package:get/get.dart';
import 'listellipsefifteen_item_model.dart';
import 'listnineteen1_item_model.dart';

class StoriesModel {
  RxList<ListellipsefifteenItemModel> listellipsefifteenItemList =
      RxList.filled(5, ListellipsefifteenItemModel());

  RxList<Listnineteen1ItemModel> listnineteen1ItemList =
      RxList.filled(3, Listnineteen1ItemModel());
}
