import 'package:flutter/cupertino.dart';

import '../models/addToCartCardModel.dart';
import '/core/app_export.dart';

class AddToCartController extends GetxController {
  Rx<AddToCartCardModel> iphone14ProMaxTwoModelObj =
      AddToCartCardModel().obs;

  TextEditingController amountController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
