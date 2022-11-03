import 'package:application3/core/services/snackbars.dart';
import 'package:application3/presentation/filter_result_container_screen/filter_result_container_screen.dart';
import 'package:application3/presentation/walkthrough_two_screen/walkthrough_two_screen.dart';

import '../../core/services/APIService.dart';
import '../create_new_password_screen/create_new_password_screen.dart';
import 'controller/sign_in_blank_form_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/core/utils/validation_functions.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:application3/widgets/custom_checkbox.dart';
import 'package:application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class WalletRegistration extends GetWidget<WalletRegistrationController> {
  WalletRegistrationController wallet_registration = Get.put(WalletRegistrationController());
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
                                  child: Text("Almost There, Register",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistBold48
                                          .copyWith(height: 1.20))),

                              CustomTextFormField(
                                width: 380,
                                focusNode: FocusNode(),
                                controller:
                                controller.phoneController,
                                hintText: "Phone",
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
                                    child: Text(
                                      "+254",
                                      style: TextStyle(color: ColorConstant.whiteA700),

                                    )),
                                    // CommonImageView(
                                    //     svgPath: ImageConstant.imgLock)),
                                prefixConstraints: BoxConstraints(
                                    minWidth: getSize(20.00),
                                    minHeight: getSize(20.00)),

                                suffixConstraints: BoxConstraints(
                                    minWidth: getHorizontalSize(20.00),
                                    minHeight: getVerticalSize(20.00)),
                                validator: (value) {
                                  if ((value == null) ){
                                    return "Please enter valid Phone Number";
                                  }
                                  return null;
                                }),
                              Obx(() => CustomTextFormField(
                                  width: 380,
                                  focusNode: FocusNode(),
                                  controller:
                                  controller.pinController,
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
                                            isRequired: true))
                                    ) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText:
                                  !controller.isShowPassword.value)),
                              Obx(() => CustomTextFormField(
                                  width: 380,
                                  focusNode: FocusNode(),
                                  controller:
                                  controller.confirmPinController,
                                  hintText: "Confirm Password",
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
                                    if (
                                      controller.pinController.text !=
                                      controller.confirmPinController.text

                                         ) {
                                      return "Passwords Don't Match";
                                    }
                                    return null;
                                  },
                                  isObscureText:
                                  !controller.isShowPassword.value)),

                              CustomButton(

                                  onTap: () async {


                                      Map data =
                                      {
                                        "phone":"+254${controller.phoneController
                                            .text}",
                                        "pin": controller
                                            .pinController.text,
                                        "confirmpin": controller.pinController.text,
                                      };
                                      await userRegister(
                                          "api/wallet/registerWalletAccount/",
                                          data, context);
                                      Navigator.of(context)
                                          .push(
                                          PageRouteBuilder(
                                            pageBuilder: (context, animation, secondaryAnimation) => GeneralScreen(),
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
                                  width: 380,
                                  text: "Continue",
                                  margin:
                                  getMargin(left: 24, top: 24, right: 24),
                                  variant: ButtonVariant.FillBluegray100,
                                  shape: ButtonShape.RoundedBorder16,
                                  padding: ButtonPadding.PaddingAll16,
                                  fontStyle: ButtonFontStyle.UrbanistBold16,
                                  alignment: Alignment.center),

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


                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: getVerticalSize(
                                            8.00,
                                          ),
                                          margin: getMargin(
                                            left: 24,
                                            top: 84,
                                            right: 24,
                                          ),
                                          child: SmoothIndicator(
                                            offset: 1,
                                            count: 3,
                                            axisDirection: Axis.horizontal,
                                            effect: ScrollingDotsEffect(
                                              spacing: 6,
                                              activeDotColor: ColorConstant.deepOrangeA400,
                                              dotColor: ColorConstant.gray300,
                                              dotHeight: getVerticalSize(
                                                8.00,
                                              ),
                                              dotWidth: getHorizontalSize(
                                                8.00,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),


                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
