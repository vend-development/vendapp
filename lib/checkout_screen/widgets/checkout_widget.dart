import 'package:application3/core/colors.dart';

import '../../presentation/cart_screen/controller/cart_controller.dart';
import '../../presentation/cart_screen/models/cart_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CheckoutWidget extends StatelessWidget {
  CheckoutWidget(this.cartItem);

  CartItemModel cartItem;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 0,
        top: 7.5,
        right: 5,
        bottom: 7.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: getPadding(
                      left: 14,
                      top: 8,
                      right: 14),
                  child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      crossAxisAlignment:
                      CrossAxisAlignment
                          .end,
                      mainAxisSize:
                      MainAxisSize.max,
                      children: [
                        Row(
                            crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                            mainAxisSize:
                            MainAxisSize
                                .max,
                            children: [
                              Container(
                                  height: getVerticalSize(
                                      66.00),
                                  width: getHorizontalSize(
                                      51.00),
                                  margin: getMargin(
                                      top:
                                      4),
                                  child: Stack(
                                      alignment:
                                      Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                height: getVerticalSize(59.00),
                                                width: getHorizontalSize(51.00),
                                                margin: getMargin(top: 10, bottom: 1),
                                                decoration: BoxDecoration(color: ColorConstant.gray100, borderRadius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(26.00)), topRight: Radius.circular(getHorizontalSize(26.00)), bottomLeft: Radius.circular(getHorizontalSize(26.00)), bottomRight: Radius.circular(getHorizontalSize(25.00))), boxShadow: [
                                                  BoxShadow(color: ColorConstant.black9003f, spreadRadius: getHorizontalSize(2.00), blurRadius: getHorizontalSize(2.00), offset: Offset(0, 4))
                                                ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(padding: getPadding(left: 4, right: 5), child: CommonImageView(imagePath: ImageConstant.imgTransparenttus161X90, height: getVerticalSize(66.00), width: getHorizontalSize(41.00))))
                                      ])),
                              Padding(
                                  padding: getPadding(
                                      left:
                                      21,
                                      bottom:
                                      7),
                                  child: Column(
                                      mainAxisSize: MainAxisSize
                                          .min,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 10),
                                            child: Text(cartItem.quantity.toString() + " " + cartItem.itemName, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold20Black900)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(padding: getPadding(left: 5, top: 6), child: Text(cartItem.description, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold16Black900))),
                                        Container(
                                            margin: getMargin(left: 5, right: 10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(text: "Ksh ", style: TextStyle(color: ColorConstant.bluegray900C4, fontSize: getFontSize(15), fontFamily: 'Inter', fontWeight: FontWeight.w400)),
                                                  TextSpan(text: cartItem.totals.toString(), style: TextStyle(color: ColorConstant.bluegray900C4, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w400))
                                                ]),
                                                textAlign: TextAlign.left))
                                      ]))
                            ]),
                        Padding(
                            padding:
                            getPadding(
                                top: 21,
                                bottom:
                                3),
                            child: CommonImageView(
                                svgPath:
                                ImageConstant
                                    .imgTrash,
                                height:
                                getVerticalSize(
                                    46.00),
                                width: getHorizontalSize(
                                    34.00)))
                      ]))),
          Padding(
              padding: getPadding(
                  left: 93, right: 93),
              child: Text(
                  "lbl_black_pearl_ts".tr,
                  overflow:
                  TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle
                      .txtInterSemiBold15)),
        ],
      ),
    );
  }
}
