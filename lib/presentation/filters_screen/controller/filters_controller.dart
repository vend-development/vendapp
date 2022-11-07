import '/core/app_export.dart';
import 'package:application3/presentation/filters_screen/models/filters_model.dart';

class FiltersController extends GetxController {
  Rx<FiltersModel> filtersModelObj = FiltersModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
