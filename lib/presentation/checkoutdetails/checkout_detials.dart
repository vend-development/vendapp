import 'package:application3/core/app_export.dart';
import 'package:application3/core/services/snackbars.dart';
import 'package:application3/presentation/pricelist_screen/models/pricelist_item_model.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../core/services/APIService.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_text_form_field.dart';
import '../cart_screen/controller/cart_controller.dart';
import '../orders_screen/orders_screen.dart';
import '../payment_successful_dialog/controller/payment_successful_controller.dart';
import '../payment_successful_dialog/payment_successful_dialog.dart';

import 'controller/addToCartCardController.dart';

class CheckoutDetailsCard extends GetWidget<PaymentController > {
  late int quantity = 1;
  late double totalPrice = 1.0;
  late String description = "Cold";


  TextEditingController phoneController = TextEditingController();

  CartController cartController = Get.find();
  PaymentController paymentController = Get.put(PaymentController());
  TextEditingController descriptionController = TextEditingController();

  PaymentSuccessfulController paymentSuccessfulController = Get.put(
      PaymentSuccessfulController());


  @override
  Widget build(BuildContext context) {
    return

      Center(
      child: Hero(
        tag: "add_to_cart",
        child:

        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Material(
            shape:
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
              getHorizontalSize(
                22.00,
              ),
            ),


            ),


            color: ColorConstant.whiteA700,
            elevation: 2,
            child: SingleChildScrollView(
              child: Container(

                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 57,
                          top: 40,
                          right: 5,
                          bottom: 40,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [


                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 2,
                                  right: 2,
                                ),
                                child: Text(
                                  "Checkout",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtInterRegular24,

                                ),
                              ),
                            ),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 12,
                                    bottom: 45,
                                  ),
                                  child: GetX<CartController>(
                                    builder: (controller) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [

                                          CustomTextFormField(
                                              width: 250,
                                              focusNode: FocusNode(),
                                              controller: phoneController,
                                              hintText: "Phone",
                                              margin:
                                              getMargin(left: 2, top: 26, right: 24),

                                              prefixConstraints: BoxConstraints(
                                                  minWidth: getSize(20.00),
                                                  minHeight: getSize(20.00)),
                                              suffixConstraints: BoxConstraints(
                                                  minWidth: getHorizontalSize(20.00),
                                                  minHeight: getVerticalSize(20.00)),
                                              validator: (value) {
                                                if (value == null ||
                                                    (!isValidPassword(value,
                                                        isRequired: true))) {
                                                  return "Please enter valid Phone Number";
                                                }
                                                return null;
                                              },),



                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              width: getHorizontalSize(
                                                159.00,
                                              ),
                                              margin: getMargin(
                                                left: 1,
                                                top: 20,
                                              ),

                                              // child: Row(
                                              //   mainAxisAlignment:
                                              //       MainAxisAlignment
                                              //           .spaceBetween,
                                              //   crossAxisAlignment:
                                              //       CrossAxisAlignment.center,
                                              //   mainAxisSize: MainAxisSize.max,
                                              //   children: [
                                              //     Container(
                                              //       padding: getPadding(
                                              //         left: 8,
                                              //         top: 8,
                                              //         right: 8,
                                              //         bottom: 8,
                                              //       ),
                                              //
                                              //       decoration: AppDecoration
                                              //           .txtOutlineWhiteA70033
                                              //           .copyWith(
                                              //         borderRadius:
                                              //             BorderRadiusStyle
                                              //                 .txtRoundedBorder21,
                                              //       ),
                                              //       child:Icon(
                                              //         Icons.remove
                                              //       ),
                                              //     ),
                                              //
                                              //     Padding(
                                              //       padding: getPadding(
                                              //         top: 9,
                                              //         bottom: 8,
                                              //       ),
                                              //       child: Text(
                                              //         "50",
                                              //         overflow:
                                              //             TextOverflow.ellipsis,
                                              //         textAlign: TextAlign.left,
                                              //         style: AppStyle
                                              //             .txtInterRegular24Black900,
                                              //       ),
                                              //     ),
                                              //
                                              //     Container(
                                              //       padding: getPadding(
                                              //         left: 8,
                                              //         top: 8,
                                              //         right: 8,
                                              //         bottom: 8,
                                              //       ),
                                              //
                                              //       decoration: AppDecoration
                                              //           .txtOutlineWhiteA70033
                                              //           .copyWith(
                                              //         borderRadius:
                                              //         BorderRadiusStyle
                                              //             .txtRoundedBorder21,
                                              //       ),
                                              //       child:Icon(
                                              //           Icons.add
                                              //       ),
                                              //
                                              //     ),
                                              //
                                              //   ],
                                              // ),
                                            ),
                                          ),




                                          controller.paymentInitiated.value?
                                          CustomButton(



                                              onTap: () async {

                                                cartController.fetchCart();
                                                if(cartController.cartList.isEmpty){
                                                  succesSnack("Succes", "Payment Successful");
                                                }else {
                                                  await postOrder(

                                                      'api/venues/mpesaCheckout/${cartController
                                                          .venueId}/v1/',
                                                      {
                                                        "phone_number": phoneController
                                                            .text
                                                      },
                                                      "Check Your Phone and Enter Your MPesa Pin",
                                                      context
                                                  );
                                                }
                                                // Navigator.of(context)
                                                //     .push(
                                                //     PageRouteBuilder(
                                                //       pageBuilder: (context, animation, secondaryAnimation) => OrdersScreen(),
                                                //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                //         var begin = const Offset(-1.0, 0.0);
                                                //         var end = Offset.zero;
                                                //         var curve = Curves.easeInCirc;
                                                //
                                                //         var tween =
                                                //         Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                                                //
                                                //         return SlideTransition(
                                                //           position: animation.drive(tween),
                                                //           child: child,
                                                //         );
                                                //       },
                                                //     )
                                                // );
                                              },

                                              width: 150,
                                              text: "Confirm",
                                              margin:
                                              getMargin(left: 24, top: 24, right: 24),
                                              variant: ButtonVariant.FillBluegray100,
                                              shape: ButtonShape.RoundedBorder16,
                                              padding: ButtonPadding.PaddingAll16,
                                              fontStyle: ButtonFontStyle.UrbanistBold16,
                                              alignment: Alignment.center)
                                              :
                                          CustomButton(

                                              onTap: () async {

                                                controller.paymentInitiated.value = true;


                                                await postOrder(

                                                    'api/venues/mpesaCheckout/${cartController.venueId}/v1/',
                                                    {
                                                      "phone_number":phoneController.text
                                                    },
                                                    "Check Your Phone and Enter Your MPesa Pin",context
                                                );
                                                // Navigator.of(context)
                                                //     .push(
                                                //     PageRouteBuilder(
                                                //       pageBuilder: (context, animation, secondaryAnimation) => OrdersScreen(),
                                                //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                //         var begin = const Offset(-1.0, 0.0);
                                                //         var end = Offset.zero;
                                                //         var curve = Curves.easeInCirc;
                                                //
                                                //         var tween =
                                                //         Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                                                //
                                                //         return SlideTransition(
                                                //           position: animation.drive(tween),
                                                //           child: child,
                                                //         );
                                                //       },
                                                //     )
                                                // );
                                              },

                                              width: 150,
                                              text: "Submit",
                                              margin:
                                              getMargin(left: 24, top: 24, right: 24),
                                              variant: ButtonVariant.FillBluegray100,
                                              shape: ButtonShape.RoundedBorder16,
                                              padding: ButtonPadding.PaddingAll16,
                                              fontStyle: ButtonFontStyle.UrbanistBold16,
                                              alignment: Alignment.center),

                                        ],
                                      );
                                    }
                                  ),
                                ),

                                // Padding(
                                //   padding: getPadding(
                                //     left: 1,
                                //     right: 1,
                                //   ),
                                //   child: CommonImageView(
                                //     imagePath:
                                //         ImageConstant.imgTransparenttus,
                                //     height: getVerticalSize(
                                //       213.00,
                                //     ),
                                //     width: getHorizontalSize(
                                //       123.00,
                                //     ),
                                //   ),
                                // ),
                              ],
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
        ),
      ),
    );
    }
  }
