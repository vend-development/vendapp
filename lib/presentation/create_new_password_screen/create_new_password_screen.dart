import 'controller/create_new_password_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/core/utils/validation_functions.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:application3/widgets/custom_icon_button.dart';
import 'package:application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CreateNewPasswordScreen extends GetWidget<CreateNewPasswordController> {
  CreateNewPasswordController createNewPasswordController = Get.put(CreateNewPasswordController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();




  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // backgroundColor: ColorConstant.gray900,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: size.width,
                                      margin: getMargin(top: 10),
                                      child: Padding(
                                          padding:
                                              getPadding(left: 24, right: 182),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                    padding: getPadding(top: 1),
                                                    child: InkWell(
                                                        onTap: () {
                                                          onTapImgArrowleft();
                                                        },
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowleft,
                                                            height:
                                                                getSize(28.00),
                                                            width: getSize(
                                                                28.00)))),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 16),
                                                    child: Text(
                                                        "Forgot Password",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistBold24
                                                            .copyWith(
                                                                height: 1.00)))
                                              ])))),
                              Padding(
                                  padding:
                                      getPadding(left: 24, top: 89, right: 24),
                                  child: CommonImageView(
                                      imagePath: ImageConstant.imgImage,
                                      height: getSize(300.00),
                                      width: getSize(300.00))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 24, top: 59, right: 24),
                                      child: Text("Create Your New Password",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold16Black900
                                              .copyWith(
                                                  letterSpacing: 0.20,
                                                  height: 1.00)))),
                              Obx(() => CustomTextFormField(
                                  width: 380,
                                  focusNode: FocusNode(),
                                  controller: controller.passwordController,
                                  hintText: "Password",
                                  margin:
                                      getMargin(left: 24, top: 26, right: 24),
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 20,
                                          top: 20,
                                          right: 12,
                                          bottom: 20),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgLock)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(20.00),
                                      minHeight: getSize(20.00)),
                                  suffix: InkWell(
                                      onTap: () {
                                        controller.isShowPassword.value =
                                            !controller.isShowPassword.value;
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 20,
                                              right: 20,
                                              bottom: 20),
                                          child: CommonImageView(
                                              svgPath: controller
                                                      .isShowPassword.value
                                                  ? ImageConstant.imgReply
                                                  : ImageConstant.imgReply))),
                                  suffixConstraints: BoxConstraints(
                                      minWidth: getHorizontalSize(20.00),
                                      minHeight: getVerticalSize(20.00)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText:
                                      !controller.isShowPassword.value)),
                              Obx(() => CustomTextFormField(
                                  width: 380,
                                  focusNode: FocusNode(),
                                  controller: controller.passwordOneController,
                                  hintText: "Confirm Password",
                                  margin:
                                      getMargin(left: 24, top: 24, right: 24),
                                  textInputAction: TextInputAction.done,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 20,
                                          top: 20,
                                          right: 12,
                                          bottom: 20),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgLock)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(20.00),
                                      minHeight: getSize(20.00)),
                                  suffix: InkWell(
                                      onTap: () {
                                        controller.isShowPassword1.value =
                                            !controller.isShowPassword1.value;
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 20,
                                              right: 20,
                                              bottom: 20),
                                          child: CommonImageView(
                                              svgPath: controller
                                                      .isShowPassword1.value
                                                  ? ImageConstant.imgReply
                                                  : ImageConstant.imgReply))),
                                  suffixConstraints: BoxConstraints(
                                      minWidth: getHorizontalSize(20.00),
                                      minHeight: getVerticalSize(20.00)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText:
                                      !controller.isShowPassword1.value)),

                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 24, top: 24, right: 24),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomIconButton(
                                                height: 24,
                                                width: 24,
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgCheckmark)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 4,
                                                    bottom: 5),
                                                child: Text(
                                                    "Remember Me",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtUrbanistSemiBold14
                                                        .copyWith(
                                                            letterSpacing: 0.20,
                                                            height: 1.00)))
                                          ]))),
                              CustomButton(
                                  width: 380,
                                  text: "Continue",
                                  margin: getMargin(
                                      left: 24, top: 56, right: 24, bottom: 20))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
