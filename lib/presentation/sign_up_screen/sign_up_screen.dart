import 'controller/sign_up_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.orange800,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 55,
                    ),
                    decoration: AppDecoration.fillGray900.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            right: 8,
                          ),
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
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 19,
                              top: 32,
                              right: 19,
                            ),
                            child: Text(
                              "msg_let_s_get_start".tr,
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
                              "msg_create_an_accou".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterLight20,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 19,
                            top: 46,
                            right: 19,
                          ),
                          decoration: AppDecoration.fillGray300.copyWith(
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
                                  left: 15,
                                  top: 15,
                                  bottom: 12,
                                ),
                                child: Text(
                                  "msg_enter_your_full".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular20,
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
                          decoration: AppDecoration.fillGray300.copyWith(
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
                                  left: 24,
                                  top: 13,
                                  bottom: 14,
                                ),
                                child: Text(
                                  "msg_enter_your_emai".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular20,
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
                          decoration: AppDecoration.fillGray300.copyWith(
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
                                  left: 24,
                                  top: 13,
                                  bottom: 14,
                                ),
                                child: Text(
                                  "msg_enter_your_pass".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: getMargin(
                            left: 19,
                            top: 26,
                            right: 19,
                          ),
                          decoration: AppDecoration.fillGray300,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: AppDecoration.fillGray300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
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
                                        left: 24,
                                        top: 13,
                                        bottom: 14,
                                      ),
                                      child: Text(
                                        "msg_confirm_passwor".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 26,
                                ),
                                decoration: AppDecoration.fillGray300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
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
                                        left: 24,
                                        top: 13,
                                        bottom: 14,
                                      ),
                                      child: Text(
                                        "msg_enter_date_of_b".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 42,
                              top: 33,
                              right: 42,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    18.00,
                                  ),
                                  width: getHorizontalSize(
                                    25.00,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray300,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 11,
                                  ),
                                  child: Text(
                                    "msg_i_agree_with_th".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 42,
                              top: 22,
                              right: 42,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    18.00,
                                  ),
                                  width: getHorizontalSize(
                                    25.00,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray300,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 11,
                                  ),
                                  child: Text(
                                    "msg_i_am_above_18_y".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomButton(
                          onTap: (){

                          },
                          width: 392,
                          text: "lbl_sign_up".tr,
                          margin: getMargin(
                            left: 19,
                            top: 9,
                            right: 19,
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 19,
                            top: 33,
                            right: 19,
                            bottom: 25,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_already_have_an2".tr,
                                  style: TextStyle(
                                    color: ColorConstant.orange800,
                                    fontSize: getFontSize(
                                      20,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: " ",
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      20,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: "lbl_sign_in".tr,
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      20,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
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
