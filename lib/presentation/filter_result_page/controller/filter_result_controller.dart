import '/core/app_export.dart';
import 'package:application3/presentation/filter_result_page/models/filter_result_model.dart';
import 'package:flutter/material.dart';

class FilterResultController extends GetxController {
  FilterResultController(this.filterResultModelObj);

  TextEditingController searchBarController = TextEditingController();

  Rx<FilterResultModel> filterResultModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchBarController.dispose();
  }
}
