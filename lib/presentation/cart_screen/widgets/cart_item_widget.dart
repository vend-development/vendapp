import 'package:application3/core/colors.dart';

import '../../../core/services/APIService.dart';
import '../controller/cart_controller.dart';
import '../models/cart_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(this.cartItem);

  CartItemModel cartItem;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 0,
        top: 15.0,
        right: 0,
        bottom: 15.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              bottom: 9,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: getVerticalSize(
                      161.00,
                    ),
                    width: getHorizontalSize(
                      112.00,
                    ),
                    margin: getMargin(
                      top: 9,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: getVerticalSize(
                              145.00,
                            ),
                            width: getHorizontalSize(
                              112.00,
                            ),
                            margin: getMargin(
                              top: 10,
                              bottom: 4,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray100,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  29.00,
                                ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: ColorConstant.black9003f,
                                  spreadRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  blurRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  offset: Offset(
                                    0,
                                    4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 10,
                              right: 11,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgTransparenttus161X90,
                              height: getVerticalSize(
                                161.00,
                              ),
                              width: getHorizontalSize(
                                90.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 28,
              top: 26,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 3,
                    right: 0,
                  ),
                  child: Text(
                    cartItem.venueName,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold20Bluegray901,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                    right: 0,
                  ),
                  child: Text(
                    cartItem.quantity.toString() + " " +  cartItem.itemName,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold24Orange800,
                    selectionColor: AppColors.orangeColor

                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 7,
                    right: 0,
                  ),
                  child: Text(
                    cartItem.totals,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold20Black900,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 4,
                        top: 7,
                        right: 0,
                      ),
                      child: Text(
                        cartItem.description,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterSemiBold16Bluegray900c4,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        210.00,
                      ),
                      margin: getMargin(
                        top: 19,
                      ),
                      child: GestureDetector(
                        onTap: (){
                          deleteItem('api/venues/singlecart/${cartItem.id}/v1/');
                        },
                        child: Padding(
                          padding: getPadding(
                            top: 10,
                            bottom: 7,
                          ),
                          child: Icon(
                            Icons.delete,
                            color: AppColors.orangeDarkColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
