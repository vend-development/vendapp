import 'controller/notification_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_icon_button.dart';
import 'package:application3/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepPurpleA200,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      CustomIconButton(
                          height: 44,
                          width: 44,
                          margin: getMargin(left: 16, top: 3, right: 16),
                          shape: IconButtonShape.RoundedBorder15,
                          onTap: () {
                            onTapBtntf();
                          },
                          child: CommonImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding:
                                  getPadding(left: 16, top: 121, right: 16),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgNotificationbe,
                                  height: getVerticalSize(161.00),
                                  width: getHorizontalSize(146.00)))),
                      Padding(
                          padding: getPadding(left: 16, top: 41, right: 16),
                          child: Text("msg_turn_on_notific2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32
                                  .copyWith(height: 1.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(382.00),
                              margin: getMargin(left: 16, top: 13, right: 16),
                              child: Text("msg_turn_on_notific".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 16, top: 49, right: 16, bottom: 329),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 3),
                                        child: Text("lbl_notifications".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium16)),
                                    Obx(() => CustomSwitch(
                                        margin: getMargin(top: 1),
                                        value:
                                            controller.isSelectedSwitch.value,
                                        onChanged: (value) {
                                          controller.isSelectedSwitch.value =
                                              value;
                                        }))
                                  ])))
                    ])))));
  }

  onTapBtntf() {
    Get.back();
  }
}
