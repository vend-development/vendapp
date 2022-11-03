import 'package:application3/presentation/create_profile_screen/create_profile_screen.dart';
import 'package:application3/presentation/orders_screen/orders_screen.dart';
import 'package:application3/presentation/receipts_screen/receipts_screen.dart';

import '../home_page_screen/home_page_screen.dart';
import 'controller/filter_result_container_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/presentation/filter_result_page/filter_result_page.dart';
import 'package:application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class GeneralScreen
    extends GetWidget<FilterResultContainerController> {

  FilterResultContainerController filterResultContainerController = Get.put(FilterResultContainerController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,

            body: Obx(() => getCurrentWidget(controller.type.value)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              controller.type.value = type;
            })));
  }

  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return HomePageScreen();
      case BottomBarEnum.Search:
        return OrdersScreen();
      case BottomBarEnum.Booking:
        return ReceiptsScreen();
      case BottomBarEnum.Profile:
        return CreateProfileScreen();
      default:
        return HomePageScreen();
    }
  }
}
