import 'package:application3/core/app_export.dart';
import 'package:application3/presentation/pricelist_screen/models/pricelist_item_model.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../core/services/APIService.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_text_form_field.dart';
import '../cart_screen/controller/cart_controller.dart';
import '../payment_successful_dialog/controller/payment_successful_controller.dart';
import '../payment_successful_dialog/payment_successful_dialog.dart';
import 'controller/addToCartCardController.dart';

class AddToCartCard extends GetWidget<AddToCartController > {
  late int quantity = 1;
  late double totalPrice = 1.0;
  late String description = "Cold";
  final PricelistCategoryProduct product;
  final ProductCategory productCategory;


  TextEditingController amountController = TextEditingController();

  CartController cartController = Get.put(CartController());

  TextEditingController descriptionController = TextEditingController();

  AddToCartCard(this.product, this.productCategory);

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
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  left: 7,
                                  right: 7,
                                ),
                                child: Text(
                                  "Add To Cart",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
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
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: getMargin(
                                          left: 4,
                                          right: 10,
                                        ),
                                        decoration: AppDecoration
                                            .txtOutlineBlack9003f,
                                        child: Text(
                                          product.name,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .txtInterRegular14Orange800,
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          88.00,
                                        ),
                                        margin: getMargin(
                                          left: 4,
                                          top: 8,
                                          right: 10,
                                        ),
                                        child: Text(
                                         productCategory.name,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular10,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 11,
                                          right: 10,
                                        ),
                                        child: Text(
                                          product.sellingPrice.toString(),
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular14,
                                        ),
                                      ),
                                      CustomTextFormField(
                                          width: 250,
                                          focusNode: FocusNode(),
                                          controller: amountController,
                                          hintText: "Amount",

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
                                              return "Please enter an Amount";
                                            }
                                            return null;
                                          },),
                                      CustomTextFormField(
                                          width: 250,
                                          focusNode: FocusNode(),
                                          controller: descriptionController,
                                          hintText: "Description",
                                          maxLines: 3,
                                          margin:
                                          getMargin(left: 2, top: 24, right: 24),
                                          textInputAction: TextInputAction.done,

                                          prefixConstraints: BoxConstraints(
                                              minWidth: getSize(20.00),
                                              minHeight: getSize(20.00)),
                                          suffixConstraints: BoxConstraints(
                                              minWidth: getHorizontalSize(20.00),
                                              minHeight: getVerticalSize(20.00)),
                                         ),
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

                                      CustomButton(

                                          onTap: () async {
                                            Map data = {
                                              "id": 21,
                                              "time": "2022-07-03T08:23:53.973918Z",
                                              "amount":product.sellingPrice,
                                              "quantity": int.parse(amountController.text),
                                              "totals": int.parse(amountController.text) * product.sellingPrice,
                                              "description": "${description}",
                                              "item": product.id,
                                              "user": 1,
                                              "client":"Vend User",
                                              "venue": product.venue,
                                            };

                                            await AddToCart('api/venues/addtocart/v1/', data,"Successfully added  ${quantity} ${product.name} to cart");
                                            cartController.fetchCart();
                                            Navigator.pop(context);

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
