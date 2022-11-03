import '../../checkout_screen/checkout_screen.dart';
import '../cart_screen/widgets/cart_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/cart_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends GetWidget<CartController> {
  CartController cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,

            bottomSheet:
            cartController.cartList.isNotEmpty?
            GestureDetector(
              onTap: (){
                Navigator.of(context)
                    .push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => CheckoutScreen(),
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
                                          "lbl_checkout"
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
            ):
            GestureDetector(
              onTap: (){

                Navigator.of(context).pop();
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
                                      Text("Continue Shopping",
                                          overflow:
                                          TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterBold32WhiteA700)

                                    ])))
                      ])),
            ),
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      width: size.width,
                      margin: getMargin(top: 11),
                      child: Padding(
                          padding: getPadding(left: 12, right: 95),
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
                                    padding: getPadding(left: 75, top: 3),
                                    child: Text("lbl_my_cart".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold32))
                              ]))),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: getPadding(top: 17),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding:
                                            getPadding(left: 15, right: 0),
                                     child: GetX<CartController>(
                                        builder:(controller) {
                                          if(controller.cartList.isNotEmpty){
                                            return

                                              ListView.builder(
                                                padding: getPadding(
                                                  left: 24,
                                                  top: 45,
                                                  right: 0,
                                                ),
                                                // scrollDirection: Axis.horizontal,
                                                shrinkWrap: true,
                                                // physics:
                                                // NeverScrollableScrollPhysics(),
                                                physics: BouncingScrollPhysics(),
                                                itemCount: controller.cartList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  return CartItemWidget(
                                                    controller.cartList[index],
                                                  );
                                                },
                                              );
                                          }else{
                                            return
                                                Container(
                                                    height: height *0.7,

                                                    child: Center(child: Text('Your Cart is Currently Empty!')));
                                          }

                                        }
                                     )

                                    ),

                                  ]))))
                ])));
  }

  onTapBtntf() {
    Get.back();
  }
}
