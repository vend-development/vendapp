import 'package:application3/presentation/account_details_screen/account_details_screen.dart';
import 'package:application3/presentation/create_profile_screen/create_profile_screen.dart';
import 'package:application3/presentation/notifications_screen/notifications_screen.dart';
import 'package:application3/presentation/orders_screen/orders_screen.dart';
import 'package:application3/presentation/receipts_screen/receipts_screen.dart';
import 'package:application3/presentation/trending1_screen/trending1_screen.dart';

import '../home_page_screen/home_page_screen.dart';
import '../messages_screen/messages_screen.dart';
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
      case BottomBarEnum.Streams:
        return Trending1Screen();
      case BottomBarEnum.Messages:
        return MessagesScreen();
      case BottomBarEnum.Notifications:
        return NotificationsScreen();
      // case BottomBarEnum.Profile:
      //   return AccountDetailsScreen();
      default:
        return HomePageScreen();
    }
  }
}
