import 'package:application3/presentation/pricelist_screen/controller/pricelist_controller.dart';
import 'package:application3/widgets/custom_button.dart';

import '../../../theme/hero_dialog_route.dart';
import '../../addtocart/addToCartCardScreen.dart';
import '../../pricelist_screen/models/pricelist_item_model.dart';
import '../controller/home_one_controller.dart';
import '../models/uncategorized_products_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PopularProductsWidget extends StatelessWidget {
  PopularProductsWidget(this.product, this.productCategory);

  PricelistController pricelistController = Get.find();


  PricelistCategoryProduct product;
  ProductCategory productCategory;

  var controller = Get.find<UserPriceListController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() =>{

        Navigator.of(context).push(HeroDialogRoute(builder: (context) {
          return  AddToCartCard(product, productCategory);

        }))

      },


      child: IntrinsicWidth(
        child: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: getPadding(
              right: 16,
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
                      150.00,
                    ),
                    width: getHorizontalSize(
                      164.00,
                    ),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                15.00,
                              ),
                            ),
                            child: CommonImageView(
                              // url:"https://dydza6t6xitx6.cloudfront.net/ci-tusker-lager-77e20a964dffb00e.jpeg",
                              url: pricelistController.uncategorizedproductList.firstWhere((element) => element.id == product.id).productImage,
                              height: getVerticalSize(
                                192.00,
                              ),
                              width: getHorizontalSize(
                                164.00,
                              ),
                              fit: BoxFit.cover,
                            ),
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
                      left: 34,
                      top: 16,
                      right: 34,
                    ),
                    child: Text(
                      product.name,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 34,
                    top: 12,
                    right: 34,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Ksh " + product.sellingPrice.toString(),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold16.copyWith(
                          height: 1.00,
                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.of(context).push(HeroDialogRoute(builder: (context) {
                          return  AddToCartCard(product, productCategory);

                        }));
                      }, child: Text(
                          "Order",
                        style: TextStyle(
                        color: ColorConstant.orange700,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 1.00,
                      ),
                      )
                      )
                    ],
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
