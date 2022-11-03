import 'package:application3/presentation/pricelist_screen/models/pricelist_item_model.dart';

import '/core/app_export.dart';
import 'package:application3/presentation/home_one_screen/models/home_one_model.dart';
import 'package:application3/widgets/custom_bottom_bar.dart';

class UserPriceListController extends GetxController {
  Rx<HomeOneModel> homeOneModelObj = HomeOneModel().obs;
  late Rx<ProductCategory> productCategory = ProductCategory(id: 0, name: "").obs;
  Rx<int> category = 0.obs;

  // Rx<BottomBarEnum> type = BottomBarEnum.Imgsearchgray501.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
