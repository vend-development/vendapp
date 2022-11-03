import 'package:application3/checkout_screen/widgets/checkout_widget.dart';
import 'package:application3/presentation/checkoutdetails/checkout_detials.dart';
import 'package:application3/presentation/orders_screen/orders_screen.dart';
import 'package:application3/presentation/receipts_screen/receipts_screen.dart';

import '../core/services/APIService.dart';
import '../presentation/cart_screen/controller/cart_controller.dart';
import '../presentation/cart_screen/widgets/cart_item_widget.dart';
import '../theme/hero_dialog_route.dart';
import 'controller/checkout_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends GetWidget<CheckoutController> {
  CheckoutController checkoutController = Get.put(CheckoutController());
  CartController cartController = Get.put(CartController());
  String paymentMethod = "Mpesa";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            bottomSheet: GestureDetector(

              onTap:() =>{

                Navigator.of(context).push(HeroDialogRoute(builder: (context) {
                  return  CheckoutDetailsCard( );

                }))

              },

              child: Container(
                  height: getVerticalSize(90.00),
                  width: size.width,
                  margin: getMargin(top: 64),
                  decoration: AppDecoration.fillOrange800,
                  child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(
                                    left: 8,
                                    top: 8,
                                    right: 8,
                                    bottom: 8),
                                child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize:
                                    MainAxisSize.max,
                                    children: [
                                      Text(
                                          "Place Order"
                                              .tr,
                                          overflow:
                                          TextOverflow
                                              .ellipsis,
                                          textAlign:
                                          TextAlign
                                              .left,
                                          style: AppStyle
                                              .txtInterBold32WhiteA700),
                                      Text("Ksh " + cartController.totals.toString(),
                                          overflow:
                                          TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterBold32WhiteA700)

                                    ])))
                      ])),
            ),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              margin: getMargin(top: 13),
                              child: Padding(
                                  padding: getPadding(left: 14, right: 139),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomIconButton(
                                            height: 42,
                                            width: 40,
                                            onTap: () {
                                              onTapBtntf();
                                            },
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleft)),
                                        Padding(
                                            padding:
                                                getPadding(left: 85, top: 3),
                                            child: Text("lbl_checkout".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterBold32))
                                      ])))),
                      Container(
                          height: getVerticalSize(370.00),
                          width: getHorizontalSize(390.00),
                          margin: getMargin(left: 20, top: 22, right: 20),
                          child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(22.00),
                                        margin: getMargin(
                                            left: 34,
                                            top: 160,
                                            right: 34,
                                            bottom: 160),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray100))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        decoration: AppDecoration
                                            .outlineWhiteA7001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder26),
                                        child: SingleChildScrollView(
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [

                                                GetX<CartController>(
                                                    builder:(controller) {
                                                      return
                                                        ListView.builder(
                                                          padding: getPadding(
                                                            left: 24,
                                                            top: 45,
                                                            right: 24,
                                                          ),
                                                          // scrollDirection: Axis.horizontal,
                                                          shrinkWrap: true,
                                                          // physics:
                                                          // NeverScrollableScrollPhysics(),
                                                          physics: BouncingScrollPhysics(),
                                                          itemCount: controller.cartList
                                                              .length,
                                                          itemBuilder: (context, index) {
                                                            return CheckoutWidget(
                                                              controller.cartList[index],
                                                            );
                                                          },
                                                        );
                                                    }
                                                ),

                                                // Align(
                                                //     alignment: Alignment.center,
                                                //     child: Padding(
                                                //         padding: getPadding(
                                                //             left: 14,
                                                //             top: 27,
                                                //             right: 14),
                                                //         child: Row(
                                                //             mainAxisAlignment:
                                                //                 MainAxisAlignment
                                                //                     .spaceBetween,
                                                //             crossAxisAlignment:
                                                //                 CrossAxisAlignment
                                                //                     .end,
                                                //             mainAxisSize:
                                                //                 MainAxisSize.max,
                                                //             children: [
                                                //               Row(
                                                //                   crossAxisAlignment:
                                                //                       CrossAxisAlignment
                                                //                           .start,
                                                //                   mainAxisSize:
                                                //                       MainAxisSize
                                                //                           .max,
                                                //                   children: [
                                                //                     Container(
                                                //                         height: getVerticalSize(
                                                //                             66.00),
                                                //                         width: getHorizontalSize(
                                                //                             51.00),
                                                //                         margin: getMargin(
                                                //                             top:
                                                //                                 4),
                                                //                         child: Stack(
                                                //                             alignment:
                                                //                                 Alignment.center,
                                                //                             children: [
                                                //                               Align(
                                                //                                   alignment: Alignment.bottomLeft,
                                                //                                   child: Container(
                                                //                                       height: getVerticalSize(59.00),
                                                //                                       width: getHorizontalSize(51.00),
                                                //                                       margin: getMargin(top: 10, bottom: 1),
                                                //                                       decoration: BoxDecoration(color: ColorConstant.gray100, borderRadius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(26.00)), topRight: Radius.circular(getHorizontalSize(26.00)), bottomLeft: Radius.circular(getHorizontalSize(26.00)), bottomRight: Radius.circular(getHorizontalSize(25.00))), boxShadow: [
                                                //                                         BoxShadow(color: ColorConstant.black9003f, spreadRadius: getHorizontalSize(2.00), blurRadius: getHorizontalSize(2.00), offset: Offset(0, 4))
                                                //                                       ]))),
                                                //                               Align(
                                                //                                   alignment: Alignment.center,
                                                //                                   child: Padding(padding: getPadding(left: 4, right: 5), child: CommonImageView(imagePath: ImageConstant.imgTransparenttus161X90, height: getVerticalSize(66.00), width: getHorizontalSize(41.00))))
                                                //                             ])),
                                                //                     Padding(
                                                //                         padding: getPadding(
                                                //                             left:
                                                //                                 21,
                                                //                             bottom:
                                                //                                 7),
                                                //                         child: Column(
                                                //                             mainAxisSize: MainAxisSize
                                                //                                 .min,
                                                //                             crossAxisAlignment: CrossAxisAlignment
                                                //                                 .start,
                                                //                             mainAxisAlignment:
                                                //                                 MainAxisAlignment.start,
                                                //                             children: [
                                                //                               Padding(
                                                //                                   padding: getPadding(right: 10),
                                                //                                   child: Text("lbl_tusker_lite".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold20Black900)),
                                                //                               Align(
                                                //                                   alignment: Alignment.center,
                                                //                                   child: Padding(padding: getPadding(left: 5, top: 6), child: Text("msg_ksh_1080_qua".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold16Black900))),
                                                //                               Container(
                                                //                                   margin: getMargin(left: 5, right: 10),
                                                //                                   child: RichText(
                                                //                                       text: TextSpan(children: [
                                                //                                         TextSpan(text: "lbl_lemon".tr, style: TextStyle(color: ColorConstant.bluegray900C4, fontSize: getFontSize(15), fontFamily: 'Inter', fontWeight: FontWeight.w400)),
                                                //                                         TextSpan(text: "lbl_falvoured".tr, style: TextStyle(color: ColorConstant.bluegray900C4, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w400))
                                                //                                       ]),
                                                //                                       textAlign: TextAlign.left))
                                                //                             ]))
                                                //                   ]),
                                                //               Padding(
                                                //                   padding:
                                                //                       getPadding(
                                                //                           top: 21,
                                                //                           bottom:
                                                //                               3),
                                                //                   child: CommonImageView(
                                                //                       svgPath:
                                                //                           ImageConstant
                                                //                               .imgTrash,
                                                //                       height:
                                                //                           getVerticalSize(
                                                //                               46.00),
                                                //                       width: getHorizontalSize(
                                                //                           34.00)))
                                                //             ]))),
                                                // Padding(
                                                //     padding: getPadding(
                                                //         left: 93, right: 93),
                                                //     child: Text(
                                                //         "lbl_black_pearl_ts".tr,
                                                //         overflow:
                                                //             TextOverflow.ellipsis,
                                                //         textAlign: TextAlign.left,
                                                //         style: AppStyle
                                                //             .txtInterSemiBold15)),
                                                //
                                                //
                                                //
                                                // Align(
                                                //     alignment: Alignment.center,
                                                //     child: Padding(
                                                //         padding: getPadding(
                                                //             left: 14,
                                                //             top: 27,
                                                //             right: 14),
                                                //         child: Row(
                                                //             mainAxisAlignment:
                                                //                 MainAxisAlignment
                                                //                     .spaceBetween,
                                                //             crossAxisAlignment:
                                                //                 CrossAxisAlignment
                                                //                     .end,
                                                //             mainAxisSize:
                                                //                 MainAxisSize.max,
                                                //             children: [
                                                //               Row(
                                                //                   crossAxisAlignment:
                                                //                       CrossAxisAlignment
                                                //                           .start,
                                                //                   mainAxisSize:
                                                //                       MainAxisSize
                                                //                           .max,
                                                //                   children: [
                                                //                     Container(
                                                //                         height: getVerticalSize(
                                                //                             66.00),
                                                //                         width: getHorizontalSize(
                                                //                             51.00),
                                                //                         margin: getMargin(
                                                //                             top:
                                                //                                 4),
                                                //                         child: Stack(
                                                //                             alignment:
                                                //                                 Alignment.center,
                                                //                             children: [
                                                //                               Align(
                                                //                                   alignment: Alignment.bottomLeft,
                                                //                                   child: Container(
                                                //                                       height: getVerticalSize(59.00),
                                                //                                       width: getHorizontalSize(51.00),
                                                //                                       margin: getMargin(top: 10, bottom: 1),
                                                //                                       decoration: BoxDecoration(color: ColorConstant.gray100, borderRadius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(26.00)), topRight: Radius.circular(getHorizontalSize(26.00)), bottomLeft: Radius.circular(getHorizontalSize(26.00)), bottomRight: Radius.circular(getHorizontalSize(25.00))), boxShadow: [
                                                //                                         BoxShadow(color: ColorConstant.black9003f, spreadRadius: getHorizontalSize(2.00), blurRadius: getHorizontalSize(2.00), offset: Offset(0, 4))
                                                //                                       ]))),
                                                //                               Align(
                                                //                                   alignment: Alignment.center,
                                                //                                   child: Padding(padding: getPadding(left: 4, right: 5), child: CommonImageView(imagePath: ImageConstant.imgTransparenttus161X90, height: getVerticalSize(66.00), width: getHorizontalSize(41.00))))
                                                //                             ])),
                                                //                     Padding(
                                                //                         padding: getPadding(
                                                //                             left:
                                                //                                 21,
                                                //                             bottom:
                                                //                                 7),
                                                //                         child: Column(
                                                //                             mainAxisSize: MainAxisSize
                                                //                                 .min,
                                                //                             crossAxisAlignment: CrossAxisAlignment
                                                //                                 .start,
                                                //                             mainAxisAlignment:
                                                //                                 MainAxisAlignment.start,
                                                //                             children: [
                                                //                               Padding(
                                                //                                   padding: getPadding(right: 10),
                                                //                                   child: Text("lbl_tusker_lite".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold20Black900)),
                                                //                               Align(
                                                //                                   alignment: Alignment.center,
                                                //                                   child: Padding(padding: getPadding(left: 5, top: 6), child: Text("msg_ksh_1080_qua".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold16Black900))),
                                                //                               Container(
                                                //                                   margin: getMargin(left: 5, right: 10),
                                                //                                   child: RichText(
                                                //                                       text: TextSpan(children: [
                                                //                                         TextSpan(text: "lbl_lemon".tr, style: TextStyle(color: ColorConstant.bluegray900C4, fontSize: getFontSize(15), fontFamily: 'Inter', fontWeight: FontWeight.w400)),
                                                //                                         TextSpan(text: "lbl_falvoured".tr, style: TextStyle(color: ColorConstant.bluegray900C4, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w400))
                                                //                                       ]),
                                                //                                       textAlign: TextAlign.left))
                                                //                             ]))
                                                //                   ]),
                                                //               Padding(
                                                //                   padding:
                                                //                       getPadding(
                                                //                           top: 21,
                                                //                           bottom:
                                                //                               3),
                                                //                   child: CommonImageView(
                                                //                       svgPath:
                                                //                           ImageConstant
                                                //                               .imgTrash,
                                                //                       height:
                                                //                           getVerticalSize(
                                                //                               46.00),
                                                //                       width: getHorizontalSize(
                                                //                           34.00)))
                                                //             ]))),
                                                // Padding(
                                                //     padding: getPadding(
                                                //         left: 91, right: 91),
                                                //     child: Text(
                                                //         "lbl_black_pearl_ts".tr,
                                                //         overflow:
                                                //             TextOverflow.ellipsis,
                                                //         textAlign: TextAlign.left,
                                                //         style: AppStyle
                                                //             .txtInterSemiBold15)),
                                                //
                                                //
                                                // Align(
                                                //     alignment: Alignment.center,
                                                //     child: Padding(
                                                //         padding: getPadding(
                                                //             left: 14,
                                                //             top: 25,
                                                //             right: 14),
                                                //         child: Row(
                                                //             mainAxisAlignment:
                                                //                 MainAxisAlignment
                                                //                     .spaceBetween,
                                                //             crossAxisAlignment:
                                                //                 CrossAxisAlignment
                                                //                     .end,
                                                //             mainAxisSize:
                                                //                 MainAxisSize.max,
                                                //             children: [
                                                //               Row(
                                                //                   crossAxisAlignment:
                                                //                       CrossAxisAlignment
                                                //                           .start,
                                                //                   mainAxisSize:
                                                //                       MainAxisSize
                                                //                           .max,
                                                //                   children: [
                                                //                     Container(
                                                //                         height: getVerticalSize(
                                                //                             66.00),
                                                //                         width: getHorizontalSize(
                                                //                             51.00),
                                                //                         margin: getMargin(
                                                //                             top:
                                                //                                 4),
                                                //                         child: Stack(
                                                //                             alignment:
                                                //                                 Alignment.center,
                                                //                             children: [
                                                //                               Align(
                                                //                                   alignment: Alignment.bottomLeft,
                                                //                                   child: Container(
                                                //                                       height: getVerticalSize(59.00),
                                                //                                       width: getHorizontalSize(51.00),
                                                //                                       margin: getMargin(top: 10, bottom: 1),
                                                //                                       decoration: BoxDecoration(color: ColorConstant.gray100, borderRadius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(26.00)), topRight: Radius.circular(getHorizontalSize(26.00)), bottomLeft: Radius.circular(getHorizontalSize(26.00)), bottomRight: Radius.circular(getHorizontalSize(25.00))), boxShadow: [
                                                //                                         BoxShadow(color: ColorConstant.black9003f, spreadRadius: getHorizontalSize(2.00), blurRadius: getHorizontalSize(2.00), offset: Offset(0, 4))
                                                //                                       ]))),
                                                //                               Align(
                                                //                                   alignment: Alignment.center,
                                                //                                   child: Padding(padding: getPadding(left: 4, right: 5), child: CommonImageView(imagePath: ImageConstant.imgTransparenttus161X90, height: getVerticalSize(66.00), width: getHorizontalSize(41.00))))
                                                //                             ])),
                                                //                     Padding(
                                                //                         padding: getPadding(
                                                //                             left:
                                                //                                 25,
                                                //                             bottom:
                                                //                                 7),
                                                //                         child: Column(
                                                //                             mainAxisSize: MainAxisSize
                                                //                                 .min,
                                                //                             crossAxisAlignment: CrossAxisAlignment
                                                //                                 .start,
                                                //                             mainAxisAlignment:
                                                //                                 MainAxisAlignment.start,
                                                //                             children: [
                                                //                               Padding(
                                                //                                   padding: getPadding(right: 10),
                                                //                                   child: Text("lbl_tusker_lite".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold20Black900)),
                                                //                               Align(
                                                //                                   alignment: Alignment.center,
                                                //                                   child: Padding(padding: getPadding(left: 1, top: 6), child: Text("msg_ksh_1080_qua".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold16Black900))),
                                                //                               Container(
                                                //                                   margin: getMargin(left: 1, right: 10),
                                                //                                   child: RichText(
                                                //                                       text: TextSpan(children: [
                                                //                                         TextSpan(text: "lbl_lemon".tr, style: TextStyle(color: ColorConstant.bluegray900C4, fontSize: getFontSize(15), fontFamily: 'Inter', fontWeight: FontWeight.w400)),
                                                //                                         TextSpan(text: "lbl_falvoured".tr, style: TextStyle(color: ColorConstant.bluegray900C4, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w400))
                                                //                                       ]),
                                                //                                       textAlign: TextAlign.left))
                                                //                             ]))
                                                //                   ]),
                                                //               Padding(
                                                //                   padding:
                                                //                       getPadding(
                                                //                           top: 21,
                                                //                           bottom:
                                                //                               3),
                                                //                   child: CommonImageView(
                                                //                       svgPath:
                                                //                           ImageConstant
                                                //                               .imgTrash,
                                                //                       height:
                                                //                           getVerticalSize(
                                                //                               46.00),
                                                //                       width: getHorizontalSize(
                                                //                           34.00)))
                                                //             ]))),
                                                // Padding(
                                                //     padding: getPadding(
                                                //         left: 92,
                                                //         right: 92,
                                                //         bottom: 30),
                                                //     child: Text(
                                                //         "lbl_black_pearl_ts".tr,
                                                //         overflow:
                                                //             TextOverflow.ellipsis,
                                                //         textAlign: TextAlign.left,
                                                //         style: AppStyle
                                                //             .txtInterSemiBold15))



                                              ]),
                                        )


                                    ))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 19, right: 20),
                              child: Text("Delivery Option".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold20))),

                      Padding(
                          padding: getPadding(left: 20, top: 9, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 7),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant.imgCut,
                                                  height: getSize(31.00),
                                                  width: getSize(31.00))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 9, top: 1, bottom: 1),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            right: 10),
                                                        child: Text(
                                                            "On Premise",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterSemiBold16Black900)),
                                                    // Text("Onle On Premise delivery is currently available",
                                                    //     overflow: TextOverflow
                                                    //         .ellipsis,
                                                    //     textAlign:
                                                    //         TextAlign.left,
                                                    //     style: AppStyle
                                                    //         .txtInterMedium14Gray700)
                                                  ]))
                                        ])),
                                // Padding(
                                //     padding: getPadding(bottom: 6),
                                //     child: CommonImageView(
                                //         svgPath: ImageConstant.imgArrowdown,
                                //         height: getVerticalSize(33.00),
                                //         width: getHorizontalSize(40.00)))
                              ])),
                      Padding(
                          padding: getPadding(left: 20, top: 43, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [


                                      Padding(
                                          padding: getPadding(right: 10),
                                          child: Text("Payment Method",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterBold20)),

                                      SizedBox(
                                        height: 500,
                                        width: 300,
                                        child: GetX<CheckoutController>(
                                          builder: (controller) {
                                            return Column(
                                              children: [


                                                // RadioListTile(
                                                //   title: SizedBox(
                                                //     child: Padding(
                                                //         padding: getPadding(
                                                //             left: 3,
                                                //             top: 4,
                                                //             right: 10,
                                                //             bottom: 4),
                                                //         child: Row(
                                                //             mainAxisAlignment:
                                                //             MainAxisAlignment.start,
                                                //             crossAxisAlignment:
                                                //             CrossAxisAlignment.start,
                                                //             mainAxisSize: MainAxisSize.max,
                                                //             children: [
                                                //               Padding(
                                                //                   padding:
                                                //                   getPadding(bottom: 5),
                                                //                   child: CommonImageView(
                                                //                       svgPath: ImageConstant
                                                //                           .imgLaptop,
                                                //                       height: getVerticalSize(
                                                //                           38.00),
                                                //                       width:
                                                //                       getHorizontalSize(
                                                //                           30.00))),
                                                //               Container(
                                                //                   height:
                                                //                   getVerticalSize(36.00),
                                                //                   width: getHorizontalSize(
                                                //                       99.00),
                                                //                   margin: getMargin(
                                                //                       left: 10, top: 7),
                                                //                   child: Stack(
                                                //                       alignment:
                                                //                       Alignment.topLeft,
                                                //                       children: [
                                                //                         Align(
                                                //                             alignment:
                                                //                             Alignment
                                                //                                 .topLeft,
                                                //                             child: Padding(
                                                //                                 padding:
                                                //                                 getPadding(
                                                //                                     right:
                                                //                                     10,
                                                //                                     bottom:
                                                //                                     10),
                                                //                                 child: Text(
                                                //                                     "Cash"
                                                //                                         .tr,
                                                //                                     overflow:
                                                //                                     TextOverflow
                                                //                                         .ellipsis,
                                                //                                     textAlign:
                                                //                                     TextAlign
                                                //                                         .left,
                                                //                                     style: AppStyle
                                                //                                         .txtInterSemiBold16Black900)))
                                                //                       ]))
                                                //             ])),
                                                //   ),
                                                //   value: "Cash",
                                                //   groupValue: controller.paymentMethod.value,
                                                //   onChanged: (value){
                                                //     controller.paymentMethod.value = value.toString();
                                                //   },
                                                // ),
                                                RadioListTile(
                                                  title: SizedBox(
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 3,
                                                            top: 4,
                                                            right: 10,
                                                            bottom: 4),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.start,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment.start,
                                                            mainAxisSize: MainAxisSize.max,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                  getPadding(bottom: 5),
                                                                  child: CommonImageView(
                                                                      svgPath: ImageConstant
                                                                          .imgLaptop,
                                                                      height: getVerticalSize(
                                                                          38.00),
                                                                      width:
                                                                      getHorizontalSize(
                                                                          30.00))),
                                                              Container(
                                                                  height:
                                                                  getVerticalSize(36.00),
                                                                  width: getHorizontalSize(
                                                                      99.00),
                                                                  margin: getMargin(
                                                                      left: 10, top: 7),
                                                                  child: Stack(
                                                                      alignment:
                                                                      Alignment.topLeft,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                            Alignment
                                                                                .topLeft,
                                                                            child: Padding(
                                                                                padding:
                                                                                getPadding(
                                                                                    right:
                                                                                    10,
                                                                                    bottom:
                                                                                    10),
                                                                                child: Text(
                                                                                    "Mpesa"
                                                                                        .tr,
                                                                                    overflow:
                                                                                    TextOverflow
                                                                                        .ellipsis,
                                                                                    textAlign:
                                                                                    TextAlign
                                                                                        .left,
                                                                                    style: AppStyle
                                                                                        .txtInterSemiBold16Black900)))
                                                                      ]))
                                                            ])),
                                                  ),
                                                  value: "Mpesa",
                                                  groupValue:controller.paymentMethod.value,
                                                  onChanged: (value){
                                                    controller.paymentMethod.value = value.toString();
                                                  },
                                                )
                                              ],
                                            );
                                          }
                                        ),
                                      ),

                                    ]),

                              ])),
                    ])))));






  }
  onTapBtntf() {
    Get.back();
  }
}
