import 'controller/forgot_password_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:application3/widgets/custom_icon_button.dart';
import 'package:application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
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
                                  left: 16, top: 75, right: 16, bottom: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(103.00))),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 7, right: 10),
                                        child: Text("lbl_forgot_password".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold32)),
                                    Container(
                                        width: getHorizontalSize(351.00),
                                        margin: getMargin(top: 11, right: 10),
                                        child: Text("msg_please_enter_yo".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular16)),
                                    Container(
                                        width: double.infinity,
                                        margin: getMargin(top: 59),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(70.00))),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomTextFormField(
                                                  width: 382,
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .frameThirtyController,
                                                  hintText: "lbl_email_id".tr,
                                                  textInputAction:
                                                      TextInputAction.done),
                                              CustomButton(
                                                  width: 382,
                                                  text: "lbl_log_in".tr,
                                                  margin: getMargin(top: 40),
                                                  variant: ButtonVariant
                                                      .FillWhiteA700,
                                                  shape: ButtonShape
                                                      .CircleBorder25,
                                                  padding: ButtonPadding
                                                      .PaddingAll16,
                                                  fontStyle: ButtonFontStyle
                                                      .InterMedium18)
                                            ]))
                                  ])))
                    ])))));
  }

  onTapBtntf() {
    Get.back();
  }
}
