import 'controller/reset_password_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA702,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: getVerticalSize(
                    131.00,
                  ),
                  width: getHorizontalSize(
                    422.00,
                  ),
                  margin: getMargin(
                    right: 8,
                  ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: getPadding(
                            left: 132,
                            top: 15,
                            right: 132,
                            bottom: 15,
                          ),
                          child: Text(
                            "lbl_reset_password".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterLight20Orange800,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CommonImageView(
                          svgPath: ImageConstant.imgVector2,
                          height: getVerticalSize(
                            131.00,
                          ),
                          width: getHorizontalSize(
                            422.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 19,
                      top: 104,
                      right: 19,
                    ),
                    child: Text(
                      "msg_create_new_pass".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold32,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 19,
                      top: 9,
                      right: 19,
                    ),
                    child: Text(
                      "msg_enter_new_passw".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterLight20Bluegray900,
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 19,
                    top: 46,
                    right: 19,
                  ),
                  decoration: AppDecoration.fillBluegray100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CommonImageView(
                        svgPath: ImageConstant.imgUser,
                        height: getVerticalSize(
                          51.00,
                        ),
                        width: getHorizontalSize(
                          58.00,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 25,
                          top: 10,
                          bottom: 17,
                        ),
                        child: Text(
                          "lbl_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular20Bluegray900,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 19,
                    top: 28,
                    right: 19,
                  ),
                  decoration: AppDecoration.fillBluegray100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CommonImageView(
                        svgPath: ImageConstant.imgUser,
                        height: getVerticalSize(
                          51.00,
                        ),
                        width: getHorizontalSize(
                          58.00,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 26,
                          top: 8,
                          bottom: 19,
                        ),
                        child: Text(
                          "msg_confirm_passwor".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular20Bluegray900,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  width: 392,
                  text: "lbl_create".tr,
                  margin: getMargin(
                    left: 19,
                    top: 55,
                    right: 19,
                    bottom: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
