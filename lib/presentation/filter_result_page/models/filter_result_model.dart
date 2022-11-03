import 'package:get/get.dart';
import 'listsizemediumty_item_model.dart';
import 'listrectanglefour_item_model.dart';

class FilterResultModel {
  RxList<ListsizemediumtyItemModel> listsizemediumtyItemList =
      RxList.filled(5, ListsizemediumtyItemModel());

  RxList<ListrectanglefourItemModel> listrectanglefourItemList =
      RxList.filled(4, ListrectanglefourItemModel());
}
