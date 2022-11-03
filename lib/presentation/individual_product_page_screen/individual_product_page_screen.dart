import 'controller/individual_product_page_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class IndividualProductPageScreen
    extends GetWidget<IndividualProductPageController> {
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(left: 10),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                            width: size.width,
                                            margin: getMargin(top: 19, bottom: 322),
                                            child: Container(
                                                height: getVerticalSize(42.00),
                                                width: getHorizontalSize(40.00),
                                                margin:
                                                getMargin(left: 24, right: 366),
                                                child: Stack(
                                                    alignment: Alignment.centerLeft,
                                                    children: [
                                                      CustomIconButton(
                                                          height: 42,
                                                          width: 40,
                                                          alignment:
                                                          Alignment.centerLeft,
                                                          onTap: () {
                                                            onTapBtntf();
                                                          },
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowleft)),
                                                      CustomIconButton(
                                                          height: 42,
                                                          width: 40,
                                                          alignment:
                                                          Alignment.centerLeft,
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowleft))
                                                    ]))),
                                        Container(
                                            height: getVerticalSize(383.00),
                                            width: getHorizontalSize(329.00),
                                            child: Stack(
                                                alignment: Alignment.centerRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                      Alignment.bottomLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 62,
                                                              right: 10,
                                                              bottom: 62),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgGroup41,
                                                              height:
                                                              getVerticalSize(
                                                                  240.00),
                                                              width:
                                                              getHorizontalSize(
                                                                  292.00)))),
                                                  Align(
                                                      alignment:
                                                      Alignment.centerRight,
                                                      child: Card(
                                                          clipBehavior:
                                                          Clip.antiAlias,
                                                          elevation: 0,
                                                          margin:
                                                          getMargin(left: 10),
                                                          color: ColorConstant
                                                              .whiteA70033,
                                                          shape: RoundedRectangleBorder(
                                                              side: BorderSide(
                                                                  width:
                                                                  getHorizontalSize(
                                                                      2.00)),
                                                              borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder26),
                                                          child: Container(
                                                              height:
                                                              getVerticalSize(
                                                                  383.00),
                                                              width:
                                                              getHorizontalSize(
                                                                  231.00),
                                                              decoration: AppDecoration
                                                                  .outline
                                                                  .copyWith(
                                                                  borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder26),
                                                              child: Stack(
                                                                  alignment:
                                                                  Alignment
                                                                      .topRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                        Alignment
                                                                            .center,
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                left:
                                                                                8,
                                                                                right:
                                                                                7),
                                                                            child: CommonImageView(
                                                                                imagePath:
                                                                                ImageConstant.imgTransparenttus,
                                                                                height: getVerticalSize(383.00),
                                                                                width: getHorizontalSize(216.00)))),
                                                                    Align(
                                                                        alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                        child: Padding(
                                                                            padding: getPadding(left: 15, top: 17, right: 15, bottom: 17),
                                                                            child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                              Padding(
                                                                                  padding: getPadding(bottom: 2),
                                                                                  child: CommonImageView(svgPath: ImageConstant.imgVolume, height: getVerticalSize(44.00), width: getHorizontalSize(43.00))),
                                                                              Container(
                                                                                  height: getVerticalSize(44.00),
                                                                                  width: getHorizontalSize(43.00),
                                                                                  margin: getMargin(left: 7, top: 2),
                                                                                  child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                                    Align(alignment: Alignment.centerLeft, child: CommonImageView(svgPath: ImageConstant.imgClose, height: getVerticalSize(44.00), width: getHorizontalSize(43.00))),
                                                                                    Align(alignment: Alignment.bottomCenter, child: Padding(padding: getPadding(left: 7, top: 10, right: 8, bottom: 8), child: CommonImageView(svgPath: ImageConstant.imgCart22X28, height: getVerticalSize(22.00), width: getHorizontalSize(28.00))))
                                                                                  ]))
                                                                            ])))
                                                                  ]))))
                                                ]))
                                      ]))),
                          CustomButton(
                              width: 133,
                              text: "lbl_order_now".tr,
                              margin: getMargin(left: 16, right: 16),
                              shape: ButtonShape.RoundedBorder10,
                              padding: ButtonPadding.PaddingAll10,
                              fontStyle: ButtonFontStyle.InterSemiBold20,
                              alignment: Alignment.centerLeft),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: getVerticalSize(395.00),
                                  width: getHorizontalSize(416.00),
                                  margin: getMargin(
                                      left: 7, top: 39, right: 6, bottom: 20),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(right: 10),
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                          Alignment.centerLeft,
                                                          child: Padding(
                                                              padding: getPadding(
                                                                  right: 10),
                                                              child: Text(
                                                                  "lbl_tusker_cider2"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtInterBold36))),
                                                      Align(
                                                          alignment:
                                                          Alignment.centerLeft,
                                                          child: Padding(
                                                              padding: getPadding(
                                                                  left: 17,
                                                                  top: 8,
                                                                  right: 17),
                                                              child: Text(
                                                                  "lbl_ksh_1080".tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular24))),
                                                      Align(
                                                          alignment:
                                                          Alignment.centerLeft,
                                                          child: Padding(
                                                              padding: getPadding(
                                                                  left: 8,
                                                                  top: 18,
                                                                  right: 10),
                                                              child: Text(
                                                                  "lbl_300_g".tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular20))),
                                                      Align(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Container(
                                                              width:
                                                              getHorizontalSize(
                                                                  325.00),
                                                              margin: getMargin(
                                                                  left: 2, top: 15),
                                                              child: Text(
                                                                  "msg_for_the_veal_sh"
                                                                      .tr,
                                                                  maxLines: null,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtInterSemiBold14))),
                                                      Align(
                                                          alignment:
                                                          Alignment.centerLeft,
                                                          child: Padding(
                                                              padding: getPadding(
                                                                  left: 8,
                                                                  top: 45,
                                                                  right: 10),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    ClipRRect(
                                                                        borderRadius:
                                                                        BorderRadius.circular(getHorizontalSize(
                                                                            32.50)),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                            ImageConstant
                                                                                .imgEllipse1,
                                                                            height: getVerticalSize(
                                                                                62.00),
                                                                            width: getHorizontalSize(
                                                                                65.00),
                                                                            fit: BoxFit
                                                                                .cover)),
                                                                    Container(
                                                                        height:
                                                                        getVerticalSize(
                                                                            58.00),
                                                                        width: getHorizontalSize(
                                                                            161.00),
                                                                        margin: getMargin(
                                                                            left: 5,
                                                                            bottom:
                                                                            4),
                                                                        child: Stack(
                                                                            alignment:
                                                                            Alignment.bottomLeft,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment.topLeft,
                                                                                  child: Padding(padding: getPadding(left: 11, right: 11, bottom: 10), child: Text("lbl_sylvia".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold24Black900))),
                                                                              Align(
                                                                                  alignment: Alignment.bottomLeft,
                                                                                  child: Padding(
                                                                                      padding: getPadding(top: 10),
                                                                                      child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                        CommonImageView(svgPath: ImageConstant.imgStar, height: getVerticalSize(30.00), width: getHorizontalSize(25.00)),
                                                                                        Padding(padding: getPadding(left: 8), child: CommonImageView(svgPath: ImageConstant.imgStar, height: getVerticalSize(30.00), width: getHorizontalSize(25.00))),
                                                                                        Padding(padding: getPadding(left: 8), child: CommonImageView(svgPath: ImageConstant.imgStar, height: getVerticalSize(30.00), width: getHorizontalSize(25.00))),
                                                                                        Padding(padding: getPadding(left: 8), child: CommonImageView(svgPath: ImageConstant.imgStar, height: getVerticalSize(30.00), width: getHorizontalSize(25.00))),
                                                                                        Padding(padding: getPadding(left: 8), child: CommonImageView(svgPath: ImageConstant.imgStar, height: getVerticalSize(30.00), width: getHorizontalSize(25.00)))
                                                                                      ])))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left: 9,
                                                                            top: 34,
                                                                            bottom:
                                                                            10),
                                                                        child: Text(
                                                                            "lbl_5_0"
                                                                                .tr,
                                                                            overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                            textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                            style: AppStyle
                                                                                .txtInterSemiBold20Black900))
                                                                  ]))),
                                                      Align(
                                                          alignment:
                                                          Alignment.center,
                                                          child: Padding(
                                                              padding: getPadding(
                                                                  left: 16,
                                                                  top: 24,
                                                                  right: 16),
                                                              child: Text(
                                                                  "msg_so_nice_defina"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular20Gray501)))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 10, top: 57, bottom: 57),
                                                child: Text("lbl_4_days_ago".tr,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular20Gray702)))
                                      ])))
                        ])))));
  }

  onTapBtntf() {
    Get.back();
  }
}
