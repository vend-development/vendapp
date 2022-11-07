import 'controller/log_in_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:application3/widgets/custom_icon_button.dart';
import 'package:application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LogInScreen extends GetWidget<LogInController> {
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
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(
                                  left: 16, top: 75, right: 15, bottom: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(103.00))),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2, right: 10),
                                        child: Text("msg_welcome_to_soci2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold32)),
                                    Padding(
                                        padding: getPadding(top: 16, right: 10),
                                        child: Text("msg_login_your_acco".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular16)),
                                    Container(
                                        width: double.infinity,
                                        margin: getMargin(top: 39),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(103.00))),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  82.55))),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomTextFormField(
                                                            width: 382,
                                                            focusNode:
                                                                FocusNode(),
                                                            controller: controller
                                                                .frameThirtyController,
                                                            hintText:
                                                                "lbl_email_id"
                                                                    .tr,
                                                            margin: getMargin(
                                                                right: 1),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                width: double
                                                                    .infinity,
                                                                margin:
                                                                    getMargin(
                                                                        top: 24,
                                                                        right:
                                                                            1),
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(getHorizontalSize(
                                                                            25.00))),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Obx(() => CustomTextFormField(
                                                                          width: 382,
                                                                          focusNode: FocusNode(),
                                                                          controller: controller.frameThirtyOneController,
                                                                          hintText: "lbl_password".tr,
                                                                          textInputAction: TextInputAction.done,
                                                                          alignment: Alignment.centerLeft,
                                                                          suffix: InkWell(
                                                                              onTap: () {
                                                                                controller.isShowPassword.value = !controller.isShowPassword.value;
                                                                              },
                                                                              child: Container(margin: getMargin(left: 30, top: 15, right: 17, bottom: 16), child: CommonImageView(svgPath: controller.isShowPassword.value ? ImageConstant.imgEye : ImageConstant.imgEye))),
                                                                          suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(20.00), minHeight: getVerticalSize(18.00)),
                                                                          isObscureText: !controller.isShowPassword.value))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10,
                                                                        top:
                                                                            25),
                                                                child: Text(
                                                                    "msg_forgot_password"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular16)))
                                                      ])),
                                              CustomButton(
                                                  width: 382,
                                                  text: "lbl_log_in".tr,
                                                  margin: getMargin(
                                                      top: 39, right: 1),
                                                  variant: ButtonVariant
                                                      .FillWhiteA700,
                                                  shape: ButtonShape
                                                      .CircleBorder25,
                                                  padding: ButtonPadding
                                                      .PaddingAll16,
                                                  fontStyle: ButtonFontStyle
                                                      .InterMedium18,
                                                  alignment: Alignment.center)
                                            ]))
                                  ])))
                    ])))));
  }

  onTapBtntf() {
    Get.back();
  }
}
