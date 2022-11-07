import '../../theme/hero_dialog_route.dart';
import '../../widgets/custom_icon_button.dart';
import '../addtocart/addToCartCardScreen.dart';
import '../cart_screen/cart_screen.dart';
import '../PriceListPage/widgets/listgroup_item_widget.dart';
import '../PriceListPage/widgets/popularProductsWidget.dart';
import '../pricelist_screen/controller/pricelist_controller.dart';
import 'controller/home_one_controller.dart';
import 'models/listgroup_item_model.dart';
import 'models/uncategorized_products_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class UserPriceListPage extends GetWidget<UserPriceListController> {
  UserPriceListController userPriceListController = Get.find();
  PricelistController pricelistController = Get.find();



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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: size.width,
                    margin: getMargin(
                      left: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                svgPath: ImageConstant
                                    .imgArrowleft)),
                        // Padding(
                        //   padding: getPadding(
                        //     left: 16,
                        //     top: 13,
                        //     bottom: 13,
                        //   ),
                        //   child: CommonImageView(
                        //     svgPath: ImageConstant.imgComputer,
                        //     height: getSize(
                        //       24.00,
                        //     ),
                        //     width: getSize(
                        //       24.00,
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 13,
                            bottom: 13,
                          ),
                          child: Text(
                            pricelistController.venueName.value.toString()
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 13,
                            right: 16,
                            bottom: 13,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CommonImageView(
                                svgPath: ImageConstant.imgSearch,
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context)
                                      .push(
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation, secondaryAnimation) => CartScreen(),
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

                                child: Padding(
                                  padding: getPadding(
                                    left: 24,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgCart22X28,
                                    height: getSize(
                                      30.00,
                                    ),
                                    width: getSize(
                                      30.00,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: getVerticalSize(
                      264.00,
                    ),
                    width: double.infinity,
                    child: Container(
                              height: height * 0.4,
                              child: ListView.builder(
                                padding: getPadding(
                                  left: 16,
                                  top: 14,
                                  right: 16,
                                ),
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: 1,
                                itemBuilder: (context, index) {

                                  return Align(
                                    alignment: Alignment.center,
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
                                                192.00,
                                              ),
                                              width: width,
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
                                                        url: pricelistController.venueprofile.value,
                                                        height: getVerticalSize(
                                                          192.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          400.00,
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.topRight,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        all: 16,
                                                      ),
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant.imgHeart320X22,
                                                        height: getVerticalSize(
                                                          20.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          22.00,
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
                                  );
                                },
                              )
                          ),


                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 137,
                      top: 32,
                      right: 13,
                    ),
                    child: Text(
                      "Choose Category",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold24.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: getVerticalSize(
                      51.00,
                    ),
                    width: getHorizontalSize(
                      395.00,
                    ),
                    child: GetX<PricelistController>(
                      builder:(controller){
                        return
                          Container(
                            height: height * 0.4,
                            child: ListView.builder(
                              padding: getPadding(
                                left: 10,
                                top: 18,
                              ),
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: controller.productList.length
                                  ,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: (){
                                    userPriceListController.category.value = index;
                                  },
                                  child: ListgroupItemWidget(
                                    controller.productList[index]
                                  ),
                                );
                              },
                            ),
                          );

                      },


                    ),


                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      top: 24,
                    ),
                    child:
                    GetX<PricelistController>(
                      builder:(controller){
                        if (controller.productList.length > 0){
                          return
                            Container(
                              height: height * 0.5,
                              child: ListView.builder(
                                padding: getPadding(
                                  left: 24,
                                  top: 45,
                                  right: 24,
                                ),
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                itemCount: controller.productList[userPriceListController.category.value].products.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(

                                    onTap:() =>{

                                      Navigator.of(context).push(HeroDialogRoute(builder: (context) {
                                        return  AddToCartCard(controller.productList[userPriceListController.category.value].products[index], userPriceListController.productCategory.value);

                                      }))

                                    },


                                    child: Padding(
                                      padding: getPadding(
                                        left: 24,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: getVerticalSize(
                                                248.00,
                                              ),
                                              width: getHorizontalSize(
                                                209.00,
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
                                                        // url:pricelistController.venueprofile.value,
                                                        // url:controller.productList[userPriceListController.category.value].products[index].productImage.toString(),
                                                        url:pricelistController.uncategorizedproductList.firstWhere((element) =>
                                                              element.id == controller.productList[userPriceListController.category.value].products[index].id
                                                          ).productImage,
                                                        // svgPath: ImageConstant.imgEllipse69,
                                                        height: getVerticalSize(
                                                          248.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          209.00,
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.topRight,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        all: 16,
                                                      ),
                                                      child: CommonImageView(
                                                        svgPath:
                                                        ImageConstant.imgHeart320X22,
                                                        height: getVerticalSize(
                                                          20.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          22.00,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 40,
                                              top: 16,
                                              right: 40,
                                            ),
                                            child: Text(
                                              controller.productList[userPriceListController.category.value].products[index].name.toString(),
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular14.copyWith(
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: getMargin(
                                                  left: 40,
                                                  top: 0,
                                                  right: 5,
                                                ),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: "Ksh ",
                                                        style: TextStyle(
                                                          color: ColorConstant.black900,
                                                          fontSize: getFontSize(
                                                            16,
                                                          ),
                                                          fontFamily: 'Poppins',
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.00,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: controller.productList[userPriceListController.category.value].products[index].sellingPrice.toString(),
                                                        style: TextStyle(
                                                          color: ColorConstant.black900,
                                                          fontSize: getFontSize(
                                                            16,
                                                          ),
                                                          fontFamily: 'Poppins',
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.00,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              TextButton(onPressed: (){
                                                Navigator.of(context).push(HeroDialogRoute(builder: (context) {
                                                  return  AddToCartCard(controller.productList[userPriceListController.category.value].products[index], userPriceListController.productCategory.value);

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
                                        ],
                                      ),
                                    ),
                                  );

                                  //   PricelistItemWidget(
                                  //   controller.productList[index],
                                  // );
                                },
                              ),
                            );
                        }else{
                          return
                              SingleChildScrollView(
                                child: Container(
                                    height: height * 0.5,
                                    width: width,

                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Text("No Products Currently Available"))),
                              );
                        }





                      },



                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 30,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Popular Products",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium18.copyWith(
                            height: 1.00,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 171,
                            top: 2,
                            bottom: 2,
                          ),
                          child: Text(
                            "See All",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium14.copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: getVerticalSize(
                      264.00,
                    ),
                    width: getHorizontalSize(
                      343.00,
                    ),
                    child:
                    GetX<PricelistController>(
                      builder:(controller){


                        if (controller.productList.length > 0){
                          return
                            Container(
                                height: height * 0.5,
                                child: ListView.builder(
                                  padding: getPadding(
                                    left: 16,
                                    top: 14,
                                    right: 16,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.productList[userPriceListController.category.value].products.length,
                                  itemBuilder: (context, index) {

                                    return PopularProductsWidget(
                                      controller.productList[userPriceListController.category.value].products[index],userPriceListController.productCategory.value
                                    );
                                  },
                                )
                            );
                        }else{
                          return
                            Text("");
                        }
                      },


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

  onTapBtntf() {
    Get.back();
  }

}
