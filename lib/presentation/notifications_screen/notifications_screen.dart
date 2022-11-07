import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/notifications_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  NotificationsController notificationsController = Get.put(NotificationsController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                      Padding(
                          padding: getPadding(left: 16, top: 41, right: 16),
                          child: Text("Notifications",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200
                                  .copyWith(height: 1.00))),
                      Padding(
                          padding: getPadding(top: 36),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Container(
                                    height: getVerticalSize(2.00),
                                    width: size.width,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.deepPurple50));
                              },
                              itemCount: controller.notificationsList.length,
                              itemBuilder: (context, index) {
                                 return NotificationsItemWidget(controller.notificationsList[index]);
                              })))
                    ]))),
    ));
  }



  onTapImgArrowleft() {
    Get.back();
  }
}
