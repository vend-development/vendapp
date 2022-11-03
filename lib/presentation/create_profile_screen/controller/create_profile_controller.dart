import '/core/app_export.dart';
import 'package:application3/presentation/create_profile_screen/models/create_profile_model.dart';

class CreateProfileController extends GetxController {
  Rx<UserProfileModel> createProfileModelObj = UserProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
