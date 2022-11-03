import 'package:flutter/cupertino.dart';

import '../models/addToCartCardModel.dart';
import '/core/app_export.dart';

class PaymentController extends GetxController {
  Rx<AddToCartCardModel> iphone14ProMaxTwoModelObj =
      AddToCartCardModel().obs;


  Rx<bool> paymentInitiated = false.obs;

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
