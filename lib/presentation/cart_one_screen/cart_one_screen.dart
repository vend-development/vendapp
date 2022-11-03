import 'controller/cart_one_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CartOneScreen extends GetWidget<CartOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      width: size.width,
                      margin: getMargin(top: 11),
                      child: Padding(
                          padding: getPadding(left: 24, right: 134),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomIconButton(
                                    height: 42,
                                    width: 40,
                                    onTap: () {
                                      onTapBtntf();
                                    },
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgArrowleft)),
                                Padding(
                                    padding: getPadding(left: 80, bottom: 3),
                                    child: Text("lbl_checkout".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold32))
                              ]))),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: getPadding(top: 12),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                            getPadding(left: 24, right: 24),
                                            child: Text("lbl_payment".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterBold32Black900))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: getVerticalSize(105.00),
                                            width: getHorizontalSize(405.00),
                                            margin: getMargin(
                                                left: 12, top: 242, right: 12),
                                            decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .bluegray100,
                                                borderRadius:
                                                BorderRadius.circular(
                                                    getHorizontalSize(
                                                        15.00))))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: getVerticalSize(105.00),
                                            width: getHorizontalSize(405.00),
                                            margin: getMargin(
                                                left: 9, top: 101, right: 12),
                                            decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .bluegray100,
                                                borderRadius:
                                                BorderRadius.circular(
                                                    getHorizontalSize(
                                                        15.00))))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 12, top: 89, right: 12),
                                            child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text("lbl_total".tr,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold32),
                                                  Text("lbl_ksh_513".tr,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold32)
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: getVerticalSize(129.00),
                                            width: size.width,
                                            margin: getMargin(top: 56),
                                            decoration:
                                            AppDecoration.fillOrange800,
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                      Alignment.centerLeft,
                                                      child: CommonImageView(
                                                          imagePath: ImageConstant
                                                              .imgEllipse47129X430,
                                                          height:
                                                          getVerticalSize(
                                                              129.00),
                                                          width:
                                                          getHorizontalSize(
                                                              430.00))),
                                                  Align(
                                                      alignment:
                                                      Alignment.topRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 34,
                                                              right: 16,
                                                              bottom: 34),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Text(
                                                                    "lbl_pay"
                                                                        .tr,
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .txtInterBold32WhiteA700),
                                                                Container(
                                                                    height:
                                                                    getVerticalSize(
                                                                        3.00),
                                                                    width: getHorizontalSize(
                                                                        64.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                        257,
                                                                        top: 20,
                                                                        bottom:
                                                                        16),
                                                                    decoration:
                                                                    BoxDecoration(
                                                                        color:
                                                                        ColorConstant.whiteA700))
                                                              ])))
                                                ])))
                                  ]))))
                ])));
  }

  onTapBtntf() {
    Get.back();
  }
}
