import 'package:application3/presentation/sign_up_blank_form_screen/sign_up_blank_form_screen.dart';

import '../../core/services/APIService.dart';
import '../create_new_password_screen/create_new_password_screen.dart';
import 'controller/sign_in_blank_form_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/core/utils/validation_functions.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:application3/widgets/custom_checkbox.dart';
import 'package:application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignInBlankFormScreen extends GetWidget<SignInBlankFormController> {
  SignInBlankFormController signInBlankFormController = Get.put(SignInBlankFormController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding:
                                  getPadding(left: 24, top: 10, right: 24),
                                  child: InkWell(
                                      onTap: () {
                                        onTapImgArrowleft();
                                      },
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgArrowleft,
                                          height: getSize(28.00),
                                          width: getSize(28.00)))),
                              Container(
                                  width: getHorizontalSize(280.00),
                                  margin:
                                  getMargin(left: 24, top: 79, right: 24),
                                  child: Text("Login into Your Account",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistBold48
                                          .copyWith(height: 1.20))),

                              CustomTextFormField(
                                width: 380,
                                focusNode: FocusNode(),
                                controller:
                                controller.emailController,
                                hintText: "Email",
                                margin:
                                getMargin(left: 24, top: 24, right: 24),
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.center,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 20,
                                        top: 18,
                                        right: 12,
                                        bottom: 22),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgLock)),
                                prefixConstraints: BoxConstraints(
                                    minWidth: getSize(20.00),
                                    minHeight: getSize(20.00)),

                                suffixConstraints: BoxConstraints(
                                    minWidth: getHorizontalSize(20.00),
                                    minHeight: getVerticalSize(20.00)),
                                validator: (value) {
                                  if ((value == null) ||
                                  (!isValidEmail(value,
                                  isRequired: true))){
                                    return "Please enter valid email";
                                  }
                                  return null;
                                }),
                              Obx(() => CustomTextFormField(
                                  width: 380,
                                  focusNode: FocusNode(),
                                  controller:
                                  controller.passwordController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                  getMargin(left: 24, top: 24, right: 24),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 20,
                                          top: 18,
                                          right: 12,
                                          bottom: 22),
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
                                              top: 18,
                                              right: 20,
                                              bottom: 22),
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
                              Obx(() => CustomCheckbox(
                                  text: "Remember me",
                                  iconSize: 24,
                                  value: controller.checkbox.value,
                                  padding:
                                  getPadding(left: 24, top: 24, right: 24),
                                  onChange: (value) {
                                    controller.checkbox.value = value;
                                  })),
                              CustomButton(

                                  onTap: (){

                                    Map data =
                                    {
                                      "email": controller.emailController.text,
                                      "password": controller.passwordController.text,
                                    };
                                    userLogin("api/authentication/login/v1/", data, context);

                                  },
                                  width: 380,
                                  text: "lbl_sign_in".tr,
                                  margin:
                                  getMargin(left: 24, top: 24, right: 24),
                                  variant: ButtonVariant.FillBluegray100,
                                  shape: ButtonShape.RoundedBorder16,
                                  padding: ButtonPadding.PaddingAll16,
                                  fontStyle: ButtonFontStyle.UrbanistBold16,
                                  alignment: Alignment.center),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context)
                                      .push(
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation, secondaryAnimation) =>  CreateNewPasswordScreen(),
                                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                          var begin = const Offset(-1.0, 0.0);
                                          var end = Offset.zero;
                                          var curve = Curves.easeInCirc;

                                          var tween =
                                          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                                          return SlideTransition(
                                            position: animation.drive(tween),
                                            child: child,
                                          );
                                        },
                                      )
                                  );
                                },



                                child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 24, top: 29, right: 24),
                                        child: Text("Forgot Password",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtUrbanistSemiBold14
                                                .copyWith(
                                                letterSpacing: 0.20,
                                                height: 1.00)))),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 24, top: 60, right: 24),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width: width * 0.8,
                                                margin: getMargin(
                                                    top: 10, bottom: 6),
                                                decoration: BoxDecoration(
                                                    color:
                                                    ColorConstant.gray200)),


                                          ]))),



                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context)
                                      .push(
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation, secondaryAnimation) => SignUpBlankFormScreen(),
                                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                          var begin = const Offset(-1.0, 0.0);
                                          var end = Offset.zero;
                                          var curve = Curves.easeInCirc;

                                          var tween =
                                          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                                          return SlideTransition(
                                            position: animation.drive(tween),
                                            child: child,
                                          );
                                        },
                                      )
                                  );
                                },
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 24,
                                            top: 48,
                                            right: 24,
                                            bottom: 48),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding: getPadding(bottom: 3),
                                                  child: Text(
                                                      "Don't Have an Account?",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular14
                                                          .copyWith(
                                                          letterSpacing: 0.20,
                                                          height: 1.00))),
                                              Padding(
                                                  padding:
                                                  getPadding(left: 8, top: 1),
                                                  child: Text("lbl_sign_up".tr,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular14Orange800
                                                          .copyWith(
                                                          letterSpacing: 0.20,
                                                          height: 1.00)))
                                            ]))),
                              )
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
