
import 'package:application3/core/app_export.dart';
import 'package:application3/presentation/home_page_screen/home_page_screen.dart';
import 'package:flutter/material.dart';

import '../../../theme/hero_dialog_route.dart';
import '../../addtocart/addToCartCardScreen.dart';
import '../controller/pricelist_controller.dart';
import '../models/pricelist_item_model.dart';

// ignore: must_be_immutable
class PricelistItemWidget extends StatelessWidget {
  PricelistItemWidget(this.product, this.productCategory);

  PricelistCategoryProduct product;
  ProductCategory productCategory;


  var controller = Get.find<PricelistController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() =>{

        Navigator.of(context).push(HeroDialogRoute(builder: (context) {
          return  AddToCartCard(product, productCategory);

        }))

      },

      child: SingleChildScrollView(
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: getVerticalSize(
              100.00,
            ),
            width: getHorizontalSize(
              169.00,
            ),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: getMargin(
                      right: 10,
                    ),
                    decoration: AppDecoration.outlineWhiteA70033.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: getMargin(
                              left: 13,
                              top: 12,
                              right: 13,
                              bottom: 71,
                            ),
                            decoration: AppDecoration.txtOutlineBlack9003f,
                            child: Text(
                              product.name,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtInterRegular14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      left: 10,
                      top: 1,
                      bottom: 1,
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imgTransparenttus,
                      height: getVerticalSize(
                        98.00,
                      ),
                      width: getHorizontalSize(
                        100.00,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 41,
                      right: 16,
                      bottom: 41,
                    ),
                    child: Text(
                      product.category.toString(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular10,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 8,
                      top: 18,
                      right: 10,
                      bottom: 18,
                    ),
                    child: Text(
                      "lbl_ksh_2000".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular14,
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
