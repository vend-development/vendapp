import 'package:get/get.dart';
import 'listsix_item_model.dart';
import 'listellipsefifteen2_item_model.dart';

class AccountDetailsOneModel {
  RxList<ListsixItemModel> listsixItemList =
      RxList.filled(3, ListsixItemModel());

  RxList<Listellipsefifteen2ItemModel> listellipsefifteen2ItemList =
      RxList.filled(5, Listellipsefifteen2ItemModel());
}
